import { EOL } from "node:os";

interface ProblemDetails {
  problem: string;
  rows: number;
  columns: number;
  nonZeros: number;
  status: string;
  objective: {
    name: string;
    value: number;
    type: string;
  };
}

interface Row {
  no: number;
  name: string;
  status: string;
  activity: number;
  lowerBound?: number;
  upperBound?: number;
  marginal?: number;
}

interface Column {
  no: number;
  name: string;
  status: string;
  activity: number;
  lowerBound?: number;
  upperBound?: number;
  marginal?: number;
}

interface KKTCondition {
  maxAbsErr: number;
  maxRelErr: number;
  quality: string;
}

interface KKTConditions {
  PE: {
    maxAbsErr: number;
    maxRelErr: number;
    quality: string;
  };
  PB: {
    maxAbsErr: number;
    maxRelErr: number;
    quality: string;
  };
  DE: {
    maxAbsErr: number;
    maxRelErr: number;
    quality: string;
  };
  DB: {
    maxAbsErr: number;
    maxRelErr: number;
    quality: string;
  };
}

export interface OptimizationResult {
  details: ProblemDetails;
  rows: Row[];
  columns: Column[];
  kktConditions: KKTConditions;
}

export function parseGMPLOutput(input: string): OptimizationResult {
  const sections = input.split('' + EOL + '' + EOL + '');

  const detailsSection = sections[0].split('' + EOL + '').reduce((acc, line) => {
    const [key, value] = line.split(':').map(s => s.trim());
    if (key === 'Objective') {
      const match = /z = ([\d.]+) \((MAX|MIN)imum\)/.exec(value);
      if (match != null) {
        acc[key.toLowerCase()] = {
          name: 'z',
          value: parseFloat(match[1]),
          type: match[2]
        };
      }
    } else if (!key.includes('Problem')) {
      acc[key.toLowerCase()] = parseInt(value, 10);
    } else {
      acc[key.toLowerCase()] = value;
    }
    return acc;
  }, {} as any);

  const parseSection = (section: string): Column[] => {
    let records: Column[] = [];

    if (section === undefined) return [];
    section.split('' + EOL + '').slice(2)
      .filter(line => line != undefined)
      .map(line => {

        const startName = 7;
        const endName = 20;
        const isNewRecord = line.substring(0, startName).trim().length > 0;

        if (isNewRecord) {
          const nameCut = line.substring(startName, endName).trim();

          // New record
          const record = {
            no: parseInt(line.substring(0, startName).trim()),
            name: nameCut,
            status: line.substring(endName, 22).trim(),
            activity: parseFloat(line.substring(24, 24 + 12).trim()),
            lowerBound: parseFloat(line.substring(38, 38 + 12).trim()),
            upperBound: parseFloat(line.substring(52, 52 + 12).trim()),
            marginal: parseFloat(line.substring(66).trim())
          };

          if(nameCut.length == endName - startName) {
            record.name = line.substring(startName, line.length);
          }

          records.push(record);
        } else {
          // Continuation of the last record
          const lastRecord = records[records.length - 1];
          lastRecord.status = line.substring(20, 22).trim();
          lastRecord.activity = parseFloat(line.substring(24, 24 + 12).trim());
          lastRecord.lowerBound = parseFloat(line.substring(38, 38 + 12).trim());
          lastRecord.upperBound = parseFloat(line.substring(52, 52 + 12).trim());
          lastRecord.marginal = parseFloat(line.substring(66).trim());
        }
      });

    return records;
  };

  const rowsSection = sections[1];
  const columnsSection = sections[2];
  const kktSection = sections.slice(4, 8).join(EOL);

  const rows = parseSection(rowsSection);
  const columns = parseSection(columnsSection);

  const parseKKT = (kktText: string) => {
    if (kktText === undefined || kktText === '') return {};
    const linesRaw = kktText.split('' + EOL + '');
    const lines = linesRaw.flatMap((_, i) => i % 3 === 0 ? [linesRaw.slice(i, i + 3).join('' + EOL + '')] : []);
    const kktConditions: any = {};
    lines.forEach(line => {
      const [key, ...rest] = line.split(':');
      const [maxAbsErr, maxRelErr, quality] = rest.join(':').split('' + EOL + '').map(s => s.trim());
      const errValues = maxAbsErr.split('=').flatMap(s => s.split("on").map(s2 => s2.trim()));
      const relValues = maxRelErr.split('=').flatMap(s => s.split("on").map(s2 => s2.trim()));
      kktConditions[key] = {
        maxAbsErr: parseFloat(errValues[1]),
        maxRelErr: parseFloat(relValues[1]),
        quality: quality.trim(),
      };
    });
    return kktConditions as KKTConditions;
  };

  const kktConditions = parseKKT(kktSection);

  return {
    details: detailsSection,
    rows: rows,
    columns: columns,
    kktConditions: kktConditions as KKTConditions
  };
}

// async function test() {
//   // Example usage:
//   const input = await fs.readFileSync("../test/model.output", { encoding: 'utf-8' });
//   fs.writeFileSync("test.output.json", JSON.stringify(parseGMPLOutput(input)));
// }

// test();
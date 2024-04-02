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

  const parseSection = (section: string): any[] => {
    const lines = section.split(EOL);
    const records: Column[] = [];
    let currentRecord: Partial<Column> = {};

    const lineRegex = /^\s*(\d+)\s+(\S+)\s*(\S*)\s*(\S*)\s*(\d+)\s*(\d+)\s*(\-?\d+\.?\d*)\s*$/;
    const continuationRegex = /^\s*(\S+)\s*(\d+)\s*(\d+)\s*(\-?\d+\.?\d*)\s*$/;

    for (let line of lines) {
      let match = line.match(lineRegex);
      if (match) {
        // Starting a new record
        if (Object.keys(currentRecord).length !== 0) {
          records.push(currentRecord as Column);
          currentRecord = {};
        }
        currentRecord = {
          no: parseInt(match[1]),
          name: match[2],
          status: match[3],
          activity: parseFloat(match[4]),
          lowerBound: parseInt(match[5]),
          upperBound: parseInt(match[6]),
          marginal: parseFloat(match[7])
        };
      } else {
        match = line.match(continuationRegex);
        if (match) {
          // Continuation of the previous line, usually for long column names
          currentRecord.name += match[1];
          currentRecord.status = match[2];
          currentRecord.activity = parseFloat(match[3]);
          currentRecord.marginal = parseFloat(match[4]);
        }
      }
    }

    // Add the last record if exists
    if (Object.keys(currentRecord).length !== 0) {
      records.push(currentRecord as Column);
    }

    return records;
  }

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
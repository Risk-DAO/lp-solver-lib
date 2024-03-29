import * as fs from 'fs';

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
  const sections = input.split('\n\n');

  const detailsSection = sections[0].split('\n').reduce((acc, line) => {
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
    if (section === undefined) return [];
    return section.split('\n').slice(2)
      .filter(line => line != undefined)
      .map(line => {
        const parts = line.split(/\s+/).filter(Boolean);
        return {
          no: parseInt(parts[0], 10),
          name: parts[1],
          status: parts[2],
          activity: parseFloat(parts[3]),
          lowerBound: parts[4] !== '-' ? parseFloat(parts[4]) : undefined,
          upperBound: parts[5] !== '-' ? parseFloat(parts[5]) : undefined,
          marginal: parts[6] !== '-' ? parseFloat(parts[6]) : undefined,
        };
      });
  };

  const rowsSection = sections[1];
  const columnsSection = sections[2];
  const kktSection = sections.slice(4, 8).join("\n");

  const rows = parseSection(rowsSection);
  const columns = parseSection(columnsSection);

  const parseKKT = (kktText: string) => {
    if (kktText === undefined) return {};
    const linesRaw = kktText.split('\n');
    const lines = linesRaw.flatMap((_, i) => i % 3 === 0 ?  [linesRaw.slice(i, i + 3).join('\n')] : []);
    const kktConditions: any = {};
    lines.forEach(line => {
      const [key, ...rest] = line.split(':');
      const [maxAbsErr, maxRelErr, quality] = rest.join(':').split('\n').map(s => s.trim());
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
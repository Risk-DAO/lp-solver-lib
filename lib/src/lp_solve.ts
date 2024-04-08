import * as fs from 'fs';
import { OptimizationResult, parseGMPLOutput } from './parser';

import process from 'node:child_process'
import util from "node:util";

const execPromise = util.promisify(process.exec);

export async function executeGLPSol(input: string): Promise<OptimizationResult> {
  try {
    const inputFileName = 'input.mod';
    const outputFileName = 'output';

    // Write input content to input.mod file
    await fs.promises.writeFile(inputFileName, input);

    // Execute glpsol command
    await execPromise(`glpsol --math ${inputFileName} --output ${outputFileName}`);

    // Read output file content
    const stdout = await fs.promises.readFile(outputFileName, 'utf-8');

    // Remove input and output files
    await fs.promises.unlink(inputFileName);
    await fs.promises.unlink(outputFileName);

    return parseGMPLOutput(stdout);
  } catch (error) {
    throw `Error executing GLPSol: ${(error as any).stdout}`;
  }
}

/*
async function test() {
  // Example usage:
  let input = fs.readFileSync("../test/model.mod", { encoding: 'utf-8' });
  let res = await executeGLPSol(input)

  let baseline = parseGMPLOutput(
    fs.readFileSync("../test/model.output", { encoding: 'utf-8' })
  );

  res.details.problem = "override";
  baseline.details.problem = "override";

  let res_string = JSON.stringify(res);

  console.log("=== OUTPUT ===")
  console.log(res_string);

  fs.writeFileSync("res", JSON.stringify(res, null, 2), { encoding: 'utf-8' })

  if (res_string == JSON.stringify(baseline)) console.log("Equal to baseline");
  else console.log("Non equal to baseline")

  // Failure test
  input = fs.readFileSync("../test/model_fail.mod", { encoding: 'utf-8' });
  res = await executeGLPSol(input)

  baseline = parseGMPLOutput(
    fs.readFileSync("../test/model_fail.output", { encoding: 'utf-8' })
  );

  res.details.problem = "override";
  baseline.details.problem = "override";

  res_string = JSON.stringify(res);

  console.log("=== OUTPUT ===")
  console.log(res_string);

  fs.writeFileSync("res", JSON.stringify(res, null, 2), { encoding: 'utf-8' })

  if (res_string == JSON.stringify(baseline)) console.log("Equal to baseline");
  else console.log("Non equal to baseline")
}

test();
*/
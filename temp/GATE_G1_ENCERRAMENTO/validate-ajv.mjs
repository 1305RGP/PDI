import Ajv from 'C:/Users/Ricardo/AppData/Local/npm-cache/_npx/69f9afb961c37556/node_modules/ajv/dist/ajv.js';
import fs from 'fs';
import path from 'path';

const ajv = new Ajv({ validateSchema: false });
ajv.addFormat('date', /^\d{4}-\d{2}-\d{2}$/);

const schemasDir = 'temp/lote-02-gpt/specs/schemas';
const contratosDir = 'temp/lote-02-gpt/specs/contratos';
const fixturesDir = 'temp/lote-02-gpt/tests/fixtures';

const refMap = {
  '../schemas/metadata.schema.json': 'https://pdi.local/schemas/metadata.schema.json',
  '../schemas/evidence.schema.json': 'https://pdi.local/schemas/evidence.schema.json',
  '../schemas/task-context.schema.json': 'https://pdi.local/schemas/task-context.schema.json',
  '../schemas/tool-capability.schema.json': 'https://pdi.local/schemas/tool-capability.schema.json',
  'approval.schema.json': 'https://pdi.local/schemas/approval.schema.json'
};

function loadSchemaWithRefs(filePath) {
  let content = fs.readFileSync(filePath, 'utf8');
  for (const [rel, canon] of Object.entries(refMap)) {
    content = content.split('"' + rel + '"').join('"' + canon + '"');
  }
  return JSON.parse(content);
}

const commonFiles = [
  'metadata.schema.json',
  'approval.schema.json',
  'evidence.schema.json',
  'task-context.schema.json',
  'tool-capability.schema.json'
];
for (const f of commonFiles) {
  const schema = loadSchemaWithRefs(path.join(schemasDir, f));
  ajv.addSchema(schema);
}
for (let i = 1; i <= 5; i++) {
  const schema = loadSchemaWithRefs(path.join(contratosDir, 'contrato-0' + i + '.schema.json'));
  ajv.addSchema(schema);
}

const tests = [
  { schemaRef: 'https://pdi.local/schemas/metadata.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/metadata-valid.json', shouldPass: true, desc: 'metadata-valid vs metadata.schema' },
  { schemaRef: 'https://pdi.local/schemas/metadata.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/metadata-invalid-state.json', shouldPass: false, desc: 'metadata-invalid-state (deve falhar)' },
  { schemaRef: 'https://pdi.local/schemas/metadata.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/metadata-missing-owner.json', shouldPass: false, desc: 'metadata-missing-owner (deve falhar)' },
  { schemaRef: 'https://pdi.local/schemas/approval.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/approval-missing-decider.json', shouldPass: false, desc: 'approval-missing-decider (deve falhar)' },
  { schemaRef: 'https://pdi.local/schemas/evidence.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/evidence-missing-logs.json', shouldPass: false, desc: 'evidence-missing-logs (deve falhar)' },
  { schemaRef: 'https://pdi.local/schemas/evidence.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/evidence-not-run.json', shouldPass: true, desc: 'evidence-not-run vs evidence.schema' },
  { schemaRef: 'https://pdi.local/schemas/task-context.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/task-context-valid.json', shouldPass: true, desc: 'task-context-valid vs task-context.schema' },
  { schemaRef: 'https://pdi.local/schemas/task-context.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/task-context-missing-permissions.json', shouldPass: false, desc: 'task-context-missing-permissions (deve falhar)' },
  { schemaRef: 'https://pdi.local/schemas/tool-capability.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/tool-capability-untested.json', shouldPass: true, desc: 'tool-capability-untested vs tool-capability.schema' },
  { schemaRef: 'https://pdi.local/schemas/tool-capability.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/tool-capability-untested-routable.json', shouldPass: true, desc: 'tool-capability-untested-routable vs tool-capability.schema' },
  { schemaRef: 'https://pdi.local/contracts/contrato-01.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/metadata-valid.json', shouldPass: true, desc: 'metadata-valid vs contrato-01.schema' },
  { schemaRef: 'https://pdi.local/contracts/contrato-02.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/evidence-not-run.json', shouldPass: true, desc: 'evidence-not-run vs contrato-02.schema' },
  { schemaRef: 'https://pdi.local/contracts/contrato-03.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/task-context-valid.json', shouldPass: true, desc: 'task-context-valid vs contrato-03.schema' },
  { schemaRef: 'https://pdi.local/contracts/contrato-04.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/tool-capability-untested.json', shouldPass: true, desc: 'tool-capability-untested vs contrato-04.schema' },
  { schemaRef: 'https://pdi.local/contracts/contrato-05.schema.json', data: 'temp/lote-02-gpt/tests/fixtures/metadata-valid.json', shouldPass: true, desc: 'metadata-valid vs contrato-05.schema' },
];

let passed = 0, failed = 0;
for (const t of tests) {
  try {
    const validate = ajv.getSchema(t.schemaRef);
    if (!validate) { console.log('ERROR |', t.desc, '| schema not found'); failed++; continue; }
    const data = JSON.parse(fs.readFileSync(t.data, 'utf8'));
    const valid = validate(data);
    const ok = valid === t.shouldPass;
    console.log((ok ? 'PASS' : 'FAIL'), '|', t.desc, '(expected:', t.shouldPass, 'got:', valid + ')');
    if (ok) passed++; else failed++;
  } catch (e) {
    console.log('ERROR |', t.desc, '|', e.message);
    failed++;
  }
}
console.log('\nTotal:', passed + ' PASS, ' + failed + ' FAIL');

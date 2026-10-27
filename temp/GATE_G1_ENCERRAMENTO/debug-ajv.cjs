const Ajv = require('C:/Users/Ricardo/AppData/Local/npm-cache/_npx/69f9afb961c37556/node_modules/ajv/dist/ajv.js');
const fs = require('fs');
const path = require('path');

const ajv = new Ajv({ validateSchema: false });
ajv.addFormat('date', /^\d{4}-\d{2}-\d{2}$/);

const refMap = {
  '../schemas/metadata.schema.json': 'https://pdi.local/schemas/metadata.schema.json',
  '../schemas/evidence.schema.json': 'https://pdi.local/schemas/evidence.schema.json',
  '../schemas/task-context.schema.json': 'https://pdi.local/schemas/task-context.schema.json',
  '../schemas/tool-capability.schema.json': 'https://pdi.local/schemas/tool-capability.schema.json',
  'approval.schema.json': 'https://pdi.local/schemas/approval.schema.json'
};

function loadWithRefs(p) {
  let c = fs.readFileSync(p, 'utf8');
  for (const [r, canon] of Object.entries(refMap)) c = c.split('"' + r + '"').join('"' + canon + '"');
  return JSON.parse(c);
}

const schemasDir = 'temp/lote-02-gpt/specs/schemas';
for (const f of ['metadata.schema.json','approval.schema.json','evidence.schema.json','task-context.schema.json','tool-capability.schema.json']) {
  ajv.addSchema(loadWithRefs(path.join(schemasDir, f)));
}

const contrato = loadWithRefs('temp/lote-02-gpt/specs/contratos/contrato-01.schema.json');
console.log('contrato-01 id:', contrato.id);
console.log('contrato-01 artifact ref:', contrato.properties.artifact['$ref']);
ajv.addSchema(contrato);

const validate = ajv.getSchema('https://pdi.local/contracts/contrato-01.schema.json');
console.log('schema found:', !!validate);
if (validate) {
  const data = JSON.parse(fs.readFileSync('temp/lote-02-gpt/tests/fixtures/metadata-valid.json', 'utf8'));
  const valid = validate(data);
  console.log('valid:', valid);
  console.log('errors:', JSON.stringify(validate.errors));
}

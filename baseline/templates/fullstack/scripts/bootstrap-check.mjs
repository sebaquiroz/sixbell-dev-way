import { existsSync } from 'node:fs';

const requiredPaths = [
  '.github/pull_request_template.md',
  '.kiro/hooks/format-lint-on-save.kiro.hook',
  '.kiro/hooks/unit-test-on-save.kiro.hook',
  '.kiro/hooks/smoke-on-demand.kiro.hook',
  'openspec/README.md',
  'docs/README.md',
  'adr/README.md',
  'api/openapi.yaml',
  'tests/README.md',
  'apps/web/package.json',
  'apps/api/package.json',
  'packages/shared/package.json'
];

const missing = requiredPaths.filter((item) => !existsSync(new URL(`../${item}`, import.meta.url)));

if (missing.length > 0) {
  console.error('Bootstrap check failed. Missing required template assets:');
  for (const item of missing) {
    console.error(`- ${item}`);
  }
  process.exit(1);
}

console.log('Bootstrap check passed. The fullstack template structure is present.');

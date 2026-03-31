import { existsSync } from 'node:fs';

const isBootstrapped = process.argv.includes('--bootstrapped');

const templatePaths = [
  '.github/pull_request_template.md',
  '.kiro/hooks/spec-gate-before-apply.kiro.hook',
  '.kiro/hooks/architecture-review-manual.kiro.hook',
  '.kiro/hooks/security-pre-commit-review.kiro.hook',
  '.kiro/hooks/api-doc-sync.kiro.hook',
  '.kiro/hooks/format-lint-on-save.kiro.hook',
  '.kiro/hooks/unit-test-on-save.kiro.hook',
  '.kiro/hooks/smoke-on-demand.kiro.hook',
  'openspec/config.yaml',
  'openspec/README.md',
  'openspec/schemas/sixbell-governed/schema.yaml',
  'openspec/schemas/sixbell-governed/templates/proposal.md',
  'openspec/schemas/sixbell-governed/templates/spec.md',
  'openspec/schemas/sixbell-governed/templates/design.md',
  'openspec/schemas/sixbell-governed/templates/review.md',
  'openspec/schemas/sixbell-governed/templates/tasks.md',
  'openspec/specs/change-governance/spec.md',
  'openspec/specs/fullstack-layout/spec.md',
  'openspec/specs/project-bootstrap/spec.md',
  'openspec/changes/.gitkeep',
  'openspec/changes/archive/.gitkeep',
  'docs/README.md',
  'adr/README.md',
  'api/openapi.yaml',
  'tests/README.md',
  'apps/web/package.json',
  'apps/api/package.json',
  'packages/shared/package.json',
  'scripts/bootstrap-openspec.mjs'
];

const generatedPaths = [
  '.kiro/skills/openspec-propose/SKILL.md',
  '.kiro/skills/openspec-explore/SKILL.md',
  '.kiro/skills/openspec-apply-change/SKILL.md',
  '.kiro/skills/openspec-archive-change/SKILL.md',
  '.kiro/prompts/opsx-propose.prompt.md',
  '.kiro/prompts/opsx-explore.prompt.md',
  '.kiro/prompts/opsx-apply.prompt.md',
  '.kiro/prompts/opsx-archive.prompt.md',
  '.github/skills/openspec-propose/SKILL.md',
  '.github/skills/openspec-explore/SKILL.md',
  '.github/skills/openspec-apply-change/SKILL.md',
  '.github/skills/openspec-archive-change/SKILL.md',
  '.github/prompts/opsx-propose.prompt.md',
  '.github/prompts/opsx-explore.prompt.md',
  '.github/prompts/opsx-apply.prompt.md',
  '.github/prompts/opsx-archive.prompt.md'
];

const requiredPaths = isBootstrapped ? [...templatePaths, ...generatedPaths] : templatePaths;
const missing = requiredPaths.filter((item) => !existsSync(new URL(`../${item}`, import.meta.url)));

if (missing.length > 0) {
  console.error(
    isBootstrapped
      ? 'Bootstrap verification failed. Missing required OpenSpec-generated or template assets:'
      : 'Bootstrap check failed. Missing required template source assets:'
  );
  for (const item of missing) {
    console.error(`- ${item}`);
  }
  process.exit(1);
}

console.log(
  isBootstrapped
    ? 'Bootstrap verification passed. The fullstack template is OpenSpec-ready and generated Kiro/GitHub Copilot assets are present.'
    : 'Bootstrap check passed. The fullstack template source structure is present.'
);

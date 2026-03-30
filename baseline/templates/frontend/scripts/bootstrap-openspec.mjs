import { spawnSync } from 'node:child_process';
import { existsSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const templateRoot = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const openspecConfigPath = resolve(templateRoot, 'openspec', 'config.yaml');

if (!existsSync(openspecConfigPath)) {
  console.error('Missing openspec/config.yaml. This template is incomplete and cannot bootstrap OpenSpec.');
  process.exit(1);
}

const useShell = process.platform === 'win32';

const runOpenSpec = (args, options = {}) => {
  const result = spawnSync('openspec', args, {
    cwd: templateRoot,
    shell: useShell,
    stdio: options.stdio ?? 'inherit',
    encoding: 'utf8'
  });

  if (result.error || result.status !== 0) {
    if (options.failureMessage) {
      console.error(options.failureMessage);
    }
    process.exit(result.status ?? 1);
  }

  return result;
};

const versionResult = runOpenSpec(['--version'], {
  stdio: 'pipe',
  failureMessage:
    'OpenSpec CLI not found. Run the Sixbell global installer first so the official CLI is available before bootstrapping this template.'
});

const openspecVersion = versionResult.stdout.trim();

console.log(`Using OpenSpec CLI ${openspecVersion}`);
console.log('Generating official OpenSpec assets for Kiro and GitHub Copilot...');

runOpenSpec(['init', '.', '--tools', 'kiro,github-copilot', '--profile', 'core', '--force']);
runOpenSpec(['schema', 'validate', 'sixbell-governed']);
runOpenSpec(['validate', '--specs', '--strict', '--no-interactive']);

const bootstrapCheck = spawnSync(process.execPath, ['scripts/bootstrap-check.mjs', '--bootstrapped'], {
  cwd: templateRoot,
  stdio: 'inherit'
});

if (bootstrapCheck.error || bootstrapCheck.status !== 0) {
  process.exit(bootstrapCheck.status ?? 1);
}

console.log('OpenSpec bootstrap complete. This repository is ready for approved Kiro and GitHub Copilot workflows.');
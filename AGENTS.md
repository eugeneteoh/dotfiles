# Agent instructions

- Read the relevant chezmoi docs (https://www.chezmoi.io/user-guide/) before changing this repo and follow their recommended patterns; say where you deviate and why.
- Scripts go in `.chezmoiscripts/`, named per docs (e.g. `run_onchange_before_install-packages-darwin.sh.tmpl`); keep them idempotent.
- Packages are declared in `.chezmoidata/packages.yaml`, keyed by OS.
- Never pin versions; always install/upgrade to latest (install scripts re-run weekly via a week-number comment).
- Verify templates render: `chezmoi execute-template < file`, then `bash -n`/`zsh -n` the output.

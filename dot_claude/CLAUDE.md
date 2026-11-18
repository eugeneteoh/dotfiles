# Personal Claude Instructions

@~/.claude/private.md

## Git Commits

- Use one-line commit messages
- Never add Co-Authored-By or other Claude trailers
- Keep commits atomic (one logical change per commit)

## Git & dotfiles

- When pushing dotfiles to chezmoi, commit only the files I named
- Private instructions go in `~/.claude/private.md` (untracked); never add it or other private config to chezmoi
- On `chezmoi apply`, exclude files that would overwrite private local config
- If a push or command fails, diagnose and fix it yourself rather than handing it back to me

## Code style

- Prefer short code with the least abstraction: no helper layers, wrappers, or indirection unless they remove real duplication

## Comments and Docs

- Keep code comments, docstrings, READMEs, config comments, markdown and any other docs short and concise; say only what is non-obvious, no verbose prose

## Pull Requests

- Keep PR descriptions short and concise

## Stacked PRs with gh stack

Use `gh stack` (`github/gh-stack` extension) for all stacked PR workflows. Run `gh stack --help` for the full command list.

```bash
gh stack init feature-part-1     # start a stack
gh stack add -Am "part 2"        # stage all + commit + new branch on top
gh stack view                    # inspect the stack
gh stack submit --auto           # push everything, create/update linked PRs
gh stack rebase                  # cascade rebase after editing a lower branch
gh stack sync --prune            # after a PR merges: fetch, rebase, push, clean up
```

- One small, focused PR per branch; a branch can have multiple commits
- After editing a lower branch, run `gh stack rebase` to propagate the change up the stack

## Problem solving

- When troubleshooting or solving a problem, search online for current best practices (official docs first) before recommending a fix, and cite sources
- For conceptual, technical or research questions, search online sources (papers, docs) before answering, and cite what you found

# Personal Claude Instructions

## Git Commits

- Use one-line commit messages
- No Claude co-author tag
- Keep commits atomic (one logical change per commit)

## Stacked PRs with stax

Use `stax` (alias `st`) for all stacked PR workflows. The stax skill file is at `~/.claude/skills/stax/SKILL.md`.

### Auth setup (one-time)
```bash
gh auth login
st auth --from-gh
```

### Core stacked PR workflow
```bash
# Start from clean trunk
st t && st rs

# Create stacked branches (each is one focused PR)
st create feature-part-1
# ...make changes...
st m                          # stage all + amend commit
st create feature-part-2
# ...make changes...
st m

# View stack
st ls                         # tree with commit counts
st ll                         # tree + PR URLs

# Submit whole stack as linked PRs
st ss

# After bottom PR merges on GitHub:
st rs --restack               # sync trunk, clean merged branch, rebase remaining
st ss                         # update remaining PRs
```

### Key commands
| Command | What it does |
|---|---|
| `st create <name>` | Create branch stacked on current |
| `st m` | Stage all + amend commit (keep one commit per branch) |
| `st ss` | Submit full stack (create/update PRs) |
| `st rs` | Sync trunk + clean merged branches |
| `st rs --restack` | Sync then rebase stack |
| `st restack` | Rebase current stack onto parents |
| `st merge --when-ready` | Wait for CI + approval, then merge bottom-up |
| `st undo` / `st redo` | Recover from risky operations |
| `st ls` / `st ll` | Inspect stack (with/without PR URLs) |
| `st` | Launch interactive TUI |

### Stack output symbols
- `◉` = current branch, `○` = other branch
- `↑` = commits ahead of parent, `↓` = commits behind parent
- `⟳` = needs restacking, `☁` = has remote, `PR #N` = open PR

### Best practices
- Keep each branch small and focused (one logical change per PR)
- One commit per branch — use `st m` (amend) rather than new commits
- Sync often with `st rs`; restack after merges with `st rs --restack`
- Use `st validate` + `st fix` to repair metadata if stack gets corrupted
- Check stack shape with `st ls` / `st ll` before submitting or merging


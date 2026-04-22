## Overview
The workflow scripts (`startup.sh` and `ending.sh`) provide an automated way to manage git synchronization and continuity documentation (`handover.md`). They will be configured as npm scripts for convenience.

## Technical Approach

### 1. `startup.sh` (dev:start)
- Executes `git pull origin main` to ensure the local repository is up to date.
- Checks for the existence of a `handover.md` file.
- If it exists, it outputs the contents to the terminal so the AI agent or developer can immediately read the context and know what to do next.

### 2. `ending.sh` (dev:ending)
- Prompts the user or agent to ensure `tasks.md` is updated.
- Checks if there are active OpenSpec changes and offers to run `openspec archive <change-name>`.
- Prompts the user to input a brief summary of what was accomplished and what remains, overwriting `handover.md` with this new context.
- Executes `git add .`, `git commit -m "chore: dev ending handover"`, and `git push origin main` to sync all progress.

### Architecture / Components
- `package.json`: Exposes the scripts (`npm run dev:start`, `npm run dev:ending`).
- `startup.sh`: Shell script for initialization.
- `ending.sh`: Shell script for teardown and commit.
- `handover.md`: The state file containing human/agent readable next steps.

### Testing Strategy
- Run `npm run dev:start` to verify it pulls and displays `handover.md`.
- Run `npm run dev:ending` to verify it generates `handover.md` and pushes to the repository.

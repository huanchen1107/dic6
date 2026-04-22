## Why
To ensure smooth continuity across development sessions, we need an automated handover system. The `startup.sh` and `ending.sh` scripts will manage syncing code, documenting progress, and preparing the workspace for the next AI agent session or human developer.

## What Changes
- Add a `startup.sh` script to pull the latest code from GitHub, read the markdown handover document, and print suggested next actions to the terminal.
- Add an `ending.sh` script to finalize the workspace (update `tasks.md`), archive any completed OpenSpec changes, generate a new handover document for the next session, and push all changes to GitHub.
- Add a `package.json` to expose these scripts via `npm run dev:start` and `npm run dev:ending`.

## Capabilities

### New Capabilities
- `workflow-scripts`: Automation scripts for git syncing and agentic handover documentation.

### Modified Capabilities
None

## Impact
- Adds `startup.sh`, `ending.sh`, and a minimal `package.json`.
- Standardizes the beginning and end of development sessions.

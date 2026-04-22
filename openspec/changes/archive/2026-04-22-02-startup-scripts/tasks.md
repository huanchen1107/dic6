# Implementation Tasks

1. **Create `package.json`**
   - Initialize a minimal `package.json` file.
   - Add `"dev:start": "bash startup.sh"` to the `scripts` block.
   - Add `"dev:ending": "bash ending.sh"` to the `scripts` block.

2. **Create `startup.sh`**
   - Start with `#!/bin/bash`.
   - Execute `git pull origin main`.
   - Check if `handover.md` exists; if so, print its contents clearly to the terminal.

3. **Create `ending.sh`**
   - Start with `#!/bin/bash`.
   - Pause to remind the user: "Ensure tasks.md is updated."
   - Ask the user if there is a change to archive. If yes, run `openspec archive "<name>"`.
   - Ask the user to type out the next actions/context, and save this to `handover.md`.
   - Add all files to git, commit with a standardized message, and push to GitHub.

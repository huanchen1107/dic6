# shell-scripts Specification

## Purpose
TBD - created by archiving change 02-startup-scripts. Update Purpose after archive.
## Requirements
### Requirement: Startup Script (dev:start)
- The repository MUST contain a `startup.sh` script.
- Executing the script MUST perform a `git pull` to sync the latest code.
- Executing the script MUST check for `handover.md`. If it exists, it MUST print its contents to the terminal to suggest next actions to the developer or agent.

#### Scenario: Session initialization
Given a `handover.md` file exists
When the user runs `npm run dev:start`
Then the repository pulls the latest changes from GitHub
And the terminal displays the contents of the handover document.

### Requirement: Ending Script (dev:ending)
- The repository MUST contain an `ending.sh` script.
- The script MUST prompt the user to ensure `tasks.md` is updated.
- The script MUST archive the current OpenSpec change if everything is complete.
- The script MUST prompt for input to generate or update the `handover.md` document for the next session.
- The script MUST execute a `git push` to sync all code and documentation to GitHub.

#### Scenario: Session wrap-up
When the user runs `npm run dev:ending`
Then the script prompts for the change name to archive it
And the script asks for the next steps to write into `handover.md`
And the script commits and pushes all changes to the remote repository.


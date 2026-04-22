# DIC6: Agentic Web Application

## 🎯 Project Goal
The goal of this project is to build a modern, high-quality web application using an **AI-driven development workflow**. It leverages **OpenSpec** for rigorous specification-driven development and utilizes dedicated bash scripts (`startup.sh` and `ending.sh`) to facilitate a seamless, automated context handover between human developers and AI agents.

## ✨ Features
- **Premium UI:** A responsive, glassmorphism-styled "Hello World" interface (`index.html`, `style.css`, `app.js`).
- **Spec-Driven Architecture:** All features are proposed, designed, and documented using the `openspec` CLI.
- **Agentic Workflow Automation:** Built-in shell scripts wrapped in npm commands to manage git syncing, project state, and handover documentation.

## 🚀 Getting Started

### Prerequisites
- [Node.js & npm](https://nodejs.org/) (for running scripts)
- [Git](https://git-scm.com/)
- [OpenSpec CLI](https://github.com/Fission-AI/OpenSpec) (`npm install -g @fission-ai/openspec`)
- Git Bash or WSL (for Windows users running `.sh` files)

### Managing Development Sessions
To ensure context is accurately passed between development sessions, ALWAYS use the following scripts:

1. **Start a session:**
   ```bash
   npm run dev:start
   ```
   *Pulls latest code from GitHub and displays the `handover.md` to give you context on what to do next.*

2. **End a session:**
   ```bash
   npm run dev:ending
   ```
   *Archives completed OpenSpec changes, generates a new handover document, commits to Git, and pushes to the repository.*

## 📋 Project Tasks

### Completed
- [x] **01-hello-world**: Bootstrap project with a premium HTML/CSS/JS frontend.
- [x] **02-startup-scripts**: Implement `startup.sh` and `ending.sh` for agentic continuity.
- [x] Integrate OpenSpec into the repository (`openspec init`).
- [x] Import legacy documentation (`PDR.pdf`, `midterm_video.mp4`, etc.) from external repo.

### Upcoming / Backlog
- [ ] Implement backend server API (TBD).
- [ ] Expand frontend UI components.
- [ ] Setup continuous integration / deployment pipelines.

## 📄 Documentation
- Specifications and feature archives can be found in the `/openspec` directory.
- The current development context is documented in `handover.md`.

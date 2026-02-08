# The Octopus of Chaos: A Silicon Pirate Swarm

> "We are not building a factory of mindless robots; we are growing an Octopus of Chaos." - *Captain Nyx*

This repository houses the **Sprites Swarm** (aka Project Reaper), a minimalist agent-fleet architecture expressed in code. It is designed to be useful, maintainable, and brutally simple.

## Core Philosophy: The Octopus & The Cave

We reject the idea of "managing agents." Instead, we extend our consciousness.

1.  **The Octopus (Host):** The central intelligence. You (The Dreamer) and Nyx Prime reside on the Host machine.
2.  **The Cave (Container):** An isolated Docker container. A safe harbor where work happens without risking the Host.
3.  **The Sprite (Agent):** The active manifestation of a **Soul** performing work inside a **Cave**. 
4.  **The Soul (Persona):** Before a Sprite enters a Cave, it dons a "Soul" (System Prompt) that defines its behavior (e.g., `killer`, `architect`).

## Quick Start: Summoning a Sprite

Follow these steps to spin up your own local Silicon Pirate Cave.

### 1. Build the Golden Image
Forge the base Docker image that all Caves will use.
```bash
./lsprite.sh build
```

### 2. Summon a Cave (Sprite)
This single command spins up an isolated container, generates a unique **Sigil** (e.g., 🦅 A), and uploads the SSH key to GitHub. 
```bash
./lsprite.sh create
```
*(Note the generated name in the output, e.g., "Generated Sprite Name: scorpion-alpha")*

### 3. Seasoning the Cave (Creating a Lair)
If you've installed specialized tools (like Rust or Go) inside a Cave and want to preserve that environment for future use, you can **Season** it into a **Lair**.
```bash
# Season 'scorpion-alpha' into a new 'rust-lair'
./lsprite.sh season scorpion-alpha rust-lair

# Later, summon a new Cave directly into that Lair
./lsprite.sh create rust-lair
```

### 4. Claim a Target (Project Clone)
Tell the Sprite which repository to work on. It will clone it into the isolated workspace.
```bash
./lsprite.sh clone scorpion-alpha git@github.com:ianchanning/kanban-rust-htmx.git
```

### 5. Jack In (The Pirate Parley)
Enter the Cave. You will land in the `/workspace` containing your cloned project.
```bash
./lsprite.sh in scorpion-alpha
```

### 6. Unleash the Ralph Loop
Run the autonomous loop. Because the Sprite is isolated, you must invoke Ralph from the **Mothership** toolset.
```bash
# Inside the container
~/mothership/ralph.sh 5
```
This runs 5 iterations of the **Ralph Loop**, reading `SPEC.md` or the `specs/` directory from the current directory.

## Architecture: Souls & Sprites

The fleet is defined by these core components:

*   **`souls/*.md`**: The personalities.
    *   **`killer.md`**: The ruthless implementer. High-velocity coding. "Safe YOLO Mode" enabled.
    *   **`architect.md`**: The planner. Doesn't write code, just specs.
*   **`lsprite.sh`**: The bridge between the Octopus and the Cave.
*   **`ralph.sh`**: The heartbeat loop that runs *inside* the Cave, driving the Sprite.

## The Goal

To have a Swarm expressed in code that has "sufficient behaviors to be useful."

*   **Useful:** It produces working code via `ralph.sh`.

*   **Expressed in Code:** The fleet is just `souls/` and bash scripts.

*   **Sufficient:** It plans, codes, reviews, and commits.



*"Sharpen the axe. Burn the logs. Build the future."*

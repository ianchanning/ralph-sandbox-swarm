# GLOSSARY: The Lexicon of Chaos

To maintain clarity across the Swarm, all documentation, scripts, and communications must adhere to these definitions.

## Core Entities

1.  **The Octopus** (Host): The central intelligence. It is the combination of **The Dreamer** (Human) and the host machine where the fleet is orchestrated.
2.  **The Mothership**: This repository (`sprites-swarm`). It is the source of truth for all scripts, souls, and configurations. It is synced into every Cave via HTTPS.
3.  **The Cave** (Container): An isolated Docker instance. A safe harbor where work is performed without risking the Host.
4.  **The Lair** (Image): A persistent, project-specific Docker image created by "seasoning" a Cave with tools (e.g., a `rust-lair`).
5.  **The Soul** (Persona): A specialized system prompt (located in `souls/`) that defines how an agent thinks and acts (e.g., `Killer`, `Craftsman`).
6.  **The Sprite** (Agent): The active manifestation of a **Soul** performing work inside a **Cave**. 
7.  **The Sigil** (Identity): The unique visual identifier (e.g., 🦅 A) assigned to a Sprite to track its actions in the Ledger and Git logs.

## Core Mechanics

1.  **The Ralph Loop**: The autonomous heartbeat (`ralph.sh`). It is the process that drives a Sprite to read specs, implement code, and record progress.
2.  **The Ledger**: The append-only record of truth.
    - **Host Ledger**: `progress.txt` in the Mothership.
    - **Project Ledger**: `progress.txt` inside a project's repository.
    - **Database Ledger**: The `event_log` table within the application itself.
3.  **Seasoning**: The act of installing dependencies and tools inside a Cave to prepare it for a specific project.
4.  **Enshrining**: The act of committing a "Seasoned" Cave into a permanent **Lair** using `lsprite.sh season`.

## Deprecated Terms (Do Not Use)
- *Tentacle* (Use **Sprite**)
- *Reaper* (Use **Sprite**)
- *Reef* (Use **Swarm**)
- *Caves* as a collective (Use **The Fleet** or **The Swarm**)

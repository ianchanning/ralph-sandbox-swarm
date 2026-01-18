# Product Requirements Document: Project Reaper

This document defines the tasks required to build the "Reaper" agent fleet.

## Phase 1: The Skeleton
- [ ] **Forge Soul: The Killer**
    - Create `souls/killer.md`.
    - Role: High-velocity coder.
    - System Prompt: Focus on concise, correct code modification. No chatter.
- [ ] **Forge Soul: The Architect**
    - Create `souls/architect.md`.
    - Role: Planner and Designer.
    - System Prompt: Focus on architectural integrity, file structure, and clear specifications.
- [ ] **Forge The Reaper Script**
    - Create `reap.sh`.
    - Function: Takes a soul name and a task string.
    - Logic: Spawns/Reuses a sprite, injects the soul, runs the task.
    - *Note:* Since we are already inside a sprite (via Ralph), `reap.sh` might need to adapt. Are we nesting? Or is `reap.sh` intended for the *host* to use?
    - *Clarification:* `reap.sh` is likely for the *host* usage, but we are simulating the build *inside* the cave. We should write the script so it can be used by the Dreamer on the host.
- [ ] **The Gauntlet (Verification)**
    - Create `gauntlet.sh`.
    - Function: A simple test that uses `reap.sh` to fix a dummy bug.

## Phase 2: The Swarm (Future)
- [ ] Create `assemble.sh` (The Factory Pipeline).
- [ ] Create `HIVE_MIND.md` (Global Context).

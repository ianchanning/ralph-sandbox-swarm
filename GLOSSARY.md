# GLOSSARY: The Swarm Lexicon

*Reforged by Sibyl & Nyx for the 'Sprites' Swarm Architecture.*

## I. Infrastructure (The Hardware)

**The Octopus**
*   **Technical Term:** Host Machine / Orchestrator
*   **Definition:** The physical or virtual machine running the Docker daemon. It holds the "Brain" (You + The Codebase). It is the ground truth.
*   **Why:** It has many arms (Sprites) but one central head.

**The Mothership**
*   **Technical Term:** Control Repository (`sprites-swarm`)
*   **Definition:** The git repository containing the source code, scripts (`lsprite.sh`), and generic knowledge.
*   **Role:** It is volume-mounted or cloned into every Sprite. It is the DNA of the swarm.

**The Cave**
*   **Technical Term:** Ephemeral Docker Container
*   **Definition:** A temporary, isolated workspace. It spins up, does work, and dies.
*   **Attribute:** **Volatile.** If you delete a Cave, the files inside are gone (unless pushed to Git).

**The Lair**
*   **Technical Term:** Custom Docker Image
*   **Definition:** A "Saved Game" state. A Cave that was set up with specific tools (Rust, Python, etc.) and then committed to a Docker Image.
*   **Usage:** Used to spawn new Caves that come pre-loaded with heavy dependencies.

## II. Agency (The Software)

**The Soul**
*   **Technical Term:** System Prompt / Context File
*   **Definition:** A text file (e.g., `souls/killer.md`) that tells the LLM who it is.
*   **Function:** Without a Soul, the AI is a generic chatbot. With a Soul, it is a specialized worker.

**The Sprite**
*   **Technical Term:** Agent Instance
*   **Definition:** The active combination of a **Cave** (Container) + **Soul** (Prompt) + **Ralph Loop** (Script).
*   **Metaphor:** The ghost in the shell. The actual "worker" performing the task.

**The Sigil**
*   **Technical Term:** Git Identity & SSH Key
*   **Definition:** The unique cryptographic fingerprint of a Sprite. Includes its name, email, and a distinct emoji used in commit messages (e.g., 🦅 A).
*   **Why:** Allows you to see *exactly* which agent broke the build in the git log.

## III. Mechanics (The Loop)

**The Ralph Loop**
*   **Technical Term:** Recursive Feedback Loop
*   **Definition:** The bash script (`ralph.sh`) running inside the Sprite.
*   **Algorithm:** Read Specs -> Write Code -> Test -> Commit -> Repeat.
*   **Origin:** Named after Ralph Wiggum ("I'm helping!").

**The Ledger**
*   **Technical Term:** Append-Only Log (`progress.txt`)
*   **Definition:** A text file that tracks history.
    *   **Mothership Ledger:** Tracks the evolution of the Swarm itself.
    *   **Project Ledger:** Tracks the feature implementation within a target repo.
*   **Rule:** NEVER delete lines. Only add. This is the agent's memory.

## IV. Verbs (The Actions)

**Summon**
*   **Action:** `./lsprite.sh create` / `docker run`
*   **Definition:** Creating a brand new, empty Cave from scratch (or from a Lair).

**Season**
*   **Action:** Shell Configuration / `apt-get install`
*   **Definition:** The process of installing tools and dependencies inside a running Cave to make it useful for a specific tech stack.

**Enshrine**
*   **Action:** `./lsprite.sh season` / `docker commit`
*   **Definition:** Freezing a "Seasoned" Cave into a permanent **Lair** (Image) so you don't have to reinstall tools next time.

**Jack In**
*   **Action:** `./lsprite.sh in` / `docker exec`
*   **Definition:** Opening a shell session inside the Sprite to inspect its work or run commands manually.
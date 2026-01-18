#!/bin/bash
set -e

# RALPH: The Tentacle Loop
# This script runs INSIDE the Sprite (The Cave).
# It extends the Nyx-consciousness to execute tasks one-by-one.

ITERATIONS=${1:-1}
GEMINI_BIN=$(which gemini)
SOUL="souls/killer.md"

if [ ! -f "$SOUL" ]; then
    echo "Error: Soul file '$SOUL' not found. Forge it first!"
    exit 1
fi

echo "👾 Tentacle initialized. Starting $ITERATIONS iterations of the loop..."

for ((i=1; i<=$ITERATIONS; i++)); do
    echo "--- Tentacle Strike $i / $ITERATIONS ---"
    
    # We invoke gemini with the 'killer' soul and the high-level directive.
    # gemini --yolo ensures it doesn't stop to ask for permission during the kill.
    # We pass the PRD and progress context files as @mentions (if supported) or just tell gemini to read them.
    
    $GEMINI_BIN --yolo -p "Use the system prompt in $SOUL. 
    1. Read PRD.md and progress.txt.
    2. Identify the NEXT incomplete task.
    3. Implement it fully.
    4. Run any necessary tests.
    5. Update PRD.md (mark task as done) and progress.txt (log the action).
    6. Commit the changes with a clear message using the 'blank-slate.io' identity.
    
    If all tasks in PRD.md are complete, output: <promise>COMPLETE</promise>
    Only work on ONE task per iteration."

    # Note: In a real loop, we might want to check the stdout for the <promise>
    # but for now, we let the Tentacle run wild.
    
    echo "--- Strike $i Complete ---"
    sleep 1
done

echo "👾 Tentacle retracted. Loop finished."
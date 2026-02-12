# Safer Ralph

[Ralph](https://ghuntley.com/loop/)... but safer. 

**create → clone → (ralph) → purge**

```bash
./sandbox.sh build          # Forge Golden Image
./sandbox.sh create         # Summon Identity
./sandbox.sh clone ID URL . # Claim Target
./sandbox.sh in ID          # Jack In
~/mothership/ralph.sh 5     # Unleash Ralph (inside)
./sandbox.sh purge ID       # Scuttle
```

**go → (ralph)**

```bash
./sandbox.sh build          # Forge Golden Image
./sandbox.sh go URL         # Combines create + clone + in
~/mothership/ralph.sh 1     # Unleash Ralph (inside)
```

- **Host:** Your machine.
- **Sandbox:** Docker (node, claude, gemini, python, SSH key, git config, port 3000, persistent  storage).
- **Identity:** Persona + Sandbox + Keys.
- **Ralph:** The heartbeat loop.

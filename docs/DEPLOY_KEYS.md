# Deploy Keys

Every sandbox is born with its own unique SSH key.

### Automatic
`./sandbox.sh clone ID REPO_URL` will attempt to add the deploy key to GitHub automatically if you have the `gh` CLI installed and authenticated on your host.

### Manual
1. Extract the key:
   ```bash
   ./sandbox.sh key ID
   ```
2. Add it to GitHub: `Settings -> Deploy keys -> Add deploy key` (check "Allow write access").

### Features
- Unique keys per sandbox.
- No host keys leaked to container.
- Automatic `known_hosts` fingerprinting for GitHub.

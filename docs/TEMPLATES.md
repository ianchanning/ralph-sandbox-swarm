# Templates

Snapshot a sandbox to reuse its state later.

### Save a Template
```bash
./sandbox.sh save ID MY-TEMPLATE
```

### Use a Template
```bash
./sandbox.sh create MY-TEMPLATE NEW-ID
./sandbox.sh up NEW-ID MY-TEMPLATE
```

Useful for freezing environments after heavy dependency installs or manual configuration.

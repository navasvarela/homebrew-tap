# Homebrew tap for DbRover

```bash
brew install --cask navasvarela/tap/dbrover
```

[DbRover](https://dbrover.org) is a desktop database tool for PostgreSQL, MySQL, MariaDB,
SQLite, SQL Server, DuckDB and ClickHouse.

The app isn't notarized by Apple yet, so the first launch needs **Open Anyway** in **System
Settings › Privacy & Security**; `brew info dbrover` shows how. DbRover then updates itself.

The cask is bumped after each release by
[DbRover's Packages workflow](https://github.com/navasvarela/dbrover/blob/main/.github/workflows/packages.yml).
Problems with DbRover itself go to [its issues](https://github.com/navasvarela/dbrover/issues/new/choose).

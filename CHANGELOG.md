# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
This repository is a collection of standalone Bash scripts rather than a versioned
package, so changes after `1.0.1` are grouped by date instead of by release number.

## [Unreleased]

### 2026-07-08

#### Added

- `disk-cleanup` — frees up disk space by clearing caches (npm, brew, docker,
  yarn/pnpm/bun, system and dev caches) and `node_modules` / `.next` directories
  under `~/projects*`. Dry-run by default, `--force` to actually delete,
  `--group <pkg|js|macos|dev|node|next>` to analyze a single group. Ships with a
  recorded `vhs` demo.

### 2026-06-25

#### Changed

- License link in `README.md` now uses `https://` instead of `http://` ([#3]).

### 2026-06-20

#### Added

- `LICENSE` file with the MIT License ([#2]).

### 2026-06-17

#### Added

- `agents` — LM Studio added to the list of detected tools.

### 2026-06-14

#### Added

- `agents` — identifies AI agents installed on the machine. Ships with a recorded
  `vhs` demo.

### 2026-05-31

#### Fixed

- Resolved ShellCheck warnings across `shared/` and `bin/` ([#1]):
  - `shared/__shared.sh` — replaced the `mkdir` + `$?` pattern with `if !`, added
    `cd ... || return`, quoted array expansion (SC2320, SC2164, SC2048, SC2086).
  - `bin/run-on-each-dir` — `cd ... || continue` / `|| exit` (SC2164).
  - `bin/untar-all-files-in-dir` — iterate over a glob instead of parsing `ls`,
    quoted variables (SC2045, SC2086).

### 2026-04-18

#### Added

- `url-check` — checks whether URLs read from a file or stdin respond with
  HTTP 2xx/3xx. Ships with a recorded `vhs` demo.

### 2025-12-22

#### Added

- `group-images-by-exif-tag` — verifies that `exiftool` is installed before running.

#### Changed

- `group-images-by-exif-tag` — output is now sorted.
- Regenerated the demo GIFs.

### 2025-12-20

#### Added

- `group-images-by-exif-tag` — groups images into directories by the value of an
  EXIF tag (`FocalLength`, `ISO`, and so on). Requires `exiftool`. Ships with a
  recorded `vhs` demo.
- `cursor-status-on-macos` — reports the installed versions of VS Code and Cursor.

### 2025-06-16

#### Removed

- Dropped an unused `shared/__colors.sh` import.

### 2025-06-13

#### Changed

- **Breaking:** all executables moved from the repository root to `bin/`, and the
  shared helpers to `shared/`. Update your `PATH` to point at
  `<repo>/bin/` instead of `<repo>/`.

### 2025-03-02

#### Fixed

- `npm-release-package` — added a missing import.

### 2025-03-01

#### Changed

- Updated the shared color palette.

### 2025-02-09

#### Changed

- `npm-release-package`, `run-on-each-dir` and `run-x-times` now print the
  commands they evaluate before running them.

### 2025-01-17

#### Added

- `new-cli-app <name>` — scaffolds a new CLI application.

### 2025-01-16

#### Changed

- `npm-get-user-packages` — handles API pagination.

#### Removed

- `npm-get-user-packages` moved out into its own standalone repository.

### 2025-01-15

#### Added

- `kill-port <port>` — kills the process listening on the given port.
- `run-on-each-dir` — runs a command in every subdirectory.
- `run-x-times` — runs a command a given number of times.
- `what-happened` — shows the most recent changes in the current directory.
- `new-guide`, `new-macos-app`, `new-project`, `new-react-app`, `new-slides` —
  scaffolding tools imported from `dotfiles`.
- Installation instructions in `README.md`.

#### Changed

- Scripts now share a common color palette through `__colors.sh`.

### 2024-11-16

#### Changed

- Replaced the `💙 Types` label with `TS`.

### 2024-11-15

#### Added

- Descriptions for every command in `README.md`.
- Scripts imported from the `npm-scripts` repository.

#### Changed

- `publish-npm-package` renamed to `npm-release-package`.

## [1.0.1] - 2024-10-17

#### Added

- `publish-npm-package` — releases a package to the npm registry, pushes tags to
  `origin` and synchronizes with GitHub. Builds the package before versioning, and
  tolerates a missing commit message or a missing `npm run build` script.

#### Changed

- `self-destruct` — reworded its messages and dropped verbose mode.

### 2024-07-31

#### Added

- Initial project set-up with `self-destruct.bash` and
  `untar-all-files-in-dir.sh`.

[unreleased]: https://github.com/piecioshka/my-scripts/compare/v1.0.1...HEAD
[1.0.1]: https://github.com/piecioshka/my-scripts/releases/tag/v1.0.1
[#1]: https://github.com/piecioshka/my-scripts/pull/1
[#2]: https://github.com/piecioshka/my-scripts/pull/2
[#3]: https://github.com/piecioshka/my-scripts/pull/3

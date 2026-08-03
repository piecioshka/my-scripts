# Changelog

All notable changes to this project, newest first.

- 2026-07-08 — Added `disk-cleanup`: frees up disk space by clearing caches (npm, brew, docker, yarn/pnpm/bun, system and dev caches) and `node_modules` / `.next` directories under `~/projects*`; dry-run by default, `--force` to delete, `--group <pkg|js|macos|dev|node|next>` to analyze a single group. Ships with a recorded `vhs` demo.
- 2026-06-25 — Changed the license link in `README.md` to use `https://` ([#3]).
- 2026-06-20 — Added a `LICENSE` file with the MIT License ([#2]).
- 2026-06-17 — Added LM Studio to the tools detected by `agents`.
- 2026-06-14 — Added `agents`: identifies AI agents installed on the machine. Ships with a recorded `vhs` demo.
- 2026-05-31 — Fixed ShellCheck warnings across `shared/` and `bin/` ([#1]): replaced the `mkdir` + `$?` pattern with `if !`, added `cd ... || return` / `|| continue` / `|| exit`, quoted array expansions and variables, and iterated over a glob instead of parsing `ls` (SC2320, SC2164, SC2048, SC2086, SC2045).
- 2026-04-18 — Added `url-check`: checks whether URLs read from a file or stdin respond with HTTP 2xx/3xx. Ships with a recorded `vhs` demo.
- 2025-12-22 — Changed `group-images-by-exif-tag` to sort its output and to verify that `exiftool` is installed before running; regenerated the demo GIFs.
- 2025-12-20 — Added `group-images-by-exif-tag`: groups images into directories by the value of an EXIF tag (`FocalLength`, `ISO`, and so on), requires `exiftool`. Ships with a recorded `vhs` demo.
- 2025-12-20 — Added `cursor-status-on-macos`: reports the installed versions of VS Code and Cursor.
- 2025-06-16 — Removed an unused `shared/__colors.sh` import.
- 2025-06-13 — **Breaking:** moved all executables from the repository root to `bin/`, and the shared helpers to `shared/`. Update your `PATH` to point at `<repo>/bin/` instead of `<repo>/`.
- 2025-03-02 — Fixed a missing import in `npm-release-package`.
- 2025-03-01 — Changed the shared color palette.
- 2025-02-09 — Changed `npm-release-package`, `run-on-each-dir` and `run-x-times` to print the commands they evaluate before running them.
- 2025-01-17 — Added `new-cli-app <name>`: scaffolds a new CLI application.
- 2025-01-16 — Changed `npm-get-user-packages` to handle API pagination, then moved it out into its own standalone repository.
- 2025-01-15 — Added `kill-port <port>`: kills the process listening on the given port.
- 2025-01-15 — Added `run-on-each-dir`: runs a command in every subdirectory.
- 2025-01-15 — Added `run-x-times`: runs a command a given number of times.
- 2025-01-15 — Added `what-happened`: shows the most recent changes in the current directory.
- 2025-01-15 — Added the `new-guide`, `new-macos-app`, `new-project`, `new-react-app` and `new-slides` scaffolding tools, imported from `dotfiles`.
- 2025-01-15 — Added installation instructions to `README.md`, and moved the shared color palette into `__colors.sh`.
- 2024-11-16 — Changed the `💙 Types` label to `TS`.
- 2024-11-15 — Added scripts imported from the `npm-scripts` repository, renamed `publish-npm-package` to `npm-release-package`, and documented every command in `README.md`.
- 2024-10-17 — Added `publish-npm-package`: releases a package to the npm registry, pushes tags to `origin` and synchronizes with GitHub; builds the package before versioning and tolerates a missing commit message or `npm run build` script.
- 2024-10-17 — Changed `self-destruct`: reworded its messages and dropped verbose mode.
- 2024-07-31 — Initial project set-up with `self-destruct.bash` and `untar-all-files-in-dir.sh`.

[#1]: https://github.com/piecioshka/my-scripts/pull/1
[#2]: https://github.com/piecioshka/my-scripts/pull/2
[#3]: https://github.com/piecioshka/my-scripts/pull/3

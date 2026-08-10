# Changelog

All notable changes to this project, newest first.

- 2026-08-10 — Removed `new-cli-app`: the `template-cli-app` repository it scaffolded from no longer exists. ([`2684bd2`])
- 2026-07-08 — Added `disk-cleanup`: frees up disk space by clearing caches (npm, brew, docker, yarn/pnpm/bun, system and dev caches) and `node_modules` / `.next` directories under `~/projects*`; dry-run by default, `--force` to delete, `--group <pkg|js|macos|dev|node|next>` to analyze a single group. Ships with a recorded `vhs` demo. ([`68afc13`])
- 2026-06-25 — Changed the license link in `README.md` to use `https://`. ([#3], [`d35e409`])
- 2026-06-20 — Added a `LICENSE` file with the MIT License. ([#2], [`f028554`])
- 2026-06-17 — Added LM Studio to the tools detected by `agents`. ([`cf0e872`])
- 2026-06-14 — Added `agents`: identifies AI agents installed on the machine. Ships with a recorded `vhs` demo. ([`22ff08b`])
- 2026-05-31 — Fixed ShellCheck warnings across `shared/` and `bin/`: replaced the `mkdir` + `$?` pattern with `if !`, added `cd ... || return` / `|| continue` / `|| exit`, quoted array expansions and variables, and iterated over a glob instead of parsing `ls` (SC2320, SC2164, SC2048, SC2086, SC2045). ([#1], [`8409628`])
- 2026-04-18 — Added `url-check`: checks whether URLs read from a file or stdin respond with HTTP 2xx/3xx. Ships with a recorded `vhs` demo. ([`2486353`])
- 2025-12-22 — Changed `group-images-by-exif-tag` to sort its output and to verify that `exiftool` is installed before running; regenerated the demo GIFs. ([`e9f7c6b`], [`5be5c7c`], [`ca17b81`])
- 2025-12-20 — Added `group-images-by-exif-tag`: groups images into directories by the value of an EXIF tag (`FocalLength`, `ISO`, and so on), requires `exiftool`. Ships with a recorded `vhs` demo. ([`7e74f27`], [`4d9e1f2`])
- 2025-12-20 — Added `cursor-status-on-macos`: reports the installed versions of VS Code and Cursor. ([`a203dff`])
- 2025-06-16 — Removed an unused `shared/__colors.sh` import. ([`d9f0fb7`])
- 2025-06-13 — **Breaking:** moved all executables from the repository root to `bin/`, and the shared helpers to `shared/`. Update your `PATH` to point at `<repo>/bin/` instead of `<repo>/`. ([`e5d8569`])
- 2025-03-02 — Fixed a missing import in `npm-release-package`. ([`87a9326`])
- 2025-03-01 — Changed the shared color palette. ([`d2b6cbc`])
- 2025-02-09 — Changed `npm-release-package`, `run-on-each-dir` and `run-x-times` to print the commands they evaluate before running them. ([`bfe8f75`], [`4d2a7d1`], [`56f4b30`])
- 2025-01-17 — Added `new-cli-app <name>`: scaffolds a new CLI application. ([`1bb5fce`])
- 2025-01-16 — Changed `npm-get-user-packages` to handle API pagination, then moved it out into its own standalone repository. ([`7dafeb7`], [`58250fe`])
- 2025-01-15 — Added `kill-port <port>`: kills the process listening on the given port. ([`25a7a9e`])
- 2025-01-15 — Added `run-on-each-dir`: runs a command in every subdirectory. ([`3fbd3b0`])
- 2025-01-15 — Added `run-x-times`: runs a command a given number of times. ([`be3b6f0`])
- 2025-01-15 — Added `what-happened`: shows the most recent changes in the current directory. ([`debcbad`])
- 2025-01-15 — Added the `new-guide`, `new-macos-app`, `new-project`, `new-react-app` and `new-slides` scaffolding tools, imported from `dotfiles`. ([`8f5d5a3`])
- 2025-01-15 — Added installation instructions to `README.md`, and moved the shared color palette into `__colors.sh`. ([`65bd235`], [`b268825`])
- 2024-11-16 — Changed the `💙 Types` label to `TS`. ([`e56506a`])
- 2024-11-15 — Added scripts imported from the `npm-scripts` repository, renamed `publish-npm-package` to `npm-release-package`, and documented every command in `README.md`. ([`164b279`], [`958ed92`])
- 2024-10-17 — Added `publish-npm-package`: releases a package to the npm registry, pushes tags to `origin` and synchronizes with GitHub; builds the package before versioning and tolerates a missing commit message or `npm run build` script. ([`61670cf`], [`57a81cf`], [`64a8068`])
- 2024-10-17 — Changed `self-destruct`: reworded its messages and dropped verbose mode. ([`74cf52a`])
- 2024-07-31 — Initial project set-up with `self-destruct.bash` and `untar-all-files-in-dir.sh`. ([`21557c1`])

[#1]: https://github.com/piecioshka/my-scripts/pull/1
[#2]: https://github.com/piecioshka/my-scripts/pull/2
[#3]: https://github.com/piecioshka/my-scripts/pull/3
[`21557c1`]: https://github.com/piecioshka/my-scripts/commit/21557c18202d24947904d0f42f797f70e5245153
[`61670cf`]: https://github.com/piecioshka/my-scripts/commit/61670cffbc05e8becf27d4e7088a262c6c3560ff
[`74cf52a`]: https://github.com/piecioshka/my-scripts/commit/74cf52a0985f734e522bfc5fdbc44acc9c39b6e8
[`57a81cf`]: https://github.com/piecioshka/my-scripts/commit/57a81cf98d5f427f42d1b1cc91c4504edd39f5db
[`64a8068`]: https://github.com/piecioshka/my-scripts/commit/64a806825677407ce22bed20535197d384358f17
[`164b279`]: https://github.com/piecioshka/my-scripts/commit/164b27974202d1b1b8f5ebdcca3d006cb7e6fff3
[`958ed92`]: https://github.com/piecioshka/my-scripts/commit/958ed92c2427c3ecdfd7547ca9697785ce140a16
[`e56506a`]: https://github.com/piecioshka/my-scripts/commit/e56506a85033a772b16f67587971f17ae106bef5
[`25a7a9e`]: https://github.com/piecioshka/my-scripts/commit/25a7a9e673a58a21d6c1862fcd95f9777252119e
[`3fbd3b0`]: https://github.com/piecioshka/my-scripts/commit/3fbd3b0e0355e4301fe93442edcd571a12382406
[`be3b6f0`]: https://github.com/piecioshka/my-scripts/commit/be3b6f04a0bfe27bc7318f3b48a9247b31d6f44a
[`65bd235`]: https://github.com/piecioshka/my-scripts/commit/65bd23510158f7669ebd26deb61015868d3b2f89
[`b268825`]: https://github.com/piecioshka/my-scripts/commit/b26882501719d50a55db3366198ff3e2ff6d47f0
[`8f5d5a3`]: https://github.com/piecioshka/my-scripts/commit/8f5d5a3b784c6d511e17133e758a9f622615a04c
[`debcbad`]: https://github.com/piecioshka/my-scripts/commit/debcbadb3d5e704c57491f08482c64ec307307ba
[`7dafeb7`]: https://github.com/piecioshka/my-scripts/commit/7dafeb7baa9845b562c4298ef80306d3503f01aa
[`58250fe`]: https://github.com/piecioshka/my-scripts/commit/58250fee5303d186d0cfc4f216d9be8df997589c
[`1bb5fce`]: https://github.com/piecioshka/my-scripts/commit/1bb5fce6d1a987e1c845454037652ebbeb8af816
[`bfe8f75`]: https://github.com/piecioshka/my-scripts/commit/bfe8f759ebf0ebdf4c1555c974c617b1fac2379b
[`4d2a7d1`]: https://github.com/piecioshka/my-scripts/commit/4d2a7d1102a40444527cc503c60556e26ffe0a1a
[`56f4b30`]: https://github.com/piecioshka/my-scripts/commit/56f4b30cdbdfc5f7051b011eb36381ff42d0a316
[`d2b6cbc`]: https://github.com/piecioshka/my-scripts/commit/d2b6cbcdd5a9194bd4f69d74df1b1836a8747d70
[`87a9326`]: https://github.com/piecioshka/my-scripts/commit/87a9326d71ac4ec6392e91bc51b34ad7b868771b
[`e5d8569`]: https://github.com/piecioshka/my-scripts/commit/e5d8569f4cd101319320111359adfab7049af912
[`d9f0fb7`]: https://github.com/piecioshka/my-scripts/commit/d9f0fb7f3de8337765c76a11432b49c29b13a98b
[`a203dff`]: https://github.com/piecioshka/my-scripts/commit/a203dfff62f19aaf35741004b5c04e278840c4f4
[`7e74f27`]: https://github.com/piecioshka/my-scripts/commit/7e74f27a609670cb9a0ef71203b0d45d210b20a8
[`4d9e1f2`]: https://github.com/piecioshka/my-scripts/commit/4d9e1f23bb00a3a23d9d03aec674b798cddee406
[`e9f7c6b`]: https://github.com/piecioshka/my-scripts/commit/e9f7c6bc7ee2384d9a0280eb57b5f9d986dfc96d
[`5be5c7c`]: https://github.com/piecioshka/my-scripts/commit/5be5c7c2fa9f164d09ffd54ad59fde41be69750e
[`ca17b81`]: https://github.com/piecioshka/my-scripts/commit/ca17b81d23bee30c950dd0e4a9df34c998133850
[`2486353`]: https://github.com/piecioshka/my-scripts/commit/24863532616843b2511a182ae43b6be578ffbabc
[`8409628`]: https://github.com/piecioshka/my-scripts/commit/84096285ca416f3304e7ef5143afe8712f8ae5d1
[`22ff08b`]: https://github.com/piecioshka/my-scripts/commit/22ff08b2f5e20eb12311a643fb8749acb11ac22b
[`cf0e872`]: https://github.com/piecioshka/my-scripts/commit/cf0e872cb4f8c41eb879e76608f47045dc3d2637
[`f028554`]: https://github.com/piecioshka/my-scripts/commit/f028554ef47a5bc6baee8555d240194e1d22b077
[`d35e409`]: https://github.com/piecioshka/my-scripts/commit/d35e4099a37b214c3447c09b88fdadcf68bcce2e
[`68afc13`]: https://github.com/piecioshka/my-scripts/commit/68afc13e6bdcd7113d365c537658d4b9e3eefc39
[`2684bd2`]: https://github.com/piecioshka/my-scripts/commit/2684bd29758e4ffa784e4dc18a631bf47dd1aac6

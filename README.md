# my-scripts

🔨 My utility Bash scripts

## Installation

```bash
cd ~/projects/ # or any workspace what you use
git clone git@github.com:piecioshka/my-scripts.git

# Bash: please add to `~/.bash_profile`
export PATH="$HOME/projects/my-scripts/bin/:$PATH"

# Fish: please add to `~/.config/fish/config.fish`
set -gx PATH $HOME/projects/my-scripts/bin/ $PATH
```

**TIP**: After changing the shell configuration, restart the terminal to apply the new settings.

## Commands

### AI & Inspection

- `agents` - Identify installed AI agents
- `cursor-status-on-macos` - Identify installed version of VSCode and Cursor AI
- `what-happened` — Display last changes in current directory

### Scaffolding

- `new-guide <name>` — Create new guide
- `new-macos-app <name>` — Create new macOS app
- `new-project <name>` — Create new project
- `new-react-app <name>` — Create new React app
- `new-slides <name>` — Create new slides

### Automation & Workflow

- `npm-release-package` — Release package to npm registry + Push tags to origin + Synchronize with GitHub
- `run-on-each-dir` — Run command on each directory
- `run-x-times` — Run command x times

### File & System

- `disk-cleanup` — Free up disk space by clearing caches (npm, brew, docker, yarn/pnpm/bun, system & dev caches, and `node_modules` / `.next` under `~/projects*`); dry-run by default, `--force` to delete, `--group <pkg\|js\|macos\|dev\|node\|next>` to analyze one group
- `group-images-by-exif-tag` — Group images by EXIF tag value (e.g., FocalLength, ISO, etc., requires `exiftool`)
- `kill-port <port>` — Kill process running on port
- `self-destruct` — Remove all files from current directory
- `untar-all-files-in-dir` — Untar all files in directory
- `url-check` — Check whether URLs from a file or stdin respond with HTTP 2xx/3xx

## Demos

Recorded with [vhs](https://github.com/charmbracelet/vhs).

### `agents`

```bash
agents
```

![](demo/agents.gif)

### `disk-cleanup`

```bash
disk-cleanup
disk-cleanup --group pkg
```

![](demo/disk-cleanup.gif)

### `group-images-by-exif-tag`

```bash
group-images-by-exif-tag FocalLength
group-images-by-exif-tag Aperture
```

![](demo/group-images-by-exif-tag.gif)

### `url-check`

```bash
url-check -f links.txt
echo "https://github.com" | url-check
```

![](demo/url-check.gif)

#### Recipe: check whether subdomains are alive

[crt.name](https://crt.name) returns subdomains found in Certificate Transparency logs as plain text, one name per line. Add a scheme to each line and pipe it into `url-check`:

```bash
curl -s "https://crt.name/v1/search?apex=example.org" \
  | sed 's|^|https://|' \
  | url-check
```

- `sed 's|^|https://|'` turns bare names into URLs - `url-check` only picks up lines matching `https?://`.
- A `FAIL 000` means the request never completed (DNS does not resolve, connection refused, TLS error, timeout) - that is the usual signal for a dead subdomain.

## License

[The MIT License](https://piecioshka.mit-license.org) @ 2026

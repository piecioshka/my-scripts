# my-scripts

My utility scripts

## Installation

```bash
cd ~/projects/ # or any workspace what you use
git clone git@github.com:piecioshka/my-scripts.git

# Bash: please add to `~/.bash_profile`
export PATH="$HOME/projects/my-scripts/:$PATH"

# Fish: please add to `~/.config/fish/config.fish`
set -gx PATH $HOME/projects/my-scripts/ $PATH
```

**TIP**: When you modify shell configs, please restart the terminal to apply new settings.

## Commands

- `kill-port <port>` — Kill process running on port
- `new-guide <name>` — Create new guide
- `new-macos-app <name>` — Create new macOS app
- `new-project <name>` — Create new project
- `new-react-app <name>` — Create new React app
- `new-slides <name>` — Create new slides
- `npm-get-user-packages <username>` — Display projects of user from npm registry
- `npm-release-package` - Release package to npm registry + Push tags to origin + Synchronize with GitHub
- `run-on-each-dir` — Run command on each directory
- `run-x-times` — Run command x times
- `self-destruct` — Remove all files from current directory
- `untar-all-files-in-dir` — Untar all files in directory
- `what-happened` — Display last changes in current directory

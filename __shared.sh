#!/usr/bin/env bash

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$script_dir/__colors.sh"

# Function to set terminal text color
function __set_color {
  echo -ne "$1"
}

# Function to replace content in a file
function __replace_file_content {
  local search=$1
  local replace=$2
  local file=$3
  sed -i '' "s/${search}/${replace}/g" "${file}"
}

function __create_project_by {
  name="${1}";
  type="${2}";

  # 1. Create new directory
  mkdir ${name}

  # INFO: $? reads the exit status of the last command executed
  # http://tldp.org/LDP/abs/html/exit-status.html
  if [ $? -ne 0 ]; then
    echo 'ERROR: Cloning Git repository failed'
    return $?
  fi

  cd ${name}

  homedir=~
  eval homedir=${homedir} # workaround for translate ~ to user home directory
  source="$(pwd)"

  echo "[+] Creating: $source"

  # 2. Clone template project and remove Git history
  repo=git@github.com:piecioshka/${type}.git
  echo "[+] Cloning: $repo"
  git clone $repo --quiet .
  rm -rf .git/

  # 3. Overwrite INSERT_NAME string
  echo "[+] Replacing: from INSERT_NAME to \"$name\""
  files=(README.md package.json package-lock.json index.html src/index.html .changelogrc slides.md bin/cli.js electron-builder.json5)

  for FILE in ${files[*]}
  do
    if [ -s "${FILE}" ]; then
      __replace_file_content "INSERT_NAME" ${name} ${FILE}
    fi
  done

  # 4. Create Git repository
  echo "[+] Initializing Git repository"
  git init > /dev/null
  git add .
  git commit -am 'Initialize project' > /dev/null

  __set_color "${__COLOR_GREEN}"
  echo -e "[+] Project created successfully!"
  __set_color "${__COLOR_RESET}"
}

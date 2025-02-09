#!/usr/bin/env bash

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$script_dir/__colors.sh"

function __print_action {
  echo -e "${__COLOR_BLUE_LIGHT}==> ${__COLOR_GREEN}[x]${__COLOR_BLUE} # ${__COLOR_RESET}${1}"
}

function __print_command {
  command="${1}"
  current_dir="${2:-$(pwd)}"

  if [ -z "$command" ]; then
    echo "Usage: __print_command <command> [current_dir=$(pwd)]"
    exit 1
  fi

  folder_name=$(basename $current_dir)
  echo -e "${__COLOR_BLUE_LIGHT}==> ${__COLOR_GREEN}${folder_name}${__COLOR_BLUE} > ${__COLOR_RESET}$command"
}

function __print_command_and_eval {
  __print_command "$1"
  eval "$1"
  echo ""
}

function __replace_file_content {
    from="${1}"
    to="${2}"
    filename="${3}"
    input="s/${from}/${to}/g";
    suffix="-new"

    sed -i ${suffix} ${input} ${filename}
    rm "${filename}${suffix}"
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

  __print_action "Creating: $source"

  # 2. Clone template project and remove Git history
  repo=git@github.com:piecioshka/${type}.git
  __print_action "Cloning: $repo"
  git clone $repo --quiet .
  rm -rf .git/

  # 3. Overwrite INSERT_NAME string
  __print_action "Replacing: from INSERT_NAME to \"$name\""
  files=(README.md package.json package-lock.json index.html src/index.html .changelogrc slides.md bin/cli.js electron-builder.json5)

  for FILE in ${files[*]}
  do
    if [ -s "${FILE}" ]; then
      __replace_file_content "INSERT_NAME" ${name} ${FILE}
    fi
  done

  # 4. Create Git repository
  __print_action "Initializing Git repository"
  git init > /dev/null
  git add .
  git commit -am 'Initialize project' > /dev/null

  __print_action "Project created successfully!"
}

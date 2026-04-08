#!/bin/bash

staged_mode=false
file=""

while getopts ":f:g:" opt; do
  case $opt in
    f) staged_files_mode=true
    ;;
    g) files="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    exit 1
    ;;
  esac
done

if ${staged_node}; then
 files=$(git diff --name-only --cached)
fi

if [ -z ${files} ]; then
  echo "Missing files to review"
  exit 1
fi

claude "Ask to aws-cert-mentor to review ${files}"

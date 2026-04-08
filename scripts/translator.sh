#!/bin/bash

staged_mode=false
file=""
mode="review" # 'review', 'translate'

while getopts ":f:g:m:" opt; do
  case $opt in
    f) staged_files_mode=true
    ;;
    g) files="$OPTARG"
    ;;
    m) mode="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    exit 1
    ;;
  esac
done

case $mode in 
  review|translate)   ;;
  *)
    echo "Invalid mode: $mode. Select 'review' or 'translate'"
    exit 1
  ;;
esac 

if ${staged_node}; then
 files=$(git diff --name-only --cached)
fi

if [ -z ${files} ]; then
  echo "Missing files to review"
  exit 1
fi

claude "Ask to translator to ${mode} ${files}"

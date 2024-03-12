#!/bin/bash
# Courtesy of https://stackoverflow.com/questions/44250184/setting-environment-variables-in-flutter

case "$1" in
"dev") INPUT="env/dev.env"
;;
"staging") INPUT="env/staging.env"
;;
"prod") INPUT="env/prod.env"
;;
*)
  echo "Missing arguments [dev|staging|prod]"
  exit 1
;;
esac

while IFS= read -r line
do
  trimmed_line="${line#"${line%%[![:space:]]*}"}"
  if [[ $trimmed_line != "" && ${trimmed_line:0:1} != "#" ]]; then
    DART_DEFINES="$DART_DEFINES--dart-define=$line "
  fi
done < "$INPUT"
echo "$DART_DEFINES"


import "string@0.1.0"

# Collapses `.` and `..` segments from a file path.
#
# ```
# $ path_normalize "/foo/./bar/.."
# "/foo"
# ```
#
# Based on: https://stackoverflow.com/a/31086901/376773
path_normalize() {(
  shopt -s extglob
  local path="$1"

  # get rid of /../ example: /one/../two to /two
  path="${path//\/*([!\/])\/\.\./}"

  # get rid of /./ and //* example: /one/.///two to /one/two
  path="${path//@(\/\.\/|\/+(\/))//}"

  # remove the last '/.'
  echo "${path%%/.}"
)}

# Replaces a file path contained within the `$HOME` directory with `~`.
#
# ```
# path_pretty "/home/me/example.txt"
# "~/example.txt"
# ```
path_pretty() {
  if string_starts_with "$1" "$HOME"; then
    echo "~${1:${#HOME}}"
  else
    echo "$1"
  fi
}

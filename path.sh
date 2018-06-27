# https://stackoverflow.com/a/31086901/376773
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

#!/bin/sh
set -eu
eval "`curl -sfLS import.pw`"
source ./path.sh
import "import.pw/assert@2.1.2"

assert_equal "$(path_normalize "/foo/./bar/..")" "/foo"

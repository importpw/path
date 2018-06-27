#!/bin/sh
eval "`curl -sfLS import.pw`"
source ./path.sh
import "import.pw/assert@2.1.1"

assert_equal "$(path_normalize "/foo/./bar/..")" "/foo"

#!/bin/sh
set -eu
eval "`curl -sfLS import.pw`"
import "assert@2.1.3"
source ./path.sh

# path_normalize
assert_equal "$(path_normalize "/foo/./bar/..")" "/foo"

# path_pretty
assert_equal "$(HOME="/home/me" path_pretty "/home/me/foo.txt")" "~/foo.txt"
assert_equal "$(HOME="/home/me" path_pretty "/home/me/another/foo.csv")" "~/another/foo.csv"
assert_equal "$(HOME="/home/me" path_pretty "/root/foo.txt")" "/root/foo.txt"
assert_equal "$(HOME="/home/other" path_pretty "/home/me/foo.txt")" "/home/me/foo.txt"

echo "Tests passed!"

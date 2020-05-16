#!/bin/sh
set -eu
eval "$(curl -sfLS https://import.pw)"
import "assert@2.1.3"
source "./path.sh"

# path_normalize
assert_equal "$(path_normalize "/one/.")" "/one"
assert_equal "$(path_normalize "/foo/./bar/..")" "/foo"
#assert_equal "$(path_normalize "/one/.///two")" "/one/two"

# path_pretty
assert_equal "$(HOME="/home/me" path_pretty "/home/me/foo.txt")" "~/foo.txt"
assert_equal "$(HOME="/home/me" path_pretty "/home/me/another/foo.csv")" "~/another/foo.csv"
assert_equal "$(HOME="/home/me" path_pretty "/root/foo.txt")" "/root/foo.txt"
assert_equal "$(HOME="/home/other" path_pretty "/home/me/foo.txt")" "/home/me/foo.txt"

echo "Tests passed!"

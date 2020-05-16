# path

Path string manipulation functions for shell scripts.


## API

### `path_normalize "$input"`

```bash
#!/usr/bin/env import
import "path@0.0.1"

path_normalize "/foo/./bar/.."
# /foo
```

### `path_pretty "$input"`

```bash
#!/usr/bin/env import
import "path@0.0.1"

export HOME=/home/user

path_pretty "/home/user/file.txt"
# ~/file.txt

path_pretty "/home/other/file.txt"
# /home/other/file.txt
```

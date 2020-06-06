# path

Path string manipulation functions for shell scripts.


## API

### `path_resolve "$input"`

```bash
#!/usr/bin/env import
import "path"

path_resolve ".."
# /foo
```

### `path_normalize "$input"`

```bash
#!/usr/bin/env import
import "path"

path_normalize "/foo/./bar/.."
# /foo
```

### `path_pretty "$input"`

```bash
#!/usr/bin/env import
import "path"

export HOME=/home/user

path_pretty "/home/user/file.txt"
# ~/file.txt

path_pretty "/home/other/file.txt"
# /home/other/file.txt
```

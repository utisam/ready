# Ready

Tool to check if you are ready.

```console
$ git clone repository/which/has/.readyrc/file.git
$ cd $(basename -s .git !:2)
$ ready
Command: dep ... OK
Command: migrate ... OK
```

## Install

```bash
git clone git@github.com:utisam/ready.git
cd ready
sudo ./install.sh # Linux
GROUP=admin ./install.sh # OS X
```

## Configure Your Project

Write `.readyrc` in your repository.

```bash
check_command "dep"
check_command "migrate"
```

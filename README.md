# Ready

Tool to check if you are ready.

```
$ git clone repository/which/has/.readyrc/file
$ ready
Command: dep ... OK
Command: migrate ... OK
```

## Install

```bash
git clone git@github.com:utisam/ready.git
cd ready
sudo ./install.sh
```

## Configurate in Your Project

Write `.readyrc` in your repository.

```bash
check_command "dep"
check_command "migrate"
```

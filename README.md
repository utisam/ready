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

`.readyrc` file is a bash script.
In this file, some special functions are avaiable.

### Functions

* `check_command`
  * Check whether the command exists.
  * Example: `check_command "dep"`
* `check_eval`
  * Check the result of `eval`.
  * Example: `check_eval '[[ "$(git config url.git@github.com:.insteadOf)" = "https://github.com/" ]]'`
* `check_npm_package`
  * Check whether the npm package is installed.
  * Example: `check_npm_package "yarn"`
* `check_pkg_config`
  * Check whether the npm package is installed.
  * Example: `check_pkg_config "SDL2"`
* `check_pip_package`
  * Check whether the python egg is installed.
  * `pip3 freeze` is used in default.
  * When you use `pip`, `READY_PIP_COMMAND=pip` at runtime.
  * Example: `check_pip_package "sphinx"`
* `check_ruby_gem`
  * Check whether the ruby gem is installed.
  * Example: `check_ruby_gem "bundler"`

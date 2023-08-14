# Rc files

## What are "rc" files?

In almost all cases a "rc" file is a configuration file for some executable.
Most commonly we associated rc files with shells such as Bash and Zsh, more
specifically files such as `.bashrc` and `.zshrc`.

The term "rc" stands for "run command", which suggests that rc files consists
of commands that are executed at some point. Most typically, rc files are used
when an executable (e.g., `bash` or `zsh`) is initialized, configuring itself
before executing whatever the program is tasked with.

Some programs might have multiple rc files, and which ones are used can often
depend upon conditions such as how or when the executable is launched. In the
case of shells such as Bash and Zsh, different rc files are used depending upon
if the shell is launched as an interactive shell, login shell, and so forth. 
Most operating systems have system-wide shell rc files with sensible defaults,
in addition to any user-specific shell rc files a user might have configured.


## Very brief summary of shell rc files

The following table depicts the common and simplified order-of-execution of rc
files for Zsh and Bash. The files that are read first are listed first.

| Zsh | Bash | Notes |
| --- | ---- | ----- |
| ~/.zshenv | | Always executed. Configure e.g., the `PATH` environment variable in this file. |
| ~/.zprofile | ~/.bash_profile | Only executed once on first login. You can put environment variables such as `PATH` here instead. |
| ~/.zshrc | ~/.bashrc | Always executed for _interactive_ shells. Put aliases, functions, and similar stuff in these files. |
| ~/.zlogin | ~/.bash_login | Same as `~/.zprofile` and `~/.bash_profile`, just different time of execution. |

Note that this table only lists the user-specific rc files, but most have
system-wide counterparts with equivalent names. The system-wide rc files are
read before the equivalent user-specific file. In other words, user-specific rc
files can always be used to override any system-wide defaults.

Official documentation on shell rc files:
- https://zsh.sourceforge.io/Doc/Release/Files.html
- https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html

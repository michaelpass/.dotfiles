# .dotfiles
Personal configuration files for quick workflow deployment

### Purpose
Quick deployment on macOS Big Sur

### Installation (Done as individual shell commands)
```
 $ cd; // Takes user directly to home directory.
 $ git clone git@github.com:michaelpass/.dotfiles // Clones into a hidden folder in $HOME. 
 $ cd ~/.dotfiles // Move into newly cloned directory
 $ cp ./* ~ // Copies contents to $HOME.
```

Note: Clones directly to working directory.
[^1]
[^2]

# TODO:
1. Fork and refactor code for Ubuntu linux on AWS' EC2
2. Write this as a proper bash script
3. Fork and refactor for ArchLinux
4. Fork and refactor for KaliLinux

[^1]: User must have already configured GitHub for automatic cloning.

[^2]: User must remove bash prompt symbol '$'

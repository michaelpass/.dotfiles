# .dotfiles
Personal configuration files for quick workflow deployment

## Purpose
Quick deployment of development environment configuration on macOS

## Features
- Shell configuration (zsh)
- Git configuration
- Emacs configuration (as a submodule)
- And more...

## Installation

### Prerequisites
- Git installed and configured with SSH keys
- macOS (tested on Big Sur and later)

### Quick Start
```bash
# Clone the repository
git clone --recurse-submodules git@github.com:michaelpass/.dotfiles.git

# Copy configuration files to home directory
cp -r ~/.dotfiles/* ~/
```

## Submodules
This repository uses Git submodules for certain configurations:

- `.emacs.d`: Personal Emacs configuration
  - Repository: [michaelpass/.emacs.d](https://github.com/michaelpass/.emacs.d)
  - To update: `git submodule update --remote`

## TODO
1. Fork and refactor code for Ubuntu linux on AWS' EC2
2. Write this as a proper bash script
3. Fork and refactor for ArchLinux
4. Fork and refactor for KaliLinux

## Contributing
Feel free to fork this repository and adapt it to your needs. Pull requests are welcome!

## License
This project is open source and available under the MIT License.

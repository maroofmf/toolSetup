# Author: Maroof
# Description: Shell file to install my macos dependencies and config

# MACROS:
REQ_BREW = requirements_brew.txt

# Package: git account

# Package: Install brew and its dependancies

# Install Homebrew
echo "Setting up Homebrew!"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Homebrew
echo "Updating Homebrew!"
brew update

# Install all homebrew dependencies from requirements-brew.txt
cat $REQ_BREW | xargs brew install

# Check if path is set to homebrew first



# Package: VIM
# Install awesome vim
# Install vundle
# Install vundle dependencies: https://github.com/JamshedVesuna/vim-markdown-preview

# Package: Opencv
# Install opencv and link it with python3

# Package: Bash
# Replace bashrc from your git

# Package: Docker


# Package: XCode

# Package: Essentials
#-> Google Chrome
#-> SkYPE
#-> Spotify
#-> Microsoft office

# Package:

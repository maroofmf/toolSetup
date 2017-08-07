# Author: Maroof
# Description: Shell file to install my macos dependencies and config

#----------------------------------------------------------------------------------------------------------------------#
# MACROS:
REQ_BREW=requirements_brew.txt

#---------------------------------------------------------------------------------------------------------------------i#
# Package: XCODE
xcodePath=$(xcode-select -p)
sudo xcodebuild -license accept

#----------------------------------------------------------------------------------------------------------------------#
# Package: git account
git config --global user.name maroofmf
git config --global user.email maroofmf@usc.edu
sudo git config --system user.name maroofmf
sudo git config --system user.email maroofmf@usc.edu
echo "Git config complete"

#----------------------------------------------------------------------------------------------------------------------#
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
echo $PATH  # /usr/local/bin should be in the beginning

#----------------------------------------------------------------------------------------------------------------------#
# Package: VIM

# Install awesome vim
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cat vimrc.txt > ~/.vimrc
# Do:
#>> vim
#:PluginInstall
#----------------------------------------------------------------------------------------------------------------------#
# Package: Opencv
# Install opencv and link it with python3
brew install --force opencv3 --with-contrib --with-python3 --without-python --with-tbb --c++11
echo /usr/local/opt/opencv3/lib/python3.6/site-packages >> /usr/local/lib/python3.6/site-packages/opencv3.pth

#----------------------------------------------------------------------------------------------------------------------#
# Package: Bash
# Replace bashrc from your git
cat bash_profile.txt > ~/.bash_profile

#----------------------------------------------------------------------------------------------------------------------#
# Other GUI Package:

#-> Docker
#-> Google Chrome
#-> Skype
#-> Spotify
#-> Microsoft office
#-> MATLAB

#----------------------------------------------------------------------------------------------------------------------#
# Package: virtual envs
pip3 install virtualenv
cd
cd Desktop
mkdir virtualenv
cd virtualenv
virtualenv tensorflow
source $TF
pip3 install tf_requirements.txt

#----------------------------------------------------------------------------------------------------------------------#
# Neural Enhance Install
docker run --rm -v `pwd`:/ne/input -it alexjc/neural-enhance --help

#----------------------------------------------------------------------------------------------------------------------#
# Skicka (Google drive sync):
go get github.com/google/skicka
# Find github download folder in skicka and add to search path or move to BREW dir.
# run ./skicka init




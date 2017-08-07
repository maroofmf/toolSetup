# Author: Maroof Mohammed
# Description: This file is used to set up backup as a cron job
#--------------------------------------------------------------------------------------------------#
# Refresh text files:

# Brew
brew leaves > requirements_brew.txt

# Tensorflow
source $TF
pip3 freeze > tf_requirements.txt
deactivate

# Bash profile:
cat ~/.bash_profile > bash_profile.txt

# Environment variables:
env > env.txt

# Vim rc:
cat ~/.vimrc > vimrc.txt
#--------------------------------------------------------------------------------------------------#
# Upload to git

git add *
git commit -m"Cron Job commit. Tools backup taken on: $(date)"
git push origin master


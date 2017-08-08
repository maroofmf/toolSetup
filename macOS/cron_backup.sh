# Author: Maroof Mohammed
# Description: This file is used to set up backup as a cron job
#--------------------------------------------------------------------------------------------------#
# Crontab settings:
MAILTO=""
PATH=Users/maroofmohammedfarooq/go/bin:Users/maroofmohammedfarooq/go/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
REPO_DIR=/Users/maroofmohammedfarooq/Desktop/toolSetup/macOS
cd ${REPO_DIR}

#--------------------------------------------------------------------------------------------------#
# Refresh text files:

# Brew
brew leaves > requirements_brew.txt

# Tensorflow
source /Users/maroofmohammedfarooq/Desktop/virtualEnvs/tensorflow/bin/activate
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
#GIT=`which git`
#${GIT} config --global user.name "maroofmf"
#${GIT} config --global user.email "maroofmf@usc.edu"
#git remote -v >> ~/test.txt
git add --all .
git commit -m"Cron Job commit. Tools backup taken on: $(date)"
#git push origin master


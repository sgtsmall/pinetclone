mkdir ~/.ssh
mkdir ~/bin
mkdir ~/pinetclone/`hostname`
cp ~/pinetclone/setup/syncup ~/bin/syncup
cd ~/pinetclone
git config --global user.email "sgtsmall@gmail.com"
git config --global user.name "Alex"
git remote set-url origin git@github.com:sgtsmall/pinetclone.git


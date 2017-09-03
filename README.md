# pinetclone
Config directory for Pi Boxes


New
copy the relevant keys

then
ssh -T git@github.com

clone the repo

git clone git://github.com/sgtsmall/pinetclone

create a new folder for this host under pinetclone
create a bin directory (/home/pi/bin)
copy relevant scripts and update
bin/syncup

first time
from pinetclone

git config --global user.email "sgtsmall@gmail.com"
git config --global user.name "Alex"
git remote set-url origin git@github.com:sgtsmall/pinetclone.git
xgit add -A

git commit -am "adding host"
git push

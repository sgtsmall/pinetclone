# pinetclone
Config directory for Pi Boxes

I recently had a pi sdcard let go ... they do that from time to time!
Fortunately I had recently built a similar unit and had the scripts and notes available, although I wasn't sure I had everything. I had been meaning to build this system up for a while so now here goes.

It's Sep '17 and early days for thisi so hopefully improves with age.

### Initial setup

I have started putting this in some scripts, but several manual steps for now.

 - Boot your pi
 - sudo raspi-config
 - at least change the password and make a unique name
 - I usually do the localization (en-AU.UTF-8 and timezone)
 - enable the ssh (touch /boot/ssh)
 - reboot and log in

```
git clone git://github.com/sgtsmall/pinetclone
```

Current versions of raspi seem to have git installed already. Otherwise you may have to install it.

```
cd pinetclone
pwd
ls setup
```

```
pi@smartipi:~/pinetclone $ pwd
/home/pi/pinetclone
pi@smartipi:~/pinetclone $ ls setup
piclean1.sh  step1.sh  step2.sh  syncupo
```
 - step1.sh
 	- mkdir ~/.ssh
 	- mkdir ~/bin
 	- mkdir ~/pinetclone/`hostname`
 	- cp ~/pinetclone/setup/syncup ~/bin/syncup
 	- cd ~/pinetclone
	- git config --global user.email "sgtsmall@gmail.com"
 	- git config --global user.name "Alex"
	- git remote set-url origin git@github.com:sgtsmall/pinetclone.git


copy the relevant keys into the .ssh folder

 - step2.sh
	 - sudo chmod 600 ~/.ssh/id_rsa
	 - sudo chmod 700 ~/.ssh

then test the connection
```
ssh -T git@github.com
```

 now you can check bin/syncup it doesn't have much unique at this stage.
The first command tries to look for apt-get installs

 - piclean1.sh   this script tends to remove wolfram and libreoffice


```
git add -A
git commit -am "adding host"
git push
```

#!/bin/bash

apt-get update
apt-get upgrade
apt-get install python3.9
apt-get install auditd
apt-get install git

mkdir /bkp/backup
mkdir /.FAB
mkdir /.FAB/logs
touch audit.sh

git clone https://github.com/ErickTS7/fab 

usuarios=$(cat /etc/passwd | grep -i /home | cut -d: -f1)

for i in $usuarios; do

	if [ -d "/home/$i/Área de Trabalho" ]; then
		desktop="/home/$i/Área de Trabalho"
	else
		desktop="/home/$i/Desktop"
	fi

	if [ -d "/home/$i/Vídeos" ]; then
		videos="Vídeos"
	else
		videos="Videos"
	fi
	if [ -d "/home/$i/Documentos" ]; then 
		documents="Documentos"
	else
		documents="Documents"
	fi
	if [ -d "/home/$i/Imagens" ]; then
		pictures="Imagens"
	else
		pictures="Pictures"
	fi
	if [ -d "/home/$i/Música" ]; then
		music="Música"
	else
		music="Music"
	fi
		if [ -d "/home/$i/Público" ]; then
		public="Público"
	else
		public="Public"
	fi
			if [ -d "/home/$i/Modelos" ]; then
		templates="Modelos"
	else
		templates="Templates"
	fi
done

unzip template.zip template.txt

for i in $usuarios; do
	cp template.txt /home/@#17
	cp template.txt /home/$i/@1#4
	cp template.txt /home/$i/$desktop/@#1a
	cp template.txt /home/$i/Downloads/@1ad
	cp template.txt /home/$i/$documents/@@1d
	cp template.txt /home/$i/$pictures/@1p@
	cp template.txt /home/$i/snap/@1sn
	cp template.txt /home/$i/$videos/@#1a
	cp template.txt /home/$i/$music/@#mu
	cp template.txt /home/$i/$public/@@p
	cp template.txt /home/$i/$templates/@#t
	cp template.txt /boot/@1#3
	cp template.txt /etc/@1#2
	cp template.txt /root/@1#
	cp template.txt /usr/@1#3
	cp template.txt /var/@a5#1 
done


for i in $usuarios; do	
	sudo auditctl -w /home/@#17.txt -p wa -k fab_changes
	echo 'sudo auditctl -w /home/@#17.txt -p wa -k fab_changes' >> audit.sh
	sudo auditctl -w /home/$i/@1#4.txt -p wa -k fab_changes
	echo 'sudo auditctl -w /home/$i/@1#4.txt -p wa -k fab_changes' >> audit.sh
	sudo auditctl -w /home/$i/$desktop/@#1a.txt -p wa -k fab_changes
	echo 'sudo auditctl -w /home/$i/$desktop/@#1a.txt -p wa -k fab_changes' >> audit.sh
	sudo auditctl -w /home/$i/Downloads/@1ad.txt -p wa -k fab_changes
	echo 'sudo auditctl -w /home/$i/Downloads/@1ad.txt -p wa -k fab_changes' >> audit.sh
	sudo auditctl -w /home/$i/$documents/@@1d.txt -p wa -k fab_changes
	echo 'sudo auditctl -w /home/$i/$documents/@@1d.txt -p wa -k fab_changes' >> audit.sh
	sudo auditctl -w /home/$i/$pictures/@1p@.txt -p wa -k fab_changes
	echo 'sudo auditctl -w /home/$i/$pictures/@1p@.txt -p wa -k fab_changes' >> audit.sh
	sudo auditctl -w /home/$i/snap/@1sn.txt -p wa -k fab_changes
	echo 'sudo sudo auditctl -w /home/$i/snap/@1sn.txt -p wa -k fab_changes' >> audit.sh
	sudo auditctl -w /home/$i/$videos/@#1a.txt -p wa -k fab_changes
	echo 'sudo auditctl -w /home/$i/$videos/@#1a.txt -p wa -k fab_changes' >> audit.sh
	sudo auditctl -w /home/$i/$music/@#mu.txt -p wa -k fab_changes
	echo 'sudo auditctl -w /home/$i/$music/@#mu.txt -p wa -k fab_changes' >> audit.sh
	sudo auditctl -w /home/$i/$public/@@p.txt -p wa -k fab_changes
	echo 'sudo auditctl -w /home/$i/$public/@@p.txt -p wa -k fab_changes' >> audit.sh
	sudo auditctl -w /home/$i/$templates/@#t.txt -p wa -k fab_changes
	echo 'sudo auditctl -w /home/$i/$templates/@#t.txt -p wa -k fab_changes' >> audit.sh
done

sudo auditctl -w /boot/@1#3.txt -p wa -k fab_changes
echo 'sudo auditctl -w /boot/@1#3.txt -p wa -k fab_changes' >> audit.sh
sudo auditctl -w /etc/@1#2.txt -p wa -k fab_changes
echo 'sudo auditctl -w /etc/@1#2.txt -p wa -k fab_changes' >> audit.sh
sudo auditctl -w /root/@1#.txt -p wa -k fab_changes
echo 'sudo auditctl -w /root/@1#.txt -p wa -k fab_changes' >> audit.sh
sudo auditctl -w /usr/@1#3.txt -p wa -k fab_changes
echo 'sudo auditctl -w /usr/@1#3.txt -p wa -k fab_changes' >> audit.sh
sudo auditctl -w /var/@a5#1.txt -p wa -k fab_changes
echo 'sudo auditctl -w /var/@a5#1.txt -p wa -k fab_changes' >> audit.sh



mv fab/audit.service /etc/systemd/system
mv fab/backup.service /etc/systemd/system


mv fab/FAB /.FAB
mv fab/pid /.FAB

mv fab/backup.sh /.FAB
mv audit.sh /.FAB


systemctl enable backup.service
systemctl enable audit.service
chmod a+rx /.FAB/FAB
chmod a+rx /.FAB/pid
chmod a+rx /.FAB/backup.sh
chmod a+rx /.FAB/audit.sh

rmdir fab




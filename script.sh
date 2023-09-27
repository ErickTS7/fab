#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install auditd -y
apt-get install git -y
apt install tar gzip build-essential -y

sleep 5

mkdir -p /bkp/backup
mkdir /.FAB
touch /.FAB/logs
touch audit.sh
echo "#!/bin/bash" > audit.sh

git clone https://github.com/ErickTS7/fab 

usuarios=$(cat /etc/passwd | grep -i /home | cut -d: -f1)

for i in $usuarios; do

	if [ -d "/home/$i/Área de Trabalho" ]; then
		desktop="Área de Trabalho"
	else
		desktop="Desktop"
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

sleep 5

unzip fab/template.zip

for i in $usuarios; do
	cp template.txt /home/n1m1.txt 2>/dev/null
	cp template.txt /home/$i/n1m1.txt 2>/dev/null
	cp template.txt /home/$i/$desktop/n1m1.txt 2>/dev/null
	cp template.txt /home/$i/Downloads/n1m1.txt 2>/dev/null
	cp template.txt /home/$i/$documents/n1m1.txt 2>/dev/null
	cp template.txt /home/$i/$pictures/n1m1.txt 2>/dev/null
	cp template.txt /home/$i/snap/n1m1.txt 2>/dev/null
	cp template.txt /home/$i/$videos/n1m1.txt 2>/dev/null
	cp template.txt /home/$i/$music/n1m1.txt 2>/dev/null
	cp template.txt /home/$i/$public/n1m1.txt 2>/dev/null
	cp template.txt /home/$i/$templates/n1m1.txt 2>/dev/null
	cp template.txt /boot/n1m1.txt 2>/dev/null
	cp template.txt /etc/n1m1.txt 2>/dev/null
	cp template.txt /root/n1m1.txt 2>/dev/null
	cp template.txt /usr/n1m1.txt 2>/dev/null
	cp template.txt /var/n1m1.txt 2>/dev/null
done

for i in $usuarios; do
	chmod 777 /home/n1m1.txt
	chmod 777 /home/$i/n1m1.txt
	chmod 777 /home/$i/$desktop/n1m1.txt  
	chmod 777 /home/$i/Downloads/n1m1.txt 
	chmod 777 /home/$i/$documents/n1m1.txt 
	chmod 777 /home/$i/$pictures/n1m1.txt 
	chmod 777 /home/$i/snap/n1m1.txt  
	chmod 777 /home/$i/$videos/n1m1.txt 
	chmod 777 /home/$i/$music/n1m1.txt  
	chmod 777 /home/$i/$public/n1m1.txt 
	chmod 777 /home/$i/$templates/n1m1.txt 
	chmod 777 /boot/n1m1.txt 
	chmod 777 /etc/n1m1.txt 
	chmod 777 /root/n1m1.txt 
	chmod 777 /usr/n1m1.txt 
	chmod 777 /var/n1m1.txt 
done



for i in $usuarios; do	
	sudo auditctl -w /home/n1m1.txt -p wa -k fab_changes 2>/dev/null
	echo "sudo auditctl -w /home/n1m1.txt -p wa -k fab_changes" >> audit.sh
	sudo auditctl -w /home/$i/n1m1.txt -p wa -k fab_changes 2>/dev/null
	echo "sudo auditctl -w /home/$i/n1m1.txt -p wa -k fab_changes" >> audit.sh
	sudo auditctl -w /home/$i/$desktop/n1m1.txt -p wa -k fab_changes 2>/dev/null
	echo "sudo auditctl -w /home/$i/$desktop/n1m1.txt -p wa -k fab_changes" >> audit.sh
	sudo auditctl -w /home/$i/Downloads/n1m1.txt -p wa -k fab_changes 2>/dev/null
	echo "sudo auditctl -w /home/$i/Downloads/n1m1.txt -p wa -k fab_changes" >> audit.sh
	sudo auditctl -w /home/$i/$documents/n1m1.txt-p wa -k fab_changes 2>/dev/null
	echo "sudo auditctl -w /home/$i/$documents/n1m1.txt -p wa -k fab_changes" >> audit.sh
	sudo auditctl -w /home/$i/$pictures/n1m1.txt -p wa -k fab_changes 2>/dev/null
	echo "sudo auditctl -w /home/$i/$pictures/n1m1.txt -p wa -k fab_changes" >> audit.sh
	sudo auditctl -w /home/$i/snap/n1m1.txt -p wa -k fab_changes 2>/dev/null
	echo "sudo sudo auditctl -w /home/$i/snap/n1m1.txt -p wa -k fab_changes" >> audit.sh
	sudo auditctl -w /home/$i/$videos/n1m1.txt -p wa -k fab_changes 2>/dev/null
	echo "sudo auditctl -w /home/$i/$videos/n1m1.txt -p wa -k fab_changes" >> audit.sh
	sudo auditctl -w /home/$i/$music/n1m1.txt -p wa -k fab_changes 2>/dev/null
	echo "sudo auditctl -w /home/$i/$music/n1m1.txt -p wa -k fab_changes" >> audit.sh
	sudo auditctl -w /home/$i/$public/n1m1.txt -p wa -k fab_changes 2>/dev/null
	echo "sudo auditctl -w /home/$i/$public/n1m1.txt -p wa -k fab_changes" >> audit.sh
	sudo auditctl -w /home/$i/$templates/n1m1.txt -p wa -k fab_changes 2>/dev/null
	echo "sudo auditctl -w /home/$i/$templates/n1m1.txt -p wa -k fab_changes" >> audit.sh
done

sudo auditctl -w /boot/n1m1.txt -p wa -k fab_changes
echo 'sudo auditctl -w /boot/n1m1.txt -p wa -k fab_changes' >> audit.sh
sudo auditctl -w /etc/n1m1.txt -p wa -k fab_changes
echo 'sudo auditctl -w /etc/n1m1.txt -p wa -k fab_changes' >> audit.sh
sudo auditctl -w /root/n1m1.txt -p wa -k fab_changes
echo 'sudo auditctl -w /root/n1m1.txt -p wa -k fab_changes' >> audit.sh
sudo auditctl -w /usr/n1m1.txt -p wa -k fab_changes
echo 'sudo auditctl -w /usr/n1m1.txt -p wa -k fab_changes' >> audit.sh
sudo auditctl -w /var/n1m1.txt -p wa -k fab_changes
echo 'sudo auditctl -w /var/n1m1.txt -p wa -k fab_changes' >> audit.sh


mv fab/regra.service /etc/systemd/system

mv fab/FAB /.FAB
mv fab/pid /.FAB
mv fab/regra.sh /.FAB


mv fab/backup.sh /.FAB
mv audit.sh /.FAB


chmod a+x /.FAB/FAB
chmod a+x /.FAB/pid
chmod a+x /.FAB/backup.sh
chmod a+x /.FAB/audit.sh
chmod a+x /.FAB/regra.sh
chmod a+x /etc/systemd/system/regra.service
chmod 777 /.FAB/logs

sleep 1

systemctl daemon-reload

sleep 2

systemctl enable regra.service

rm -rf fab
rm template.txt

systemctl restart regra.service




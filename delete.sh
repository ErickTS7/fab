rm -rf fab
rm -rf /.FAB
systemctl disable backup.service
systemctl disable audit.service
rm -rf /etc/systemd/system/backup.service
rm -rf /etc/systemd/system/backup.service

auditctl -D


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

for i in $usuarios; do
	rm /home/@#17 
	rm /home/$i/@1#4 
	rm /home/$i/$desktop/@#1a 
	rm /home/$i/Downloads/@1ad 
	rm /home/$i/$documents/@@1d 
	rm /home/$i/$pictures/@1p@ 
	rm /home/$i/snap/@1sn 
	rm /home/$i/$videos/@#1a 
	rm /home/$i/$music/@#mu 
	rm /home/$i/$public/@@p 
	rm /home/$i/$templates/@#t 
	rm /boot/@1#3 
	rm /etc/@1#2 
	rm /root/@1# 
	rm /usr/@1#3 
	rm /var/@a5#1  
done


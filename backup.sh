#!/usr/bin/env sh

find /bkp/backup -type f -exec chattr -i {} \;

caminho_arquivos="/home"


caminho_backup="/bkp/backup"

data=$(date "+(%H-%M-%S-)(%d-%m-%Y)")
arquivo_final="backup-$data.tar.gz"

tar -czSpf "$caminho_backup/$arquivo_final" "$caminho_arquivos"

find $caminho_backup -mtime +2 -delete


find /bkp/backup -type f -exec chattr +i {} \;
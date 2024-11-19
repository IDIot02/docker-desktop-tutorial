## tahapan dalam melakukan backup di container
## - matikan contaienr yang menggunakan volume yang ingin kita backup
docker container stop namacontainer
## - buat container baru dengan dua mount, volume yang ingin kita backup dan bind mount folder dari sistem host
docker container create --name nginxbackup --mount "type=bind,source=/home/bishamonten/belajar-docker/backup-container,destination=/backup" --mount "type=volume,source=nginx,destination=/data" nginx:latest
docker container start nginxbackup

## - kemudian untuk mengeksekusi perintah dalam container nginx tersebut gunakan perintah
docker container exec -i -t nginxbackup /bin/bash

## untuk meng-archive file atau folder di linux kta bisa gunakan perintah
tar cvf /backup/backup.tar.gz /data  

docker container stop nginxbackup
docker container rm nginxbackup
docker container start mongovolume

## - lakukan backup dengan cara meng-archive isi volume, dan simpan dalam mount bind folder
## - isi file sekarang ada di folder sistem host
## - delete container yang kita gunakan untuk melakukan backup


## Atau bisa dengan menggunakan perintah run dengan format :
docker container run --rm --name ubuntu --mount "type=bind,source=/home/bishamonten/belajar-docker/backup-container,destination=/backup" --mount "type=volume,source=nginx,destination=/data" nginx:latest tar cvf /backup/backup.tar.gz /data




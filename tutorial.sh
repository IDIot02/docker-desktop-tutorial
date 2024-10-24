cara membuat container 

docker container create --name contohredis redis:latest

setelah dibuat, container harus dijalankan dengan perintah 

docker container ls

ketika sudah tidak dibutuhkan lagi, containernya dapat di hapus, tetapi harus di berhentikan dulu dengan perintah

docker container stop namacontainer

kemudian hapus dengan perintah

docker container rm containerId/namacontainernya


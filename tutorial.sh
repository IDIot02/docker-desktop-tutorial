#cara membuat container 

docker container create --name contohredis redis:latest

#setelah dibuat, container harus dijalankan dengan perintah 

docker container ls

#ketika sudah tidak dibutuhkan lagi, containernya dapat di hapus, tetapi harus di berhentikan dulu dengan perintah

docker container stop namacontainer

#kemudian hapus dengan perintah

docker container rm containerId/namacontainernya

#selanjutnya kita bisa menggunakan perintah exec untuk mengeksekusi command pada container kita dengan perintah

docker container exec -i -t namacontainer /bin/bash
# disini kita akan masuk sebagai root, nanti didalamnya akan seperti menggunakan linux biasanya, dimana 
# kita akan dapat menjalankan perintah tetapi dalam lingkup si docker container yang kita buat tadi
# untuk keluar dari containernya, bisa dengan menggunakan perintah 
    exit


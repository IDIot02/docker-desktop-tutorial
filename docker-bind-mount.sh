# Sekarang kita akan mecoba untuk membuat sebuah container yang akan terhubung(sharing) dengan sistem host
# atau VM/Server/Laptop kita.
# contohnya terdapat sebuah konfigurasi yang kita buat tersendiri dari laptop atau host dockernya
# lalu ingin kita bagikan atau gunakan sebagai konfigurasi container kita, kita dapat menggunakan perintah

docker container create --name namacontainer --mount "type=bind,source=folder,destination=folder,readonly" image:tag

# keterangan
# type = tipe mountnya(bisa bind atau volume)
# source = lokasi file atau folder di sistem host(laptop)
# destinatin = lokasi file atau folder di container
# readonly = untuk membuat file atau folder hanya bisa di realdonly oleh containernya, dan tidak bisa diedit

# -------- praktenya ---------

docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/home/bishamonten/belajar-docker/contoh-mount-docker/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=bien --env MONGO_INITDB_ROOT_PASSWORD=bien mongo:latest
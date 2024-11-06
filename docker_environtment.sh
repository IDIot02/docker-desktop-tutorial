# Contohnya kita menggunakan MongoDB sebagai bahan praktek
# Pertama pull imagenya dari docker hub
docker image pull mongo:latest

docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=bien --env MONGO_INITDB_ROOT_PASSWORD=bien mongo:latest

# keterangannya MONGO_INITDB_ROOT_USERNAME = username yang akan di gunakan
#               MONGO_INITDB_ROOT_PASSWORD = password yang akan digunakan untuk mongoDB nya 
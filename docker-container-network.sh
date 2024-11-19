## Contoh::

docker network create --driver bridge mongonetwork




docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=bien --env MONGO_INITDB_ROOT_PASSWORD=bien mongo:latest

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://bien:bien@mongodb:27017/" mongo-express:latest

docker container start mongodb
docker container start mongodbexpress

## cara menghapus Container dari network

docker network disconnect namanetwork namacontainer

docker network disconnect mongonetwork mongodb

## Cara menambahkan container ke network yang sudah ada

docker network connect namanetwork namacontainer

docker network connect mongonetwork mongodbexpress
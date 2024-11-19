docker volume create mongodata

docker container create --name mongodata --publish 27019:27017 --mount "type=mongodata,source=mongovolume,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=bien --env MONGO_INITDB_ROOT_PASSWORD=bien mongo:latest

docker container stop mongodata

docker volume rm mongodata

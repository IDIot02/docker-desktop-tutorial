## cek network 
docker network ls
## Untuk membuat network di docker
docker network create --driver namadriver namanetwork

## Untuk menghapus network
docker network rm namanetwork


## Network tidak bisa dihapus jika sudah digunakan oleh kontainer. jadi kita harus menghapus containernya dulu dari network


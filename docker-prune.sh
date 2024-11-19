## digunakan untuk menghapus resource yang sudah tidak digunakan lagi di docker 
## Fitur pembersihan otomatis ini disebut Prune 
## Hampir di semua perintah di docker mendukung prune

## contohnya untuk menghapus semua container yang sudah tidak digunakan bisa menggunakan perintah 
docker container prune 
## contohnya untuk menghapus semua image yang sudah tidak digunakan bisa menggunakan perintah 
docker image prune
## contohnya untuk menghapus semua volume yang sudah tidak digunakan bisa menggunakan perintah 
docker volume prune
## contohnya untuk menghapus semua network yang sudah tidak digunakan bisa menggunakan perintah 
docker network prune

## atau bisa menggunakan satu perintah untuk membersihkan semua resource yang tidak digunakan lagi dengan perintah
docker system prune



# Contohnya kita buat sebuah webserver nginx sebagai contohnya


docker container create --name smallnginx --memory 100m --cpus 1 --publish 8081:80 nginx:latest

# untuk parameter --memory menggunakan satuan b(bytes); m(megabytes); g(giga); 
# untuk parameter --cpus ini dapat menggunakan satuan desimal juga, contohnya
# kita akan memberikan resource cpu nya sebanyak 1.5 core, maka containernya hanya akan 
# menggunakan paling banyak 1.5 dari core yang sudah di distribusikan
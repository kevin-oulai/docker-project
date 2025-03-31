docker-compose up -d
docker cp laravel_src/test/ webserver:/usr/app/
docker cp angular_src/dist/angu-cd/browser/ webserver:/usr/app/angular/

docker exec -it webserver chmod 777 -R "//usr/app/test/storage"
docker exec -it webserver chmod 777 -R "//usr/app/test/bootstrap/cache"
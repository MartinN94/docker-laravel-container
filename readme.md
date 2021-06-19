# _Docker Container for local Laravel 8 development_ 


## Installed

| Service | Version |
| ------ | ------ |
| PHP | v8.0.7 |
| Nginx | v1.20.1 (alpine-stable-image) |
| MySQL | v8.0.25 (latest-mysql8-official-image) |
| Composer | v.2.1.3 (latest-official-image) |
| Npm | v7.15.1 (alpine-stable-image) |
| PHPMyAdmin | v5.1.1  |

## Requirements

- [Ubuntu 20.04](https://releases.ubuntu.com/20.04/)
- [Docker engine](https://docs.docker.com/engine/install/)
- [Docker compose](https://docs.docker.com/compose/install/)

## Installation

```sh
1. git clone repo
2. cd repo
3. docker-compose up -d --build
4. open localhost:8100 && 8101 in browser and check for welcome screen && phpmyadmin
5. rm -rf src/public
6. docker-compose run --rm composer create-project laravel/laravel .
7. docker-compose exec php chown -R www-data:www-data /var/www/html/storage
8. docker-compose exec php chown -R www-data:www-data /var/www/html/bootstrap/cache
```
## Usage

| Operation | Command |
| ------ | ------ |
| Container UP | `docker-compose up -d` |
| Container DOWN | `docker-compose down` |
| Composer | `docker-compose run --rm composer` |
| Npm | `docker-compose run --rm npm` |
| PHP Artisan | `docker-compose run --rm artisan` |
(You can make aliases for this commands in ~/.bashrc)

## Access

APP
```sh
http://localhost:8100
```
PHPMyAdmin Client
```sh
http://localhost:8101
```
> Note: If the ports interfere with your excisting ports change the docker-compose.yml and nginx/default.conf files, build and access the container with the newly added ports.
### Requirements
 - docker 1.12
 - docker-compose 1.18

#### Install
```
clone this repo
cd <dir>
rename env-example to .env
update at least APP_DIR
```

```
docker-compose build
docker-compose up -d
```

##### On first run do
```
docker exec magento2docker_php-fpm_1 bash -c '/tmp/download.sh'
docker exec magento2docker_php-fpm_1 bash -c '/tmp/composer.sh'
docker exec magento2docker_php-fpm_1 bash -c '/tmp/install.sh'
```

if you receive a message like: ` Error: No such container ` run

```
docker ps

... NAMES
... magento2phpfpmnginx_nginx_1
... magento2phpfpmnginx_php-fpm_1
... magento2phpfpmnginx_mariadb_1

```

and replace magento2docker_php-fpm_1 with "NAME" that contain php-fpm

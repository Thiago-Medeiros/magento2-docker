### Requirements
 - docker 1.12
 - docker-compose 1.18

#### Install
```
clone this repo
cd <dir>
cp env-example .env
```

update at least APP_DIR

##### Running
```
docker-compose up --build -d
```

##### On first run do
```
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

##### URL and Users
backend: <DOCKER_IP>/admin

frontend: <DOCKER_IP>

admin user: admin

admin pass: admin123

##### Running commands inside image

```
docker exec magento2docker_php-fpm_1 bash -c 'COMMAND'
```

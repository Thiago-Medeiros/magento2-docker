### Requirements
 - docker 1.12
 - docker-compose 1.18

#### Installing
```
clone this repo
cd <dir>
cp env-example .env
```

update APP_DIR value in .env file

ex: APP_DIR=<YOUR_DIRECTORY> into APP_DIR=/my/project/directory


##### On first run
```
docker-compose up --build -d
```

before the next step make sure the mysql image is `ready for connections`, you can check this doing `docker logs magento2phpfpmnginx_mariadb_1`

```
docker exec magento2docker_php-fpm_1 bash -c '/tmp/install.sh'
```

if you receive a message like ` Error: No such container ` run

```
docker ps

... NAMES
... magento2phpfpmnginx_nginx_1
... magento2phpfpmnginx_php-fpm_1
... magento2phpfpmnginx_mariadb_1

```

and replace magento2docker_php-fpm_1 with "NAME" that contain php-fpm

##### Running
```
docker-compose up -d
```

##### Accessing you project
backend: <DOCKER_IP>/admin

frontend: <DOCKER_IP>

admin user: admin

admin pass: admin123

##### Running commands inside container

```
docker exec magento2docker_php-fpm_1 bash -c 'COMMAND'
```

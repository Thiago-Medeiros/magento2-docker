shopt -s dotglob
curl -sL https://github.com/magento/magento2/archive/${MAGENTO_VERSION}.tar.gz | tar -zxvf - -C /tmp/
mv /tmp/magento2-${MAGENTO_VERSION}/* /var/www
rm -rf /tmp/magento2-${MAGENTO_VERSION}
shopt -u dotglob

composer install -d=/var/www

php bin/magento setup:install --base-url=http://localhost/ \
    --db-host=database --db-name=default --db-user=root --db-password=root \
    --admin-firstname=Magento --admin-lastname=Admin --admin-email=user@example.com \
    --admin-user=admin --admin-password=admin123 --language=pt_BR --session-save=db \
    --currency=BRL --timezone=America/Sao_Paulo --use-rewrites=1 --backend-frontname=admin
php bin/magento deploy:mode:set developer

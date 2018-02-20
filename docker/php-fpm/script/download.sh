shopt -s dotglob
curl -sL https://github.com/magento/magento2/archive/${MAGENTO_VERSION}.tar.gz | tar -zxvf - -C /tmp/
mv /tmp/magento2-${MAGENTO_VERSION}/* /var/www
rm -rf /tmp/magento2-${MAGENTO_VERSION}
shopt -u dotglob
MAGENTO=$1
: ${MAGENTO:="2.1.10"}
curl -sL https://github.com/magento/magento2/archive/$MAGENTO.tar.gz | tar -zxvf - -C /tmp/ && \
    mv /tmp/magento2-$MAGENTO/.[!.] /var/www && \
    rm -rf /tmp/magento2-$MAGENTO
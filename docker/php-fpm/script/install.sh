php bin/magento setup:install --base-url=http://localhost/ \
    --db-host=mariadb --db-name=default --db-user=root --db-password=root \
    --admin-firstname=Magento --admin-lastname=Admin --admin-email=user@example.com \
    --admin-user=admin --admin-password=admin123 --language=pt_BR --session-save=db \
    --currency=BRL --timezone=America/Sao_Paulo --use-rewrites=1 --backend-frontname=admin
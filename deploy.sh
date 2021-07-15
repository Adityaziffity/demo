git clone https://github.com/Adityaziffity/demo.git demo
mv demo/magento .
rm -rf demo
chmod -R 755 magento
chown -R www-data:www-data magento/
cd magento/
chmod -R 777 var pub generated app  
WANIP=$(curl ifconfig.me)
php bin/magento setup:install --base-url=http://$WANIP/ --db-host=localhost --db-name=magento --db-user=magento --db-password=magento123 --admin-firstname=test --admin-lastname=test --admin-email=test@example.com --admin-user=admin --admin-password=admin123 --language=en_US --currency=USD --timezone=America/Chicago --use-rewrites=1 --search-engine=elasticsearch7 --elasticsearch-host=localhost --elasticsearch-port=9200
php bin/magento deploy:mode:set developer
php bin/magento se:up && bin/magento se:d:c && bin/magento c:c
php bin/magento indexer:reindex
chmod -R 777 var/
chmod -R 777 app/
chmod -R 777 pub/
chmod -R 777 vendor/
chmod -R 777 generated/
echo "completed"

echo "done"

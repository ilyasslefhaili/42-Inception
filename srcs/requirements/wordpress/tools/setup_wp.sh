sleep 10
cd wordpress && wp core install --url=ilefhail.42.fr --title=wb --admin_name=ilyass --admin_password=ilyass1234 --admin_email=ilyasslefhaili15@gmail.com --allow-root && wp user create youssef youssef@gmail.com --user_pass=youssef1234  --role=author --allow-root
wp plugin install redis-cache --activate --allow-root
wp redis enable --allow-root
exec $@

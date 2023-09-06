[VHOST_USER]
listen = /var/www/php-fpm/VHOST_USER.sock
listen.owner = apache
listen.group = apache
listen.mode = 0660
user = VHOST_USER
group = VHOST_USER
pm = dynamic
pm.max_children = 10
pm.start_servers = 2
pm.min_spare_servers = 2
pm.max_spare_servers = 5
pm.max_requests = 1000
slowlog = VHOST_HOME/log/php-fpm-slow.log
php_admin_value[error_log] = VHOST_HOME/log/php-error.log
php_admin_flag[log_errors] = on
php_value[session.save_handler] = files
php_value[session.save_path] = VHOST_HOME/session

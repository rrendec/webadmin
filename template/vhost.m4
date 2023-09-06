<VirtualHost *:80>
    ServerName VHOST_NAME
    ErrorLog VHOST_ROOT/logs/error_log
    CustomLog VHOST_ROOT/logs/access_log combined
    DocumentRoot VHOST_ROOT/htdocs
    ServerAdmin SERVER_ADMIN

    # Enable php engine
    <FilesMatch \.php$>
        SetHandler "proxy:unix:/var/www/php-fpm/VHOST_USER.sock|fcgi://localhost/"
    </FilesMatch>

    DirectoryIndex index.html index.htm index.php
    AddDefaultCharset off

    <Directory VHOST_ROOT/htdocs>
        AllowOverride FileInfo
    </Directory>
</VirtualHost>

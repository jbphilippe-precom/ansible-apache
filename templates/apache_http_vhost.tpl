<VirtualHost localhost:80>
        ServerName default
        RedirectMatch 301 ^.*$ http://127.0.0.1/
</VirtualHost>

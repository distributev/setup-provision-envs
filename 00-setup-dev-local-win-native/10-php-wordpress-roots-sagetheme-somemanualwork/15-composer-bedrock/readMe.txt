0. Troubleshooting - if you have a very long project path the command composer create-project roots/bedrock your-project-folder-name might fail with a wordpress core install error message - the solution is to make the project folder path shorter

1. Install bedrock - https://github.com/roots/bedrock

2. Using phpmyadmin create an empy database like wordpress_bedrock

Update environment variables in .env file with something similar with

DB_NAME=wordpress_bedrock

DB_USER=root

DB_PASSWORD=



WP_HOME=http://bedrocktest.local


3. Add theme(s) in web/app/themes as you would for a normal WordPress site - 

use a theme from https://themeawesome.com  ( https://github.com/ThemeAwesome ) 

4. Set your site vhost document root to C:/Full_Path_Where_Bedrock_Project_Was_Created/web

update apache's conf/extra/httpd-vhosts.conf with something similar with 

<VirtualHost *:80>
    DocumentRoot "C:/Full_Path_Where_Bedrock_Project_Was_Created/web"
    ServerName bedrocktest.local
</VirtualHost>

5. update apache's conf/httpd.conf with something similar with 

<Directory C:/Full_Path_Where_Bedrock_Project_Was_Created/web>
  Require all granted
</Directory>

read https://stackoverflow.com/questions/10351167/apache-client-denied-by-server-configuration for more details

6. Update Windows hosts file Open Windows Explorer and navigate to “C:\Windows\System32\drivers\etc” Right click the “hosts” file and select “Open with”

add something similar with

127.0.0.1               bedrocktest.local

7. Access WP admin at http://bedrocktest.local/wp/wp-admin

8. Troubleshooting - if you have a very long project path the command composer create-project roots/bedrock your-project-folder-name might fail with a wordpress core install error message - the solution is to make the project folder path shorter

1. Install Themosis framework - https://framework.themosis.com/docs/1.3/installation/

2. Update ./config/environment.php replace 

'local' => 'INSERT-HOSTNAME' 

with name of your PC i.e. 

'local' => 'virgil-PC'

3. Using phpmyadmin create an empy database like wordpress_themosis

Update environment variables in .env.local file with something similar with

DB_NAME = "wordpress_themosis"

DB_USER = "root"

DB_PASSWORD = ""



WP_HOME = "http://themosistest.local"

WP_SITEURL = "http://themosistest.local/cms"

4. Set your site vhost document root to C:/Full_Path_Where_Themosis_Project_Was_Created/htdocs

update apache's conf/extra/httpd-vhosts.conf with something similar with 

<VirtualHost *:80>
    DocumentRoot "C:/Full_Path_Where_Themosis_Project_Was_Created/htdocs"
    ServerName themosistest.local
</VirtualHost>

5. update apache's conf/httpd.conf with something similar with 

<Directory C:/Full_Path_Where_Themosis_Project_Was_Created/htdocs>
  Require all granted
</Directory>

read https://stackoverflow.com/questions/10351167/apache-client-denied-by-server-configuration for more details

6. Update Windows hosts file Open Windows Explorer and navigate to “C:\Windows\System32\drivers\etc” Right click the “hosts” file and select “Open with”

add something similar with

127.0.0.1               themosistest.local

7. Access WP admin at http://themosistest.local

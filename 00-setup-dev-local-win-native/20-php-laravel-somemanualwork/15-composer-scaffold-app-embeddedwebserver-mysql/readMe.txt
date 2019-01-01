1. Install Laravel - https://laravel.com/docs/5.6/installation

composer global require "laravel/installer"

2. Scaffold the application

laravel new blog

3. Using phpmyadmin create an empy database called like 

laravel

Update environment variables in .env file with something similar with

DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=

4. Run migrations (and see the database connection working fine)

php artisan migrate

5. Start the embedded server - the app will be available at http://localhost:8000

php artisan serve

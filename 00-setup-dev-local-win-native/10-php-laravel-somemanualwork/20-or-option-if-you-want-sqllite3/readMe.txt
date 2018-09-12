1. Create an empty file 

./database/database.sqlite

2. Update .env file with

DB_CONNECTION=sqlite

DB_DATABASE=C:/Full_Path_To_Project_Dir/blog/database/database.sqlite


3. Enable sqllite in php.ini

uncomment

;extension=pdo_sqlite
;extension=sqlite3

like this

extension=pdo_sqlite
extension=sqlite3

4. Run migrations (and see the sqlite3 database working fine)

php artisan migrate

5. Start the embedded server - the app will be available at http://localhost:8000

php artisan serve

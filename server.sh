# Maak de hoofddirectory aan
mkdir -p /var/www/html/testdir

# Directories gebaseerd op veelvoorkomende namen in woordenlijsten
mkdir -p /var/www/html/testdir/admin
mkdir -p /var/www/html/testdir/login
mkdir -p /var/www/html/testdir/backup
mkdir -p /var/www/html/testdir/images
mkdir -p /var/www/html/testdir/css
mkdir -p /var/www/html/testdir/js
mkdir -p /var/www/html/testdir/uploads
mkdir -p /var/www/html/testdir/download
mkdir -p /var/www/html/testdir/private
mkdir -p /var/www/html/testdir/config
mkdir -p /var/www/html/testdir/temp
mkdir -p /var/www/html/testdir/logs
mkdir -p /var/www/html/testdir/search

# Voeg bestanden toe in de directories
echo "Admin page" > /var/www/html/testdir/admin/index.html
echo "Login page" > /var/www/html/testdir/login/index.html
echo "Backup file" > /var/www/html/testdir/backup/backup.zip
echo "Image file" > /var/www/html/testdir/images/logo.png
echo "CSS file" > /var/www/html/testdir/css/style.css
echo "JS file" > /var/www/html/testdir/js/app.js
echo "Uploads file" > /var/www/html/testdir/uploads/upload.txt
echo "Download file" > /var/www/html/testdir/download/file.pdf
echo "Private file" > /var/www/html/testdir/private/secret.txt
echo "Config file" > /var/www/html/testdir/config/config.php
echo "Temporary file" > /var/www/html/testdir/temp/tempfile.tmp
echo "Log file" > /var/www/html/testdir/logs/access.log
echo "Search results" > /var/www/html/testdir/search/results.html

# Verborgen directories en bestanden die voorkomen in SecLists
mkdir -p /var/www/html/testdir/.git
mkdir -p /var/www/html/testdir/.svn
mkdir -p /var/www/html/testdir/.htaccess
echo "Git config" > /var/www/html/testdir/.git/config
echo "SVN config" > /var/www/html/testdir/.svn/entries
echo "Access rules" > /var/www/html/testdir/.htaccess

# Voeg subdirectories toe voor extra complexiteit
mkdir -p /var/www/html/testdir/backup/2024
mkdir -p /var/www/html/testdir/backup/old
mkdir -p /var/www/html/testdir/config/db
mkdir -p /var/www/html/testdir/config/api
echo "Database config" > /var/www/html/testdir/config/db/dbconfig.json
echo "API config" > /var/www/html/testdir/config/api/apikeys.json
echo "Old backup" > /var/www/html/testdir/backup/old/backup2023.zip

# Voeg bestanden met algemene extensies toe
touch /var/www/html/testdir/index.html
touch /var/www/html/testdir/robots.txt
touch /var/www/html/testdir/sitemap.xml
touch /var/www/html/testdir/favicon.ico

# Start de webserver
sudo service apache2 start

# Controleer of de webserver draait
sudo service apache2 status

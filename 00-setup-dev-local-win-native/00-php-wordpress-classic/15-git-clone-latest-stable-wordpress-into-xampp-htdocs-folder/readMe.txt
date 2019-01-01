0. Browse to XAMPP_Installation_Folder/htdocs and create a folder
named as your website (i.e. testsite)

1. Right click on testsite folder and run Git Bash (DOS cmd prompt or PowerShell will not work)

run following two commands to fetch latest stable WordPress from github

this will fetch master branch

git clone git://github.com/WordPress/WordPress.git .

this will checkout latest stable

git checkout $(git describe --tags $(git rev-list --tags --max-count=1))

https://stackoverflow.com/questions/13435095/how-to-clone-the-latest-stable-branch-to-a-dir-via-github

-----------

Read also

https://themeisle.com/blog/install-xampp-and-wordpress-locally/
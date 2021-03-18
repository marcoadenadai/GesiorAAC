#/bin/sh

read -p "This Script will delete everything inside /var/www/html/ . Are you sure? (y/n)" CONT
if [ "$CONT" = "y" ]; then
  rm -r /var/www/html/*
  cp -r * /var/www/html
  rm /var/www/html/${0##*/}
  chown -R www-data:www-data /var/www/html
  chmod -R 755 /var/www/html
else
  echo "Ok goodbye!";
fi

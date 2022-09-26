#!/bin/bash

sed -i "s/dbhost = \"localhost\"/dbhost = \"$HOST\"/g" appli/conf.php
sed -i "s/dbuser = \"ccmuser\"/dbuser = \"$USER\"/g" appli/conf.php
sed -i "s/dbpass = \"ccmpass\"/dbpass = \"$PASS\"/g" appli/conf.php
sed -i "s/dbname = \"ccmbase\"/dbname = \"$NAME\"/g" appli/conf.php

php ./appli/createbase.php
php ./appli/server.php

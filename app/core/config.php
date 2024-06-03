<?php
/*
Explanation:

This file defines constants for the application name and description.
It sets database configuration constants based on the server environment (localhost or production).
The root path is defined to facilitate URL generation.
*/
//app info
define('APPNAME', 'Udemy');
define('APPDESC', 'Free and paid tutorials');

//database config
if ($_SERVER['SERVER_NAME'] == 'localhost') {
    define('DBHOST', 'localhost');
    define('DBNAME', 'udemy_db');
    define('DBUSER', 'root');
    define('DBPASS', '');
    define('DBDRIVER', 'mysql');

    //root path e.g localhost/
    define('ROOT', 'http://localhost/udemy/public');
} else {
    define('DBHOST', 'localhost');
    define('DBNAME', 'udemy_db');
    define('DBUSER', 'root');
    define('DBPASS', '');
    define('DBDRIVER', 'mysql');

    //root path e.g https://www.mywebsite.com
    define('ROOT', 'https://');
}

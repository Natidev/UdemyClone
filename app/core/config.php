<?php
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

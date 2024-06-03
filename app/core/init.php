<?php
/*
Explanation:

Registers an autoloader function to automatically include model classes when they are instantiated.
Includes essential core files for configuration, functions, database operations, the base model, controller, and the main application class.
*/

spl_autoload_register(function($class_name){
    require "../app/models/".$class_name.".php";
});

require "config.php";
require "functions.php";
require "database.php";
require "model.php";
require "controller.php";
require "app.php";
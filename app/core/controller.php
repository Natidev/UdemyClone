<?php

class Controller{
/*
Explanation:

This base controller class provides a method to load views.
The view method takes the view name and an optional data array.
It extracts the data array into variables and includes the view file if it exists. If not, it outputs an error message.
*/
    function view($view, $data = []){
        extract($data);
        $filename = "../app/views/".$view."view.php";
        if(file_exists($filename)){
            require  $filename;
        }
        else{
            echo "could not find view file: ". $filename;
        }
    }
}
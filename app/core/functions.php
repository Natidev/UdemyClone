<?php
/*
Explanation:

show: Prints arrays or objects in a readable format.
set_value: Returns the value of a POST variable or an empty string if it doesn’t exist.
redirect: Redirects to a specified URL and terminates the script.
message: Manages session messages. Sets a message if provided, retrieves and optionally erases it from the session.
*/
function show($stuff){
    echo "<pre>";
    print_r($stuff);
    echo "</pre>";
}

function set_value($key){
    if(!empty($_POST[$key])){
        return $_POST[$key];
    }
    return '';
}

function redirect($link){
    header("Location: ". ROOT."/".$link);
    die;
}
function message($msg = '', $erase = false){
    if(!empty($msg)){
        $_SESSION['message'] = $msg;
    }else{
        if(!empty($_SESSION['message'])){

            $msg = $_SESSION['message'];
            if($erase){
                unset($_SESSION['message']);
            }
           
            return $msg;
        }
    }
    return false;
}
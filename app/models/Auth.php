<?php
/*
Explanation:

authenticate($row): Stores user data in the session if $row is an object, essentially logging in the user.
logout(): Removes user data from the session, effectively logging out the user.
logged_in(): Checks if a user is currently logged in by verifying if USER_DATA exists in the session.
is_admin(): Checks if the logged-in user has an admin role.
__callStatic($funcname, $arg2): Magic method that allows dynamic static calls to get user properties from the session. For example, Auth::getEmail() returns the logged-in user's email.
*/
class Auth{
    public static function authenticate($row){
        if(is_object($row)){
            $_SESSION['USER_DATA'] =$row;
        }
    }
    public static function logout(){
        if(!empty( $_SESSION['USER_DATA'])){
            unset($_SESSION['USER_DATA']);
           // session_unset();
           // session_regenerate_id();
        }
    }
    public static function logged_in(){
        if(!empty($_SESSION['USER_DATA'])){
            return true;
        }
        return false;
    }
    public static function is_admin(){
        if(!empty($_SESSION['USER_DATA'])){
            if($_SESSION['USER_DATA']->role == 'admin'){
                return true;
            }
        }
        return false;
    }
    public static function __callStatic($funcname, $arg2)
    {
        $key = str_replace("get","",strtolower($funcname));
        if(!empty($_SESSION['USER_DATA']->$key)){
            return $_SESSION['USER_DATA']->$key;
        }
        return ''; 
    }
}
<?php

class User{
    public $errors= [];
    protected $table = "users";

    protected $allowedCols = [
        'email',
        'password',
        'firstname',
        'lastname',
        'role',
        'date',
    ];
    public function validate($data){
        $this->errors =[];
        if(empty($data['firstname'])){
            $this->errors['firstname'] = "first name is required";
        }
        if(empty($data['lastname'])){
            $this->errors['lastname'] = "last name is required";
        }
        if(empty($data['email'])){
            $this->errors['email'] = "email is required";
        }
        if(empty($data['password'])){
            $this->errors['password'] = "password is required";
        }
        if($data['password']!== $data['retype_password']){
            $this->errors['password'] = "passwords do not match";
        }
        if(empty($data['terms'])){
            $this->errors['terms'] = "You must accept the terms and conditions";
        }
        if(empty($this->errors)){
            return true;
        }
        return false;
    }
    public function insert($data){
        if(!empty($this->allowedCols)){
            foreach($data as $key => $value){
                if(!in_array($key, $this->allowedCols)){
                    unset($data[$key]);
                }
            }
        }
        $keys = array_keys($data);
        $query = "insert into users";
        $query .="(".implode(",", $keys).") values (:".implode(",:" ,$keys). ")";
        
        $db = new Database();
        $db->query($query, $data);
    }
}
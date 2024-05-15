<?php

class User extends Model{
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
        // check email
       
        if(!filter_var($data['email'], FILTER_VALIDATE_EMAIL)){
            $this->errors['email'] = "email is not valid";
        }else
        if($this->where(['email'=>$data['email']])){
            $this->errors['email'] = "Email already exists";
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
    
}
<?php

class Login extends Controller
{
    public function index()
    {
        $data['errors'] = [];
        $data['title'] = "login";
        $user = new User();
        if($_SERVER['REQUEST_METHOD'] == "POST"){
            //validate
            $row = $user->first([
                'email' => $_POST['email'],

            ]); 
            if($row){
                if(password_verify($_POST['password'],$row->password)){
                    //authenticate
                   
                    Auth::authenticate($row);
                    redirect('home');
                }
            }
            $data['errors']['email'] = "Wrong email or password";
            
        }
        $this->view('login', $data);
    }
    public function edit()
    {
        echo "login edit";
    }
    public function delete()
    {
        echo "login delete";
    }
}

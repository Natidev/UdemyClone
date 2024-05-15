<?php

class Signup extends Controller
{
    public function index()
    {
        $data['errors'] = [];
        $user = new User();

        if($_SERVER['REQUEST_METHOD'] == "POST"){
            $result = $user->validate($_POST);
            if ($result) {
                $_POST['date'] = date('Y-m-d H:i:s');
                $_POST['role'] = 'user';
                $_POST['password'] = password_hash($_POST['password'], PASSWORD_DEFAULT);
                $user->insert($_POST);
                message("Your profile was successfully created. Please login");
                redirect('login'); 
            }
        }
        // show($_POST);

       // show($user->errors);
        $data['errors'] = $user->errors;
        $data['title'] = "signup";
        $this->view('signup', $data);
    }
    public function edit()
    {
        echo "home edit";
    }
    public function delete()
    {
        echo "home delete";
    }
}

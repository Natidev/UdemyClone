<?php

class Signup extends Controller
{
    public function index()
    {
        $user = new User();
        $result = $user->validate($_POST);
        if ($result) {
            $_POST['date'] = date('Y-m-d H:i:s');
            $user->insert($_POST);
        }

        // show($_POST);
        // show($user->errors);
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

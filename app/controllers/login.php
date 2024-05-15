<?php

class Login extends Controller
{
    public function index()
    {
        $data['title'] = "login";
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

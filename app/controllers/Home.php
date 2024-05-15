<?php

class Home extends Controller 
{
    public function index(){
        $db = new Database();
        $db->create_tables();
        $data['title'] = "Home";
        $this->view('home', $data);
    }
    public function edit(){
        echo "home edit";
    }
    public function delete(){
        echo "home delete";
    }
}

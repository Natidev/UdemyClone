<?php

class Admin extends Controller {
    public function index(){
        $data['title'] = "Admin";
        $this->view('admin', $data);
        $this->view('admin/dashboard',$data);
    }
}
<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        session()->start();
        return view('home');
    }
}

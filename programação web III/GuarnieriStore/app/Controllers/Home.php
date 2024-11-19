<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index(): string
    {
        session()->start();
        return view('Home');
    }
}

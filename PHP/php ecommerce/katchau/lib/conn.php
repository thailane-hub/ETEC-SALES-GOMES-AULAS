<?php

const DBDRIVE = 'mysql';
const DBHOST = 'localhost';
const DBNAME =  'katchau';
const DBUSER = 'root';
const DBPASSWORD = '';

$conn = new PDO(DBDRIVE.':hostname='.DBHOST.';dbname='.DBNAME,DBUSER, DBPASSWORD);

?>
<?php

const DBDRIVE = 'mysql'; /*é o sgbd sistema de gerenciador de banco de dados*/
const DBHOST = 'localhost';
const DBNAME = 'katchau';
const DBUSER = 'root';
const DBPASSWORD = ''; /*não deixar espaço se não dar erro*/

$conn = new PDO(DBDRIVE.':hostname='.DBHOST.';dbname='.DBNAME,DBUSER,DBPASSWORD);

?>

<meta http-equiv="refresh" content="0; url=http://example.com">
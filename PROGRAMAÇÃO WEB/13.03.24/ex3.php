
<?php

$var = false;

if($var){
    // if($var == true) é igual  if($var)
    // if($var == false) é igual  if(!$var)
    $x = 1;
    $y = 5;
    $p = 7;
    $t = 8;
    $u = 10;
    $soma = $x+$y+$p+$t+$u;
    echo "a soma é $soma ";

}
else{
    $x = 1;
    $y = 5;
    $p = 7;
    $t = 8;
    $u = 10;
    $media = (($x+$y+$p+$t+$u)/5);
    echo "a média é $media ";
}
?>
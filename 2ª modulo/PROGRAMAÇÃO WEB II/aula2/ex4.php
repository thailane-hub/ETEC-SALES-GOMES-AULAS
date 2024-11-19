<?php

$nome = array();
$nome[] = "Thailane";
$nome[] =  "Rodrigo";
$nome[] = "Alan";
$nome[] = "Giovanna";
$nome[] = "Felipe";

$nota1 = array(5,10,8,9,10);
$nota2 = array(7,8,5,9,6);
$nota3 = array(4,5,8,7,6);

$qtdAlunos = count($nome);

for($i=0; $i < $qtdAlunos; $i++){
    $media = number_format(($nota1[$i]+$nota2[$i]+$nota3[$i]) /3, 2, '.', "");
    echo "$nome[$i] 1ª nota: $nota1[$i]  / 2ª nota: $nota2[$i] / 3ª nota: $nota3[$i]/ A média é $media</br> ";
}


?>
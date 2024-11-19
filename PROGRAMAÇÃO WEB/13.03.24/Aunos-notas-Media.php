<?php

$nomes = array ("Rodrigo","Fabiana","Jessica","Ricardo","Eliceia","Daniela","Vania","Vanessa","Wilton","Tania");
$notas1 = array (10,5,10,9,6,7,8,9,10,7);
$notas2 = array (8,7,9,10,7,7,9,10,7,9);
$notas3 = array (10,10,9,8,10,6,7,9,9,7);


// function media($notas1,$notas2,$notas3){
//     $r = ($notas1+$notas2+$notas3)/3;
//     return $r;
// }

    // for($i=0; $i<10; $i++){
    // }
    
    
    for($i=0; $i<10; $i++){
    $media[$i] = ($notas1[$i]+$notas2[$i]+$notas3[$i])/3;

    // echo  "Nota1: $notas1[$i] - Nota2: $notas2[$i] - Nota3: $notas3[$i] = ". round($media[$i],2)."</br>";
    }

    // }
    
    for($i=0; $i<10; $i++){
        echo "Aluno(a): ".$nomes[$i]." - "."Nota 1: ".$notas1[$i]." - "."Nota 2: ".$notas2[$i]." - "."Nota 3: ".$notas3[$i]." - "."A média é: ".round($media[$i],2)."</br>";
    }


?>
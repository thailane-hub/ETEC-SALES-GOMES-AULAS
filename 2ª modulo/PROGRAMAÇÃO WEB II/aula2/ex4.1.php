<?php

    $nomes = array("Alan", "Rodrigo", "Thailane", "Giovanna", "Kerolaine", "Xequira", "Xerovane", "Xerolaine", "Julia", "Leony");
    $notas1 = array(8, 10, 6, 7, 8, 5, 4, 6, 7, 8);
    $notas2 = array(5, 9, 2, 10, 6, 4, 8, 5, 3, 1);
    $notas3 = array(10, 5, 9, 10, 5, 4, 7, 8, 2, 10);

    $qtdAlunos = count($nomes);

    for ($i=0; $i < $qtdAlunos; $i++) {
        $media = ($notas1[$i] + $notas2[$i] + $notas3[$i]) / 3;
        echo "<h1>$nomes[$i]</h1> <h3>1ª Nota: $notas1[$i], 2ª Nota: $notas2[$i], 3ª Nota: $notas3[$i] - Média: $media </br></br></h3>";
    }

?>
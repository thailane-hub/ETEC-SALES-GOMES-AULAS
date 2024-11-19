<!-- 1 - Criar um arquivo PHP chamado ex1.php que receba 3 valores inteiros por parâmetro GET, na sequência exibir para o usuário qual é o maior valor.
-->

<?php



function calcular($a,$b,$c){
    
    if($a > $b && $a > $b){
        echo $a;
    };
    
    if($b > $a && $b > $c){
        echo $b;
    };
    
    if($c > $a && $c > $b){
        echo $c;
    };
    
    
}

$a = $_GET['a'];
$b = $_GET['b'];
$c = $_GET['c'];

calcular($a,$b,$c);

    ?>
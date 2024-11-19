<?php

    $valor1 = $_GET["v1"];
    $valor2 = $_GET["v2"];
    $opcao  = $_GET["op"];


    if($opcao == ""){
        echo "Erro de Requisição";
    }

    if($opcao == 1){
        function areaTriangulo($b,$a){
            $r = ($b*$a)/2;
            echo $r;
        }
        areaTriangulo($valor1,$valor2);
    }

    if($opcao == 2){
        function maiorValor($b,$a){
            if($a>$b){
                echo $a;
            }
            else{
                echo $b;
            }
        }
        maiorValor($valor1,$valor2);
    }

    if($opcao == 3){
        function menorValor($b,$a){
            if($a<$b){
                echo $a;
            }
            else{
                echo $b;
            }
        }
        menorValor($valor1,$valor2);
    }

    if($opcao == 4){
        function soma($a,$b){
            $r = $a + $b;
            echo $r;
        }
        soma($valor1,$valor2);
    }

    if($opcao == 5){
        function subtracao($a,$b){
            $r = $a - $b;
            echo $r;
        }
        subtracao($valor1,$valor2);
    }

    if($opcao == 6){
        function contador($a,$b){
            for($i = $a; $i <= $b; $i++){
                echo " ".$i;
            }
        }
        contador($valor1,$valor2);
    }

    if($opcao == 7){
        function retangulo($a,$b){
            $r = $a * $b;
            echo $r;
        }
        retangulo($valor1,$valor2);
    }

?>
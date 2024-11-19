
<?php

$funcionario = array();
$funcionario ["Rodrigo"] = 4050;
$funcionario ["Fabiana"] = 1700;
$funcionario ["Conceição"] = 1950;
$funcionario ["Marli"] = 2100;
$funcionario ["Daniela"] = 3100;
$funcionario ["Eliceia"] = 4500;
$funcionario ["Ana Cristina"] = 5000;
$funcionario ["Jessica"] = 2300;
$funcionario ["Ricardo"] = 3000;
$funcionario ["Ana Flavia"] = 6000;
$funcionario ["Carol"] = 5500;
$funcionario ["Roseli"] = 1800;
$funcionario ["Bruna"] = 3500;
$funcionario ["Wilton"] = 15000;
$funcionario ["Camila"] = 9500;
$funcionario ["Rosangela"] = 7500;
$funcionario ["Vanessa"] = 5500;
$funcionario ["Joyce"] = 2750;
$funcionario ["Fatima"] = 2987;
$funcionario ["Alvaro"] = 4517;


echo "<center><h1>Exercicio 1: Listar todos os funcionários na ordem inserida
</h1>";

foreach ($funcionario as $key => $value) {
    echo $key.": "."R$".$value."<br>"."<hr>";
}

echo "<h1>Exercio 2: Listar todos os funcionários na ordem reversa ordenando pelo Nome
</h1>";

krsort($funcionario);
foreach ($funcionario as $key => $value) {
    echo $key."<br>"."<hr>";
}

echo "<h1>Exercicio 3: Listar todos os funcionários ordenando pelo Salário</h1>";

asort($funcionario);
foreach ($funcionario as $key => $value) { /* $key = indice*/
    echo $key.": R$ ".$value."<br>"."<hr>";
}


echo "<h1>Exercicio 4: Listar todos os funcionários ordenando pelo Nome</h1>";

ksort($funcionario);
foreach ($funcionario as $key => $value) {
    echo $key."<br>"."<hr>";
};


echo "<h1>Exercicio 5: Listar todos os funcionários com salário maior que R$ 1800,00 ordenando pelo Salário</h1>";

asort($funcionario);
foreach ($funcionario as $key => $value) {
    if($value>1800)
    echo $key.": R$".$value."<br>"."<hr>";

}

echo "<h1>Exercicio 6: Listar todos os funcionários com salário menor ou igual a R$ 2000,00 ordenando pelo Nome
</h1>";

asort($funcionario);
foreach ($funcionario as $key => $value) {
    if($value<=2000)
    echo $key.": R$".$value."<br>"."<hr>";

}


echo "<h1>Exercicio 6: Exibir a soma de todos os salários.</h1>";

$soma=0;
foreach ($funcionario as $key => $value) {
    $soma += $value;
    /* += soma os valores do array e armazena na variavel igualada*/ 
}
echo "A soma de todos Salarios é: R$ ".number_format($soma,2,',','.');/* number_format(Variavel,Casas decimais,simbolo para milhar,simbolo para decimais)*/ 

    /* echo "A soma de todos Salarios é: R$ ".array_sum($funcionario);  OUTRA FORMA DE SOMAR*/

    echo "<h1>Exercicio 7: Exibir a média salarial
    .</h1>";

    $soma=0;
    foreach ($funcionario as $key => $value) {
        $soma += $value/count($funcionario);
    }
    echo "A média dos Salarios é: R$ ".number_format($soma,2,',','.');

?>


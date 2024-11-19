<?php 
function dia($d1){
    if ($d1 == 1 ) {
        return "SEGUNDA";
    } 
    else if ($d1==2){
        return "TERÇA";
    }
    else if ($d1==3){
        return "QUARTA";
    }
    else if ($d1==4){
        return "QUINTA";
    }
    else if ($d1==5){
        return "SEXTA";
    }
    else if ($d1==6){
        return "SABÁDO";
    }
    else if ($d1==7){
        return "DOMINGO";
    }
    
}

$resultado =  dia(2);

echo "$resultado";

?>
<?php

function mes($m){
    
    if($m==1){
        return 'janeiro';
    }
    if($m==2){
        return 'fevereiro';
    }
    if($m==3){
        return 'março';
    }
    if($m==4){
        return 'abril';
    }
    if($m==5){
        return 'maio';
    }
    if($m==6){
        return 'junho';
    }
    if($m==7){
        return 'julho';
    }
    if($m==8){
        return 'agosto';
    }
    if($m==9){
        return 'setembro';
    }
    if($m==10){
        return 'outubro';
    }
    if($m==11){
        return 'novembro';
    }
    if($m==12){
        return 'dezembro';
    }
    
}

echo mes(10);

?>
<?php

function dia($m){
    
    if($m==1){
        return 'domingo';
    }
    if($m==2){
        return 'segunda';
    }
    if($m==3){
        return 'terça';
    }
    if($m==4){
        return 'quarta';
    }
    if($m==5){
        return 'quinta';
    }
    if($m==6){
        return 'sexta';
    }
    if($m==7){
        return 'sabado';
    }

}

echo dia(1);

?>
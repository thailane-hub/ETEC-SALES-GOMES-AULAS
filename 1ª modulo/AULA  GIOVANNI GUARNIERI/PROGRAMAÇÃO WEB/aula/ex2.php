<?php 
function mes($m1){
    if ($m1 == 1 ) {
        return "JANEIRO";
    } 
    else if ($m1==2){
        return "FERVEREIRO";
    }
    else if ($m1==3){
        return "MARÇO";
    }
    else if ($m1==4){
        return "ABRIL";
    }
    else if ($m1==5){
        return "MAIO";
    }
    else if ($m1==6){
        return "JUNHO";
    }
    else if ($m1==7){
        return "JULHO";
    }
    else if ($m1==8){
        return "AGOSTO";
    }
    else if ($m1==9){
        return "SETEMBRO";
    }
    else if ($m1==10){
        return "OUTUBRO";
    }
    else if ($m1==11){
        return "NOVEMBRO";
    }
    else if ($m1==12){
        return "DEZEMBRO";
    }
}

$resultado =  mes(12);

echo "$resultado";

?>
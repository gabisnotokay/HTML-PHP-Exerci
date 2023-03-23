<html>
    <head>
        <title>quadradoumdez.php </title>
    </head>
    <body>
        <?php

        $num = 1;
        $rs = 0;

        echo "O quadrados dos números interios de 1 a 10<br>";

        for($i = $num; $i<=10;$i++){

            $rs = $num * $i;

            echo' O quadrado de ' .$num. ' é '.$rs. "<br>";
            
            $num++;
        }
        
        ?>
</body>
</html>
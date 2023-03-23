<html>
    <head>
        <title>Página divisão.php</title>
    </head>
    <body>

        <?php

        $n1 = 4;

        echo "Os números divisiveis por 4 que são menores que 20<br>";

        for($i = 1; $i<20;$i++){

            if($i % $n1 == 0){
                
            echo $i."<br>";
            }
        }   
        ?>
    </body>
</html>
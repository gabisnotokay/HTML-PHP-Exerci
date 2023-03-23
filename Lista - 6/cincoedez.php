<html>
    <head>
        <title>Página cincoedez.php </title>
    </head>
    <body>
    <br>
        <?php
        
        echo" Abaixo, você verá o quadrado dos números de 5 a 10 <br>";

        $i = 0;
        $rs = 0;

        for($i=5;$i<=10;$i++){

        $rs = $i * $i;

        echo "O quadrado de ".$i. " é: ".$rs."<br>";
        }
        ?>
    </body>
</html>

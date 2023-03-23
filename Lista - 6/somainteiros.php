<html>
    <head>
        <title>somainteiros.php </title>
    </head>
    <body>
        <?php

        $num1 = 0;
        $i = 4;
        $num2 = 8;

        echo "Soma dos numeros inteiros entre 3 e 8 <br>";

        do {
            $num1 += $i;
            $i++;

        }while($i < $num2);

        echo 'A soma dos número é ' .$num1;

        ?>
</body>
</html>
<html>
    <head>
        <title>Página calcularsomaif.php </title>
    </head>
<body>
<br>
    <?php
        $A = $_POST['txta'];
        $B = $_POST['txtb'];
        $soma= $A + $B;

        echo "A soma dos valores é ".$soma .'<br>';
        if ($soma>=0) {
            echo '<font color="blue">'. "Número positivo.". '</font>';
        }
        else{
            echo '<font color="red">'. "Número negativo.". '</font>';
        }
    ?>
</body>
</html> 
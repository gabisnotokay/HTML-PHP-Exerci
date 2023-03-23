<html>
    <head>
        <title>Página compra.php </title>
    </head>
<body>
<br>
    <?php
        $valor = $_POST['txtn1'];

        if ($valor >= 100) {
            echo "Sua compra possui o valor maior que 100.";    
        } 

        else {
            echo "Sua compra não possui o valor maior que 100.";  
        }
    
        ?>
</body>
</html>
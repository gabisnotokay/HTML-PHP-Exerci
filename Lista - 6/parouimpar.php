<html>
    <head>
        <title>Página parouimpar.php </title>
    </head>
<body>
<br>
    <?php
        $num = $_POST['txtn1'];

        if($num %2 == 0){
            echo "O número digitado é par.";
        }

        else {
            echo "O número digitado é ímpar.";
        }
    ?>
</body>
</html>
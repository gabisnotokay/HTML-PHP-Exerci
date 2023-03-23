<html>
    <head>
        <title>maiorquezero.php</title>
    </head> 
    <body>
        <br>
        <?php

            $num = $_POST['txta'];

            if($num >= 0)
            {
                echo '<font color="blue">' . "O número digitado é positivo." . '</font>';
            }
            else
            {
                echo '<font color="red">' . "O número digitado é negativo." . '</font>';
            }
        ?>
    </body>
</html>
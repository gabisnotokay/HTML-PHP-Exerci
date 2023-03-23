<html>
    <head>
        <title>Página tabela.php </title>
    </head>
<body>
<br>
    <?php
        $num = $_POST['txtn1'];

        echo "O número escolhido foi: ".$num .'<br />';

        if($num == 1)
        {
            echo "Secretária.";
        } 
            if ($num == 2) 
            {
                echo "Gerente."; 
            }
                if ($num == 3)
                {
                    echo "Operário."; 
                }
                    if ($num == 4)
                    {
                        echo "Analista."; 
                    }
                        if ($num == 5)
                        {
                            echo "Faxineiro."; 
                        }
                            if ($num > 5){
                                echo '<font color="red">'. "Número inválido! Tente novamente.". '</font>'; 
                            }

        
    ?>
</body>
</html>
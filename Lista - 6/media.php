<html>
    <head>
        <title>Página media.php </title>
    </head>
<body>
<br>
    <?php
        $nota1 = $_POST['txtn1'];
        $nota2 = $_POST['txtn2'];

        $media = ($nota1 + $nota2) / 2;

        echo "Sua média aritmética é de: ".$media .'<br />';

        if($media < 3)
        {
            echo "Você está retido(a).";
        } 
            if ($media >= 3 && $media < 8) 
            {
                echo "Você foi convodado(a) para um exame."; 
            }
                if ($media > 8)
                {
                    echo "Parabéns, você foi aprovado(a)!!"; 
                }
                    if ($media > 10)
                    {
                        echo "Nota inválida, tente novamente."; 
                    }

        
    ?>
</body>
</html>
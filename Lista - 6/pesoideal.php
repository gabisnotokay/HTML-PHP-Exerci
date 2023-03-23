<html>
    <head>
        <title>Página pesoideal.php </title>
    </head>
<body>
<br>
    <?php
        $nome = $_POST['nome'];
        $sexo = $_POST['sexo'];
        $alt = $_POST['alt'];
        $peso = $_POST['peso'];
        $PI = 0;
        
        if($sexo == "Feminino")
        {
            $PI = ($alt * $alt)*22;
            echo "".$nome .", seu peso é de: ".$PI .'<br>';

                if($peso > $PI){
                echo '<font color="red">'. "Acima do peso ideal.". '</font>';
                }
                
                else{
                    echo '<font color="blue">'. "Dentro do peso ideal.". '</font>';
                }
        } 

        else if ($sexo == "Masculino") 
        {
            $PI = ($alt * $alt)*23;
            echo "".$nome .", seu peso é de: ".$PI .'<br>';

                if($peso > $PI){
                echo '<font color="red">'. "Acima do peso ideal.". '</font>';
                }
                    
                else{
                    echo '<font color="blue">'. "Dentro do peso ideal.". '</font>';
                }
        }
                   
    ?>
</body>
</html>
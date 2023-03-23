<html>
    <head>
        <title>Página tabela2.php </title>
    </head>
<body>
<br>
    <?php
        $valor1 = $_POST['txtn1'];
        $valor2 = $_POST['txtn2'];
        $op = $_POST['txtop'];
        $resultado = 0;

        if ($op == 1) {
            $resultado = $valor1 + $valor2;
            echo "O resultado da soma é de: ".$resultado .'<br />';    
        } 

        else if ($op == 2){
            $resultado = $valor1 - $valor2;
            echo "O resultado da subtração é de: ".$resultado .'<br />'; 
        } 

        else if ($op == 3){
            $resultado = $valor1 / $valor2;
            echo "O resultado da divisão é de: ".$resultado .'<br />'; 
        }

        else if ($op == 4){
            $resultado = $valor1*$valor2;
            echo "O resultado da multiplicação é de: ".$resultado .'<br />';     
        } 
        else if ($op >= 4){
            echo '<font color="red">'. "Operador digitado inválido! Tente novamente.". '</font>';      
        }
    
        ?>
</body>
</html>
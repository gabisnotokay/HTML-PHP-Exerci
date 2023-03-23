<html>
    <head>
        <title>Página login.php </title>
    </head>
<body>
<br>
    <?php
        $nome = $_POST['txta'];
        $senha = $_POST['txtb'];

        if(($nome == "ETE") && ($senha == "ETE")){
            echo "Bem vindo(A) ao Sistema.";
        }

        else
        {
            echo "Usuário ou senha inválidos!! Tente novamente!!!";
        }
    ?>
</body>
</html>
<!DOCTYPE html>
    <html lang="pt-br">
        <head>
            <meta charset = "utf-8">

            <title>Listar</title>
            
            <link rel="stylesheet" href="./_css/style.css"> 
        </head> 

        <body>
            <nav>

                <div class="logo">
                    <a href="index.html">
                    <img src="./_img/logo.png" />
                    </a>
                </div>

                <div class="linha">
                    <img src="./_img/linha.png" />
                </div>

                <a href="#">Principal</a>
                <a href="#">Cadrastar</a>
                <a href="#">Excluir</a>
                <a href="#">Pesquisar</a>
                <a href="listar.php">Listar</a>
                <a href="#">Alterar</a>

            </nav>
        </body>
<?php

    include_once 'produto.php';
    $p = new Produto();
    $pro_bd=$p->listar();

?>
<b> Id $nbsp;$nbsp;$nbsp;$nbsp; Nome $nbsp;$nbsp;$nbsp;$nbsp;Estoque</b>

<?php
    foreach($pro_bd as $pro_mostrar)
    {
        ?>
        <br><br>

        <b> <?php echo $pro_mostrar[0]; ?> </b> $nbsp;$nbsp;$nbsp;$nbsp;
            <?php echo $pro_mostrar[1]; ?> $nbsp;$nbsp;$nbsp;$nbsp;
            <?php echo $pro_mostrar[2]; ?>
        <?php
    }
        echo "<br><br><button>>a href = 'menu.html'> Voltar </a></button> "; ?>

        </section>
    </body>
</html>
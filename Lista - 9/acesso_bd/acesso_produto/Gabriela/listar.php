<html>
<head>
            <meta charset = "utf-8">

            <title>Listar</title>
            
            <link rel="stylesheet" href="./_css/listar.css"> 
        </head> 
<body>
<header>
                <nav>
                    <a class = "logo" href="menu.html">TABELA PRODUTOS</a>  

                    <div class = "linha">
                        <img src="_img/linha.png" alt="">
                    </div>

                    <ul class="nav-list">
                        <li><a href="#">Principal</a></li>
                        <li><a href="#">Cadrastar</a></li>
                        <li><a href="#">Excluir</a></li>
                        <li><a href="#">Pesquisar</a></li>
                        <li><a href="listar.php">Listar</a></li>
                        <li><a href="#">Alterar</a></li>
                    </ul>
                </nav>
        </header>
<?php

    include_once 'produto.php';
    $p = new Produto();
    $pro_bd=$p->listar();

?>
<b> Id &nbsp; &nbsp; &nbsp; &nbsp; Nome &nbsp; &nbsp; &nbsp; &nbsp;Estoque</b>

<?php
    foreach($pro_bd as $pro_mostrar)
    {
        ?>
        <br><br>

        <b> <?php echo $pro_mostrar[0]; ?> </b> &nbsp; &nbsp; &nbsp; &nbsp;
            <?php echo $pro_mostrar[2]; ?> &nbsp; &nbsp; &nbsp; &nbsp;
            <?php echo $pro_mostrar[1]; ?>
    <?php
    }
        echo "<br><br><button><a href = 'menu.html'> Voltar </a></button> "; ?>

    </body>   
	</html>
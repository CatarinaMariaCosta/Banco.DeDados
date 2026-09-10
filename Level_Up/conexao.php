<?php
    $host = "SEU_IP_AQUI";
    $usuario = "SEU_USUARIO_AQUI";
    $banco = "SEU_BANCO_AQUI"; //Se der errado coloque tudo em minusculo
    $senha = "SUA_SENHA_AUI";

    $pdo = new PDO(
        "pgsql:host=$host;port=5432;dbname=$banco", 
        $usuario, 
        $senha
    )
    ?>
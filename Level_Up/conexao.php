<?php
    $host = "192.168.10.13";
    $usuario = "postgres";
    $banco = "level_up"; //Se der errado coloque tudo em minusculo
    $senha = "97314341";

    $pdo = new PDO(
        "pgsql:host=$host;port=5432;dbname=$banco", 
        $usuario, 
        $senha
    )
    ?>
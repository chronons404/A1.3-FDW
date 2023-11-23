<?php
    $nome = $_GET['nome'];
    $idade = $_GET['idade'];
    $depoimento = $_GET['depoimento'];
    
    require 'request.php';

    $sql = 'insert into
              depoimentos (nome, idade, depoimento)
              values (:nome, :idade, :depoimento)';
    
    $consulta = $conexao -> prepare($sql);
    $consulta -> bindParam(':nome', $nome, PDO::PARAM_STR);
    $consulta -> bindParam(':idade', $idade, PDO::PARAM_STR);
    $consulta -> bindParam(':depoimento', $depoimento, PDO::PARAM_STR);
    $consulta -> execute();
    $l = $consulta -> rowCount();

    echo $l;
?>
<?php
    $nome = $_GET['nome'];
    $email = $_GET['email'];
    $mensagem = $_GET['mensagem'];

    require 'request.php';

    $sql = 'insert into
              mensagens (nome, email, mensagem)
              values (:nome, :email, :mensagem)';
    
    $consulta = $conexao -> prepare($sql);
    $consulta -> bindParam(':nome', $nome, PDO::PARAM_STR);
    $consulta -> bindParam(':email', $email, PDO::PARAM_STR);
    $consulta -> bindParam(':mensagem', $mensagem, PDO::PARAM_STR);
    $consulta -> execute();

?>
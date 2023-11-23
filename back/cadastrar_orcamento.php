<?php
    $nome = $_GET['nome'];
    $email = $_GET['email'];
    $celular = $_GET['celular'];
    $endereco = $_GET['endereco'];
    $complemento = $_GET['complemento'];
    $cidade = $_GET['cidade'];
    $estado = $_GET['estado'];
    $cep = $_GET['cep'];
    $data = $_GET['data'];
    $obs = $_GET['obs'];

    require 'request.php';

    $sql = 'insert into
              orçamento (nome, email, celular, endereço, complemento, cidade, estado, cep, data_inscrição, observações)
              values (:nome, :email, :celular, :endereco, :complemento, :cidade, :estado, :cep, :data, :obs)';

    $consulta = $conexao -> prepare($sql);
    $consulta -> bindParam(':nome', $nome, PDO::PARAM_STR);
    $consulta -> bindParam(':email', $email, PDO::PARAM_STR);
    $consulta -> bindParam(':celular', $celular, PDO::PARAM_STR);
    $consulta -> bindParam(':endereco', $endereco, PDO::PARAM_STR);
    $consulta -> bindParam(':complemento', $complemento, PDO::PARAM_STR);
    $consulta -> bindParam(':cidade', $cidade, PDO::PARAM_STR);
    $consulta -> bindParam(':estado', $estado, PDO::PARAM_STR);
    $consulta -> bindParam(':cep', $cep, PDO::PARAM_STR);
    $consulta -> bindParam(':data', $data, PDO::PARAM_STR);
    $consulta -> bindParam(':obs', $obs, PDO::PARAM_STR);
    $consulta -> execute();
    $l = $consulta -> rowCount();

    echo $l
?>
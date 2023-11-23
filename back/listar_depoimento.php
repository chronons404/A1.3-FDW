<?php
    require 'request.php';

    $sql = 'select * from depoimentos order by id_depoimento';

    $consulta = $conexao -> prepare($sql);
    $consulta -> execute();

    $dados = $consulta -> fetchAll(PDO::FETCH_OBJ);

    echo json_encode($dados);
?>
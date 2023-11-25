function enviarDepoimento(){
    let nome = document.getElementById('nome').value;
    let idade = document.getElementById('idade').value;
    let depoimento = document.getElementById('depoimento').value;

    let url = `back/enviar_depoimento.php?nome=${nome}&idade=${idade}&depoimento=${depoimento}`;

    let req = new XMLHttpRequest();
    req.open('GET', url, false);
    req.send();

    listarDepoimentos();
    limpar();
}

function listarDepoimentos(){
    let url = 'back/listar_depoimento.php'

    let req = new XMLHttpRequest();
    req.open('GET', url, false);
    req.send();
    let res = JSON.parse(req.responseText);

    let text = document.getElementById('tabela-depoimentos');
    text.innerHTML = "";

    for (i in res){
        text.innerHTML = text.innerHTML + `<tr>
        <th>${res[i].nome}</th>
        <th>${res[i].idade} anos</th>
        <th>"${res[i].depoimento}"</th>
      </tr>`
    }
}

function limpar(){
    document.getElementById('nome').value = "";
    document.getElementById('idade').value = "";
    document.getElementById('depoimento').value = "";
}

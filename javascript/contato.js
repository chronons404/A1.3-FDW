function enviarMensagem(){
    let nome = document.getElementById(`nome`).value;
    let email = document.getElementById(`email`).value;
    let mensagem = document.getElementById(`mensagem`).value;
    let url = `back/enviar_msg.php?nome=${nome}&email=${email}&mensagem=${mensagem}`;

    let req = new XMLHttpRequest();
    req.open('GET', url, false);
    req.send();

    limpar();

    alert("Mensagem enviada com sucesso!")
}

function limpar(){
    document.getElementById('nome').value = "";
    document.getElementById('email').value = "";
    document.getElementById('mensagem').value = "";
}
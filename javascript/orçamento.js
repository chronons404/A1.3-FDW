function enviarOrcamento(){
    let nome = document.getElementById('InputName').value;
    let email = document.getElementById('InputEmail').value;
    let celular = document.getElementById('InputPhoneNumber').value;
    let endereco = document.getElementById('inputAddress').value;
    let complemento = document.getElementById('inputAddress2').value;
    let cidade = document.getElementById('inputCity').value;
    let estado = document.getElementById('inputEstado').value;
    let cep = document.getElementById('inputCEP').value;
    let data = document.getElementById('dateInput').value;
    let obs = document.getElementById('Textarea1').value;

    url = `back/cadastrar_orcamento.php?nome=${nome}&email=${email}&celular=${celular}&endereco=${endereco}&complemento=${complemento}&cidade=${cidade}&estado=${estado}&cep=${cep}&data=${data}&obs=${obs}`

    let req = new XMLHttpRequest();
    req.open('GET', url, false);
    req.send();
    res = JSON.parse(req.responseText);
    console.log(res)

    alert("Pedido de orçamento enviado!");
    limpar();
}

function limpar(){
    document.getElementById('InputName').value = "";
    document.getElementById('InputEmail').value = "";
    document.getElementById('InputPhoneNumber').value = "";
    document.getElementById('inputAddress').value = "";
    document.getElementById('inputAddress2').value = "";
    document.getElementById('inputCity').value = "";
    document.getElementById('inputEstado').value = "";
    document.getElementById('inputCEP').value = "";
    document.getElementById('dateInput').value = "";
    document.getElementById('Textarea1').value = "";
}
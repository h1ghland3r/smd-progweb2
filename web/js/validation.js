function isValidEmail(email) {
  var regex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
  return regex.test(email);
}

function AlphanumericNome(nome) {
  var regex = /^([a-zA-Z0-9 ]+)$/;
  return regex.test(nome);
}

function AlphanumericLogin(login) {
  var regex = /^([a-zA-Z0-9 ]+)$/;
  return regex.test(login);
}

function AlphanumericPassword(senha) {
  var regex = /^([a-zA-Z0-9 ]+)$/;
  return regex.test(senha);
}

function validate() {
    var email = $('#email').val();
    var nome = $('#nome').val();
    var login = $('#login').val();
    var senha = $('#senha').val();
    if(!AlphanumericNome(nome) ) { 
        $('.nome').addClass("has-error");
    } else {
        $('.nome').removeClass("has-error");
    }
    if(!AlphanumericLogin(login) ) { 
        $('.login').addClass("has-error");
    } else {
        $('.login').removeClass("has-error");
    }
    if(!AlphanumericPassword(senha) ) { 
        $('.senha').addClass("has-error");
    } else {
        $('.senha').removeClass("has-error");
    }
    if(!isValidEmail(email) ) { 
        $('.email').addClass("has-error");
    } else {
        $('.email').removeClass("has-error");
    }
}

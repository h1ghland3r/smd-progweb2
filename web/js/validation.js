function isValidEmail(email) {
  var regex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
  return regex.test(email);
}

function validate() {
    var email = $('#email').val();
    if(!isValidEmail(email) ) { 
        $('.email').addClass("has-error");
    } else {
        $('.email').removeClass("has-error");
    }
}

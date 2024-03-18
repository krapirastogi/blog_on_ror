$(document).ready( function () {
  var emailField = document.getElementById("email");
  var passwordField = document.getElementById("password");

  emailField.addEventListener("keyup", function () {
    validateEmail(emailField.value);
  });

  passwordField.addEventListener("keyup", function () {
    validatePassword(passwordField.value);
  });

  function validateEmail(email) {
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    var isValid = emailRegex.test(email);

    if (!isValid) {
      document.getElementById("email-error").textContent =
        "Please enter a valid email address.";
      return false;
    } else {
      document.getElementById("email-error").textContent = "";
      return true;
    }
  }

  function validatePassword(password) {
    var isValid = password.length >= 8;

    if (!isValid) {
      document.getElementById("password-error").textContent =
        "Password must be at least 8 characters long.";
      return false;
    } else {
      document.getElementById("password-error").textContent = "";
      return true;
    }
  }
});

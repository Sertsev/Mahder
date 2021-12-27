// $(".email-signup").hide();
// $("#signup-box-link").click(function() {
//     $(".email-login").fadeOut(100);
//     $(".email-signup").delay(100).fadeIn(100);
//     $("#login-box-link").removeClass("active");
//     $("#signup-box-link").addClass("active");
// });
// $("#login-box-link").click(function() {
//     $(".email-login").delay(100).fadeIn(100);;
//     $(".email-signup").fadeOut(100);
//     $("#login-box-link").addClass("active");
//     $("#signup-box-link").removeClass("active");
// });

// function ShowInputError() {
//     let pasErr;
//     let emlErr;

//     // Get the value of the input field with id and check if it is not null
//     if (document.getElementById("loginEmail") == null) {
//         emlErr = "Email not valid";
//     } else {
//         let eml = document.getElementById("loginEmail").value;

//         if (eml == "") {
//             emlErr = "Email not valid";
//         } 
//     }

//     if (document.getElementById("loginPassword") == null) {
//         pasErr = "Password not valid";
//     } else {
//         let pas = document.getElementById("loginPassword").value;

//         if (len(pas) < 8) {
//             pasErr = "Password not valid";
//         }
//     }

//     document.getElementById("invalidPassword").innerHTML = pasErr;
//     document.getElementById("invalidEmail").innerHTML = emlErr;
// }
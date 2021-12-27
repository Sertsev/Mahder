function up_dropDown(divId) {
    if (document.getElementById(divId).classList.contains("hideDiv")) {
        document.getElementById(divId).classList.remove("hideDiv");
    } else {
        document.getElementById(divId).classList.add("hideDiv");
    }
};

function log_sign_switch(divId, targetId) {
        document.getElementById(divId).classList.remove("hideDiv");
        document.getElementById(targetId).classList.add("hideDiv");
};

function Logout_Click() {
    document.getElementById("mahiLogOut").click();
    document.getElementsByClassName("hi").click();
}

function printThis() {
    // document.getElementById(divId).innerHTML = str;
    document.getElementById('checking').innerHTML = "Hello";
}
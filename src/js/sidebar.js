function dash_active(active) {
    let i = document.getElementsByClassName('active_dash')[0].id;
    document.getElementById(active).classList.add('active_dash');
    document.getElementById(i).classList.remove('active_dash');
}

function close_menu(clos) {
    document.getElementById(clos).classList.remove('open_menu');
    document.getElementById(clos).classList.add('close_menu');

    document.getElementById('cloz').style.display = 'none';
    document.getElementById('opn').style.display = 'block';

    setTimeout(function() {
        document.getElementById(clos).classList.add('hide_div');
    }, 800);
}

function open_menu(opn) {
    document.getElementById(opn).classList.remove('close_menu');
    document.getElementById(opn).classList.add('open_menu');
    document.getElementById(opn).classList.remove('hide_div');

    document.getElementById('opn').style.display = 'none';
    document.getElementById('cloz').style.display = 'none';

    setTimeout(function() {
        document.getElementById('cloz').style.display = 'block';
    }, 1100);
}
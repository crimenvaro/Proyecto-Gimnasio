////$(document).ready(function () {
////    ValidaSoloLetras('#inpDepartamento');
////    /*ValidaSoloNumeros();*/
////});

//////function ValidaSoloNumeros(inputText) {

//////    if (!inputText.value.match(/^[0-9]*$/)) {
//////        inputText.value = inputText.value.replace(/[^0-9]/g, '');
//////    }

//////}

////function ValidaSoloLetras(inputText) {
////    inputText.value = inputText.value.replace(/[^áéíóúàèìòùÁÉÍÓÚÀÈÌÒÙA-Za-z,. ]/g, '');
////}


function SoloLetras() {
    if (event.ctrlkey) {
        return false;
    }
    else {
        if (((event.keyCode >= 65) && (event.keyCode <= 90)) ||
            ((event.keyCode >= 97) && (event.keyCode <= 122)) ||
            (event.keyCode == 8) || (event.keyCode == 32)) {
            event.returnValue = true;
        }
        else {
            event.returnValue = false;
        }
    }
}

function SoloNumeros() {

    if (event.ctrlkey) {
        return false;
    }
    else {
        if (((event.keyCode >= 48) && (event.keyCode <= 57)) || (event.keyCode == 8)) {
            event.returnValue = true;
        }
        else {
            event.returnValue = false;
        }
    }
}

function validarRango(elemento) {
    let num = parseInt(elemento.value, 10);
    //Validamos que se cumpla el rango
    if (num < 0 || num >= 100) {
        elemento.value = "";
        elemento.focus();
        elemento.select();
        return false;
    }
    return true;
}

function validarEmail(valor, elemento) {
    re = /^([\da-z_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/
    if (!re.exec(valor)) {
        
        elemento.focus();
        elemento.select();
        //alert('Formato de correo electrónico inválido');
        return false;
    }
    return true;
    //else alert('email valido');

}
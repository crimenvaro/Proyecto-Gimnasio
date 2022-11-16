
$(document).ready(function () {
    ListarFiltrarColaboradores();
});

function ListarFiltrarColaboradores() {
  
    let parametros = {
        "Rol": ""
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarColaboradores", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_colaboradores = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_colaboradores.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaColaboradores(this);" idColaboradores="' + lista_colaboradores[i].iIdColaborador + '" idEstado="' + lista_colaboradores[i].bIdEstado + '" idPersona="' + lista_colaboradores[i].iIdPersona + '" idDepartamento="' + lista_colaboradores[i].bIdDepartamento + '" cedula="' + lista_colaboradores[i].sCedula + '" nombre="' + lista_colaboradores[i].sNombre + '" apellido1="' + lista_colaboradores[i].sApellido1 + '" apellido2="' + lista_colaboradores[i].sApellido2 + '" fechaNacimiento="' + lista_colaboradores[i].dtFechaNacimiento + '" telefono="' + lista_colaboradores[i].iTelefono + '" correo="' + lista_colaboradores[i].sCorreo + '" correo2="' + lista_colaboradores[i].sSegundoCorreo + '" usuario="' + lista_colaboradores[i].sUsuario + '">' +                    
                    '<td>' + lista_colaboradores[i].bIdEstado + '</td>' +
                    '<td>' + lista_colaboradores[i].sCedula + '</td>' +
                    '<td>' + lista_colaboradores[i].sNombre + '</td>' +
                    '<td>' + lista_colaboradores[i].sApellido1 + '</td>' +
                    '<td>' + lista_colaboradores[i].sApellido2 + '</td>' +
                    '<td>' + lista_colaboradores[i].dtFechaNacimiento + '</td>' +
                    '<td>' + lista_colaboradores[i].iTelefono + '</td>' +
                    '<td>' + lista_colaboradores[i].sCorreo + '</td>' +
                    '<td>' + lista_colaboradores[i].sUsuario + '</td>' +
                    '<td onclick="EliminarColaboradores(' + lista_colaboradores[i].iIdColaborador + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaColaboradores").html(tabla);

            //$('#dataTable-departamentos').dataTable();
        }
    });
}

function SeleccionaColaboradores(objSeleccionado) {
    let idColaboradores = $(objSeleccionado).attr("idColaboradores");
    let idEstado = $(objSeleccionado).attr("idEstado");
    let idPersona = $(objSeleccionado).attr("idPersona");
    let idDepartamento = $(objSeleccionado).attr("idDepartamento");
    let cedula = $(objSeleccionado).attr("cedula");
    let nombre = $(objSeleccionado).attr("nombre");
    let apellido1 = $(objSeleccionado).attr("apellido1");
    let apellido2 = $(objSeleccionado).attr("apellido2");
    let fechaNacimiento = $(objSeleccionado).attr("fechaNacimiento");
    let telefono = $(objSeleccionado).attr("telefono");
    let correo = $(objSeleccionado).attr("correo");
    let correo2 = $(objSeleccionado).attr("correo2");
    let usuario = $(objSeleccionado).attr("usuario");

    $("#inpIdColaboradores").val(idColaboradores);
    $("#selEstadosColaboradores").val(idEstado);
    $("#inpIdColaboradoresPersona").val(idPersona);
    $("#selEstadosColaboradoresDepartamento").val(idDepartamento);
    $("#inpColaboradoresCedula").val(cedula);
    $("#inpColaboradoresNombre").val(nombre);
    $("#inpColaboradoresApellido1").val(apellido1);
    $("#inpColaboradoresApellido2").val(apellido2);
    $("#inpColaboradoresFechaNacimiento").val(fechaNacimiento);
    $("#inpColaboradoresTelefono").val(telefono);
    $("#inpColaboradoresCorreo").val(correo);
    $("#inpColaboradoresCorreo2").val(correo2);
    $("#inpColaboradoresUsuario").val(usuario);

}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarColaboradores() {

    let IdColaboradores = $("#inpIdColaboradores").val();
    let IdEstado = $("#selEstadosColaboradores").val();
    let IdPersona = $("#inpIdColaboradoresPersona").val();
    let IdDepartamento = $("#selEstadosColaboradoresDepartamento").val();
    let Cedula = $("#inpColaboradoresCedula").val();
    let Nombre = $("#inpColaboradoresNombre").val();
    let Apellido1 = $("#inpColaboradoresApellido1").val();
    let Apellido2 = $("#inpColaboradoresApellido2").val();
    let FechaNacimiento = $("#inpColaboradoresFechaNacimiento").val();
    let Telefono = $("#inpColaboradoresTelefono").val();
    let Correo = $("#inpColaboradoresCorreo").val();
    let Correo2 = $("#inpColaboradoresCorreo2").val();
    let Usuario = $("#inpColaboradoresUsuario").val();

    let Accion = (IdColaboradores != "" && IdColaboradores > 0) ? "A" : "I";

    let parametros = {
        "IdColaborador": IdColaboradores,
        "IdEstado": IdEstado,
        "Persona": IdPersona,
        "Departamento": IdDepartamento,
        "Cedula": Cedula,
        "Nombre": Nombre,
        "Apellido1": Apellido1,
        "Apellido2": Apellido2,
        "FechaNacimiento": FechaNacimiento,
        "Telefono": Telefono,
        "Correo": Correo,
        "Correo2": Correo2,
        "Usuario": Usuario,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarColaboradores", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdColaboradores").val("");
            $("#selEstadosColaboradores").val(1);
            $("#inpIdColaboradoresPersona").val("");
            $("#selEstadosColaboradoresDepartamento").val(1);
            $("#inpColaboradoresCedula").val("");
            $("#inpColaboradoresNombre").val("");
            $("#inpColaboradoresApellido1").val("");
            $("#inpColaboradoresApellido2").val("");
            $("#inpColaboradoresFechaNacimiento").val("");
            $("#inpColaboradoresTelefono").val("");
            $("#inpColaboradoresCorreo").val("");
            $("#inpColaboradoresCorreo2").val("");
            $("#inpColaboradoresUsuario").val("");

            ListarFiltrarColaboradores();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarColaboradores(IdDepartamento) {

    let parametros = {
        "IdColaborador": IdColaboradores,
        "IdEstado": 0,
        "Persona": 0,
        "Departamento": 0,
        "Cedula": "",
        "Nombre": "",
        "Apellido1": "",
        "Apellido2": "",
        "FechaNacimiento": "1990-01-01",
        "Telefono": 0,
        "Correo": "",
        "Correo2": "",
        "Usuario": "",
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarColaboradores", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdColaboradores").val("");
            $("#selEstadosColaboradores").val(1);
            $("#inpIdColaboradoresPersona").val("");
            $("#selEstadosColaboradoresDepartamento").val(1);
            $("#inpColaboradoresCedula").val("");
            $("#inpColaboradoresNombre").val("");
            $("#inpColaboradoresApellido1").val("");
            $("#inpColaboradoresApellido2").val("");
            $("#inpColaboradoresFechaNacimiento").val("");
            $("#inpColaboradoresTelefono").val("");
            $("#inpColaboradoresCorreo").val("");
            $("#inpColaboradoresCorreo2").val("");
            $("#inpColaboradoresUsuario").val("");

            ListarFiltrarColaboradores();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}
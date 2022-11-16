$(document).ready(function () {
    ListarFiltrarMedidas();
});

function ListarFiltrarMedidas() {    
    let parametros = {
        "ID_Cliente": localStorage["idCliente"]
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/ListarFiltrarMedidas",
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista = JSON.parse(obj_retorno.d);

            let tabla = '';

            for (var i = 0; i < lista.length; i++) {
                tabla += '<div class="col-md-3">' +
                    '<div class="cd-medidas-text" >' +
                    '<div class="trainer-title">' +
                    '<h4>' + lista[i].sFechaMedicion + '</h4>' +
                    '</div>' +
                    '<ul class="trainer-info">';

                var fechaActual = lista[i].sFechaMedicion;

                while (i < lista.length && lista[i].sFechaMedicion == fechaActual) {
                    tabla += '<li><span>' + lista[i].sTipoMedidaDsc + '</span>' + lista[i].sMedidaValor + '</li>'
                    i++;
                }
                i--;

                tabla += '</ul></div></div>';
            }

            $("#contenidoMedidas").html(tabla);
        }
    });
}

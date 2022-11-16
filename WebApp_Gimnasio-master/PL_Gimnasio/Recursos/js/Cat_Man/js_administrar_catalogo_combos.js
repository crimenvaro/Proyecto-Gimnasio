$(document).ready(function () {
    recargaComboEstados();
});

function recargaComboEstados() {
    comboDescuento("selProductosDescuento");
    comboDepartamento("selEstadosColaboradoresDepartamento");
    comboUnidadesMedida("selUnidadMedida");
    comboEstados(["selEstados", "selEstadosCategoriaEquipos", "selEstadosDescuentos", "selEstadosEjercicios", "selEstadosDia", "selEstadosProductos", "selEstadosRoles", "selEstadosColaboradores", "selEstadosTurnos", "selEstadoTipoPago", "selEstadoTiposMedidas", "selEstadosUnidadesDeMedida", "selEstadosSalas", "selEstadosInformacion"], "G");
}


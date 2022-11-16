function seleccionarAgenda(obj_opcion) {
    $("li[data-tsfilter='all']").click();
    $(".class-item").removeClass("selected-option");
    $(".section-agenda").addClass("display-none");

    $(obj_opcion).addClass("selected-option");
    let idSection = $(obj_opcion).attr("section");
    $("#" + idSection).removeClass("display-none");
}

$(window).on("load", function () {
    $(".ts-meta").on("click", function () {
        confirm( "Reservar " + $(this).attr("data-tsmeta") + " " + $(this).parent().find(".class-time").html());
    })
});
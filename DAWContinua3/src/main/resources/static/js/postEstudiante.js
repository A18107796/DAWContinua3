$(".btnPasarDato").on("click", function (e) {
    e.preventDefault();
 
    var Dato = $(this).parent().prev().html();
    $('.txtReceptor').val(Dato);
 
    return false;
})


 
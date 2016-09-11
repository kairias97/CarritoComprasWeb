$(document).ready(function(){
    $('div.filaItemCarrito img').hover(function (e) {

    var target = '#' + ($(this).attr('data-cuadro-emergente'));
    $(target).show();
}).mouseout(function(e){
    var target = '#' + ($(this).attr('data-cuadro-emergente'));
	$(target).hide();
});
    
});

$(document).ready(function(){
    $('div.imagenDetalle img').hover(function (e) {

    var target = '#' + ($(this).attr('data-cuadro-emergente'));
    $(target).show();
}).mouseout(function(e){
    var target = '#' + ($(this).attr('data-cuadro-emergente'));
	$(target).hide();
});
    
});

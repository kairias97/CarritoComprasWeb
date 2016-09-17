function mostrarPopup(imagenDetalle){
    if($(imagenDetalle).attr("data-flag")==="true"){
        alert("El producto " +$(imagenDetalle).attr("data-nombre-producto")+ " con precio " +$(imagenDetalle).attr("data-precio") +" está disponible para ser agregado al carrito. \nPara agregar al carrito presione el botón \"Agregar al Carrito de Compras\"");    
        
    }
};
//Para hacer que el data-flag de la imagen sea "true" y que se muestre el popup cuando se haga mouse over pero hasta que los elementos 
//de la página se carguen correctamente ya que el evento se estaba disparando desde antes de cargar completamente la página.
function permitirPopup(imagenDetalle){
    $(imagenDetalle).attr("data-flag", "true");//Cuando se ponga en true significa que ya ha cargado.
}
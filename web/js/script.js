
function mostrarSubcategoria(  url  ){
     $("#subcategorias-menu").html(  "loading"  );
     $("#subcategorias-menu").load(  url  );
}

function mostrarProductos(  url , elemento ){
	$(".subcategoria-link").removeClass("subselected");
	$(elemento).addClass("subselected");
     $("#producto-list").html(  "loading"  );
     $.ajax({
     	url: url,
     	success:function( response ){
     		$("#producto-list").html(  response );
     		validarImagenes();
     	}
     });
}






function validarImagenes( ){


	$(".prod-img").each(   function(){
		var codigo = $(this).attr("id");
		$.ajax({
			url: IMG_URL + codigo + ".jpg" ,
			type:'HEAD',
			error: function()
			{

			},
			success: function()
			{
				$("#"+ codigo ).attr("src" , IMG_URL + codigo + ".jpg" )
			}
		});


	} );

	
	
}


$(document).ready(function(){
    
    $(".categoria-link").click(function(){
    	$(".categoria-link").removeClass("selected");
    	$(this).addClass("selected");	
    });
    

    $("#productos-menu").click(function(){
    	$("#submenu-categorias").toggle();
    });
    




    $(".prod-link").hover(function(){
    	$(this).find(".vermas-prod").show( 'slow' );
    } , function(){
    	$(this).find(".vermas-prod").hide('fast');
    }  );


    
});




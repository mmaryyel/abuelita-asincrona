$(document).ready(function() {
	// Este código corre después de que `document` fue cargado(loaded) 
	// completamente. 
	// Esto garantiza que si amarramos(bind) una función a un elemento 
	// de HTML este exista ya en la página. 
  $("form").submit(function(event) {
    event.preventDefault();
    var info = $("form").serialize(); 
    $.post("/abuelita", info, function(data){
      $("#answer").html(data);
    });

  });


});


// $.post(url, data, function)
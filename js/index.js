$( document ).ready(function() {

    var loadProjects = function(filtros) {
      
        console.log( JSON.stringify(filtros) );

        var jsonObject = {
            'action' : "GET-PROJECTS",
            'filtros': JSON.stringify(filtros)
        };


        $.ajax({
            type: "POST",
            url: "data/data.php",
            dataType: "json",
            data: jsonObject,
            contentType: "application/x-www-form-urlencoded",
            success: function(jsonRecieved) {
                // console.log(jsonRecieved.status);
                // console.log(jsonRecieved.data);

                // $('#test').text(jsonRecieved.data);

                var newHTML = "";





                $.each(jsonRecieved.data, function(st, dat){

                    newHTML+=  "  <div class='col-4'>";
                    newHTML+=  "     <div class='card' >";
                    newHTML+=  "            <img class='card-img-top'  src='http://localhost/pry/img/prim/"+dat.ImagenA+"'' alt='"+dat.TituloA+"'>";
                    newHTML+=  "      <div class='card-block'>";
                    newHTML+=  "        <h4 class='card-title'>"+dat.TituloA+"</h4>";
                    newHTML+=  "        <p class='card-text'>"+dat.DescripcionA+"</p>";
                    newHTML+=  "        <a href='#'' class='btn btn-primary'>Go somewhere</a>";
                    newHTML+=  "       </div>";
                    newHTML+=  "    </div>";
                    newHTML+=  "  </div>";

                });




                $("#projects").html(newHTML);

            },
            error: function(errorMsg){
                console.log(errorMsg.statusText);
            }
        });
    }

    var TiposF = new Array();
    loadProjects(TiposF);



    var FiltrarTipo = function(filtros) {
      
        var jsonObject = {
            'action' : "GET-TIPOS"
        }


        $.ajax({
            type: "POST",
            url: "data/data.php",
            dataType: "json",
            data: jsonObject,
            contentType: "application/x-www-form-urlencoded",
            success: function(jsonRecieved) {
                // console.log(jsonRecieved.status);
                // console.log(jsonRecieved.data);

                // $('#test').text(jsonRecieved.data);

                var newHTML = "";





                $.each(jsonRecieved.data, function(st, dat){

                    newHTML += "<label class='custom-control custom-checkbox'>";
                    newHTML += "  <input type='checkbox' class='custom-control-input' checked='true'>";
                    newHTML += "  <span class='custom-control-indicator'></span>";
                    newHTML += "  <span class='custom-control-description'>"+dat+"</span>";
                    newHTML += "</label><br>";

                });


                $("#TipoFiltro").html(newHTML);

                $(':checkbox').change(function() {
                    if(this.checked){
                        var filter = this.closest('label').children[2].textContent;

                        if( filtros.indexOf(filter) >= 0 ){
                            filtros.splice( filtros.indexOf(filter), 1 );
                        }

                        loadProjects(filtros);

                        // console.log(filtros);
                    } else {

                        var filter = this.closest('label').children[2].textContent;

                        // console.log("......."+filter);

                        if( filtros.indexOf(filter) == -1 ){
                            // filtros.splice( filtros.indexOf(filter), 0, filter );
                            filtros.push( filter );
                        }

                        loadProjects(filtros);

                        // console.log(filtros);
                    }
                }); 

            },
            error: function(errorMsg){
                console.log(errorMsg.statusText);
            }
        });
    }

    FiltrarTipo(TiposF);    

    // $(':checkbox').change(function() {

    //     if(this.checked){
    //         console.log($(this).closest('label'));
    //     } else {
    //         console.log("notok");
    //     }

    // }); 

	// $( "#button-Rod" ).click(loadProjects());


	// $( "#login-Button").click(function(){

	// 	var user = $("#username").val();
	// 	var password = $("#pass").val();

	// 	var jsonObjectLogin = {
	// 		'action' : "LOGIN",
	// 		'user'	  : user,
	// 		'pass1'  : password
	// 	}

 //        $.ajax({
 //            type: "POST",
 //            url: "data/data.php",
 //            dataType: "json",
 //            data: jsonObjectLogin,
 //            contentType: "application/x-www-form-urlencoded",
 //            success: function(jsonRecieved) {


 //            	console.log(jsonRecieved);

 //            	if (jsonRecieved.status == "SUCCESS"){
 //            		alert("AHUEVOOO"); //SU CODIGO AQUI
 //            		window.location.replace("projects.html");

 //            	}
 //            	else
 //            		alert("WRONG");


 //            },
 //            error: function(errorMsg){
 //                console.log(errorMsg);
 //            }
 //        });

	// });


});


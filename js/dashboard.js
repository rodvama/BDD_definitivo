//---------Obtener proyectos para dashboard---------
$( document ).ready(function() {
    // id = "project";
    //resolver que en cuanto cargue la pagina y no 
    //presiones boton, se haga el de project.
    $('.dash').click(function () {

        id = $(this).attr('id');

        switch (id){
            case 'project': {
                var jsonObject = {
                'action' : "GET-PROJECTS-DASH",
                'page' : "project",
                };
                console.log("creating jsonObject project");
                break;
            }
            case "document": {
                // var jsonObject = {
                // 'action' : "GET-PROJECTS-DASH",
                // 'page' : "document",
                // };
                console.log("doc");
                break;
            } 
            case "sessions": {
                // var jsonObject = {
                // 'action' : "GET-PROJECTS-DASH",
                // 'page' : "sessions",
                // };
                console.log("sess");
                break;
            }
        }
     
        $.ajax({
            type: "POST",
            url: "data/data.php",
            dataType: "json",
            data: jsonObject,
            contentType: "application/x-www-form-urlencoded",
            success: function(jsonRecieved) {
                var newHTML = "";

                $.each(jsonRecieved.data, function(st, dat){

                    newHTML+=  "  <div class='col-4'>";
                    newHTML+=  "     <div class='card' >";
                    newHTML+=  "            <img class='card-img-top'  src='http://localhost/BDD_definitivo/img/prim/"+dat.ImagenA+"'' alt='"+dat.TituloA+"'>";
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
    });
});
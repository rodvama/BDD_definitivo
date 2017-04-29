$( document ).ready(function() {

    //--------------------Paginacion------------
    var TiposF = new Array();
    var currPage = 1;
    var maxPage = 0;

    $( "#PrevB" ).click(function(){ //Pagina anterior
        currPage--;
        loadProjects(TiposF, currPage);
    });

    $( "#NextB" ).click(function(){ //Pagina Siguiente
        currPage++;
        loadProjects(TiposF, currPage);
    }); 

    var Paginar = function(PageNum, maxPage){
        var newHTML2 = ""
        for (i = 1; i <= PageNum; i++) { 
            newHTML2 += "<button type='button' "
            if(i == currPage){
                newHTML2+= "style='font-weight: 900' "
            }
            newHTML2 += "aria-label='Page "+i+"' class='btn btn-outline-primary'>"+i+"</button>";
        }

        $( "#PageB" ).html(newHTML2);


        $( "#PageB > :button" ).click(function(){
            currPage = this.innerText;
            loadProjects(TiposF, currPage);
        });

        if(currPage > 1){
            $("#PrevB").attr('hidden', false);
        } else {
            $("#PrevB").attr('hidden', true);
        }

        if(currPage < maxPage){
            $("#NextB").attr('hidden', false);
        } else {
            $("#NextB").attr('hidden', true);
        }    
    };  
    var loadProjects = function(filtros, page) {
        console.log("page: "+page);
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

                var start = (page-1)*15
                $.each(jsonRecieved.data.slice(start, start+15), function(st, dat){

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

                maxPage = jsonRecieved.data.length/15;            

                Paginar(Math.ceil(maxPage), maxPage);
            },
            error: function(errorMsg){
                console.log(errorMsg.statusText);
            }
        });
    };
    loadProjects(TiposF,currPage);
    var FiltrarTipo = function(filtros) {
      
        var jsonObject = {
            'action' : "GET-TIPOS"
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
                        currPage = 1;
                        loadProjects(filtros, currPage);

                        // console.log(filtros);
                    } else {

                        var filter = this.closest('label').children[2].textContent;

                        // console.log("......."+filter);

                        if( filtros.indexOf(filter) == -1 ){
                            // filtros.splice( filtros.indexOf(filter), 0, filter );
                            filtros.push( filter );
                        }
                        currPage = 1;
                        loadProjects(filtros, currPage);

                        // console.log(filtros);
                    }
                }); 

            },
            error: function(errorMsg){
                console.log(errorMsg.statusText);
            }
        });
    };
    FiltrarTipo(TiposF);    
});
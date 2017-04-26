<?php 

// Este es el template para los proyectos
// Show them all!

// 1. Abrir una conexion a la base de datos
// 2. Ejecutar el query contra la base de datos
// 3. Obtener los results
// 4. Print them

require('connectdb.php');

$query = "SELECT * FROM proyectos";
// Abrir la conexion a la base de datos

$connect = connectDB("localhost", "root", "", "prueba");
// Ejecuto el query

$result = $connect->query($query);

$connect->close();


 ?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="icon" href="favicon.ico">-->

    <!-- DISABLE CACHE (SHOULD BE ELIMINATED IN RELEASE VERSION) ->
    <meta http-equiv="cache-control" content="max-age=0" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="pragma" content="no-cache" />
    <! END CACHE -->

    <title>Project Hub | Tecnologico de Monterrey</title>

    <!-- Bootstrap core CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Lato" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Droid+Serif">
    <link href="css/project.css" rel="stylesheet">
    <link href="css/background.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!--<link href="carousel.css" rel="stylesheet">-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">                        

  </head>

    <!--IMPORTANT! READ TO UNDERSTAND BOOTSTRAP 4  -->
    <!--https://v4-alpha.getbootstrap.com/getting-started/introduction/-->

    <!-- READ GRID SYSTEM  -->
    <!--https://v4-alpha.getbootstrap.com/layout/grid/-->


     <!--Font awesome instaled!!  -->
     <!--http://fontawesome.io/icons/-->

  <body>
    <nav id="navbarMain" class="navbar navbar-toggleable-md navbar-inverse fixed-top">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="nav navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.html">INICIO <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">PROYECTOS</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">LOG IN</a>
          </li>
        </ul>
      </div>
    </nav>
    
    <section class="jumbotron text-center">
      <div id="descubre" class="descubre-container" >
        <h1 class="jumbotron-heading">¡Nuestros Proyectos!</h1>
        <p class="lead text-muted">Descubre todos los proyectos que se estan desarrollando<br></br></p>
      </div>

      <div id="accordion" role="tablist" aria-multiselectable="true">
        <div class="card">
          <div class="card-header" role="tab" id="headingOne">
            <h5 class="mb-0">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                Filtrar
              </a>
            </h5>
          </div>
        </div>
        
          <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne">
            <div class="card-block">
              <div class="row">
                <div class="col-4">
                  <h4>Tipo de Proyecto</h4>
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Proyecto Integrador</span>
                  </label>
                  
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Proyecto Semana i</span>
                  </label>
                  
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Proyecto de Curso Academico</span>
                  </label>
                  
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Proyecto Extra-academico</span>
                  </label>
                </div>
                
                <div class="col-4">
                  <h4>Area de Innovacion</h4>
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Check this custom checkbox</span>
                  </label>
                  
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Check this custom checkbox</span>
                  </label>
                  
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Check this custom checkbox</span>
                  </label>
                  
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Check this custom checkbox</span>
                  </label>
                  
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Check this custom checkbox</span>
                  </label>
                  
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Check this custom checkbox</span>
                  </label>
                  
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Check this custom checkbox</span>
                  </label>
                </div>
                
                <div class="col-4">
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Check this custom checkbox</span>
                  </label>
                </div>
              </div>  
              </div>
          </div>



    </section>
    
    <section id= "categorias">
      <div class="container">

        <div class="row">
		
          <?php while($row = mysqli_fetch_assoc($result)): ?>
              <div class="col-4">
                <div class="card" >
				  <img class="card-img-top"  src="http://localhost/pry/img/prim/<?php echo $row['image_name']; ?>" alt="Card image cap">
                  <div class="card-block">
                    <h4 class="card-title"><?= $row['Titulo']; ?></h4>
                    <p class="card-text"><?= $row['Descripcion']; ?></p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                  </div>
                </div>
              </div>
		  <?php endwhile; ?>
		  
		  <div class="col-4">
            <div class="card" >
              <img class="card-img-top" src="img/Black.jpg" alt="Card image cap">
              <div class="card-block">
                <h4 class="card-title">Card title</h4>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>
          </div>
          
	  
        </div>
      </div>
    </section>


    <footer id="footer" class=''>
      <div class="container">
        <div class='row'>
          <div class="col-md-4">
            <img src= "img/logoblanco.png"/>
          </div>

          <div class="col-md-4">
            <p>Av. Eugenio Garza Sada 2501 Sur,</p>
            <p>Tecnológico, 64849 Monterrey, N.L.</p>
          </div>

           <div class="col-md-4">
             <p>helloworld@example.com</p>
             <p>+52 (81) 1516 1718</p>
          </div>

        </div>
      </div><!-- /.container -->
    </footer>



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!--<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>-->
    <!--<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>-->
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>-->
 
    
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>
    <!--<script src="js/projecto.js"></script>-->
    <!--<script src="js/transition.js"></script>-->
    <!--<script src="js/background.js"></script>-->
    <!--<script src="js/core.js"></script>-->
     
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>

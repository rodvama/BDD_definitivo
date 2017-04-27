<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Product+Sans" rel="stylesheet">
    <link href="css/project.css" rel="stylesheet" type="text/css">
    <link href="css/main.css" rel="stylesheet" type="text/css">
    <link href="css/background.css" rel="stylesheet" type="text/css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Lato" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Droid+Serif">
    <!-- Scripts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <script src="js/core.js"></script>
    <script src="js/transition.js"></script>
    <script src="js/background.js"></script>
    <script src="js/projecto.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>




 <title>Innovaction - Dashboard</title>
    <!-- Navigation Bar -->
    <?php include 'nav.php';?>
  </head>


<body class="main" ng-app="rootApp">

<?php include 'sidebar.php';?>
<?php include 'search.php';?>

<!--MAIN CONTAINER-->
<div class="mainContainer">

<!-- <div class="InicioFlag">
<div class="flag"> <p>Mis Proyectos</p></div>
</div> -->

    <section id= "categorias">

        <div class="card">
            <h2>Mis Proyectos</h2>
        </div>
      <div class="container">
        <div class="row">
          
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
<!-- MAIN CONTAINER END-->


<?php include 'user_modal.php';?>

</body>
</html>

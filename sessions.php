<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Product+Sans" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- Scripts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
    <script src="js/core.js"></script>
    <script src="js/transition.js"></script>
    <script src="js/background.js"></script>
    <script src="js/projecto.js"></script>
 
   <title>Innovaction - Dashboard</title>
    <!-- Navigation Bar -->
    <?php include 'nav.php';?>
  </head>


<body class="main" ng-app="rootApp">

<?php include 'sidebar.php';?>
<?php include 'search.php';?>

 
<!--MAIN CONTAINER-->
<div class="mainContainer">
<div class="InicioFlag">
<div class="flag"> <p>Sesiones</p></div>
</div>
<div class="Content">
<style type="text/css">
ul
{
    list-style-type:none;
    padding:0px;
    margin:0px;
}
li
{
    background-image:url(sqpurple.gif);
    background-repeat:no-repeat;
    background-position:0px 5px;
    padding-left:14px;
}
</style>
    <!-- Aqui empieza el accordion principal-->
    <div id="accordion" role="tablist" aria-multiselectable="true">
        <div class="card">
         <div class="card-header" role="tab" id="headingMain">
          <class="mb-0">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseMain" aria-expanded="true"
            aria-controls="collapseMain">
            <h1>Proyecto 1</h1>
            </a>
 
            <div id="collapseMain" class="collapse" role="tabpanel" aria-labelledby="headingMain">
                <ul>
                    <hr>
 
                   
                    <!-- Aqui empieza todo lo que se va a ocultar-->
                        <div id="accordion" role="tablist" aria-multiselectable="true">
                        <li>
                          <div class="card">
                            <div class="card-header" role="tab" id="headingOne">
                              <class="mb-0">
                              <div class="row">
                              <div class="col-md-11">
                                <h5 style="color:black;">Sesion1</h5>
                              </div>
                              <div class= "col-md-1">
                                 <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                  <h4 style="color:black">+</h4>
                                </a>
                              </div>
                              </div>
                              </div>
                            </div>
                            <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne">
                              <!-- Lo que se oculta-->
                              <div class="card-block" style="padding-left: 4%;">
                                <p>Nombre: </p>
                                <p>Lider: </p>
                                <p>Modulo de Innovacion: </p>
                                <p>Hora: </p>
                                <p>Lugar: </p>
                                <p>Descripcion: </p>
                              </div>
                              <!--Aqui termina lo que se oculta-->
                            </div>
                        </li>
 
                    <!-- Aqui termina todo-->
 
                    <hr>
                        <div id="accordion" role="tablist" aria-multiselectable="true">
                        <li>
                          <div class="card">
                            <div class="card-header" role="tab" id="headingTwo">
                              <class="mb-0">
                              <div class="row">
                              <div class="col-md-11">
                                <h5 style="color:black;">Sesion 2</h5>
                            </div>
                            <div class= "col-md-1">
                                 <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                  <h4 style="color:black">+</h4>
                                </a>
                            </div>
                              </div>
                              </div>
                            </div>
                            <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                              <div class="card-block" style="padding-left: 4%;">
                                <p>Nombre: </p>
                                <p>Lider: </p>
                                <p>Modulo de Innovacion: </p>
                                <p>Hora: </p>
                                <p>Lugar: </p>
                                <p>Descripcion: </p>
                              </div>
                            </div>
                        </li>
 
                    <hr>
                        <div id="accordion" role="tablist" aria-multiselectable="true">
                        <li>
                          <div class="card">
                            <div class="card-header" role="tab" id="headingThree">
                              <class="mb-0">
                              <div class="row">
                              <div class="col-md-11">
                                <h5 style="color:black;">Sesion 3</h5>
                            </div>
                            <div class= "col-md-1">
                                 <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                                  <h4 style="color:black">+</h4>
                                </a>
                            </div>
                              </div>
                              </div>
                            </div>
                            <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
                              <div class="card-block" style="padding-left: 4%;">
                                <p>Nombre: </p>
                                <p>Lider: </p>
                                <p>Modulo de Innovacion: </p>
                                <p>Hora: </p>
                                <p>Lugar: </p>
                                <p>Descripcion: </p>
                              </div>
                            </div>
                        </li>
 
                        </div>
                </ul>
            </div>
 
     <hr>      
 
    <!-- Aqui empieza el accordion principal-->
    <div id="accordion" role="tablist" aria-multiselectable="true">
        <div class="card">
         <div class="card-header" role="tab" id="headingMain2">
          <class="mb-0">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseMain2" aria-expanded="true"
            aria-controls="collapseMain2">
            <h1>Proyecto 2</h1>
            </a>
 
            <div id="collapseMain2" class="collapse" role="tabpanel" aria-labelledby="headingMain2">
                <ul>
                    <hr>
 
                   
                    <!-- Aqui empieza todo lo que se va a ocultar-->
                        <div id="accordion" role="tablist" aria-multiselectable="true">
                        <li>
                          <div class="card">
                            <div class="card-header" role="tab" id="headingFour">
                              <class="mb-0">
                              <div class="row">
                              <div class="col-md-11">
                                <h5 style="color:black;">Sesion1</h5>
                              </div>
                              <div class= "col-md-1">
                                 <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                                  <h4 style="color:black">+</h4>
                                </a>
                              </div>
                              </div>
                              </div>
                            </div>
                            <div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour">
                              <!-- Lo que se oculta-->
                              <div class="card-block" style="padding-left: 4%;">
                                <p>Nombre: </p>
                                <p>Lider: </p>
                                <p>Modulo de Innovacion: </p>
                                <p>Hora: </p>
                                <p>Lugar: </p>
                                <p>Descripcion: </p>
                              </div>
                              <!--Aqui termina lo que se oculta-->
                            </div>
                        </li>
 
                    <!-- Aqui termina todo-->
 
                    <hr>
                        <div id="accordion" role="tablist" aria-multiselectable="true">
                        <li>
                          <div class="card">
                            <div class="card-header" role="tab" id="headingFive">
                              <class="mb-0">
                              <div class="row">
                              <div class="col-md-11">
                                <h5 style="color:black;">Sesion 2</h5>
                            </div>
                            <div class= "col-md-1">
                                 <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
                                  <h4 style="color:black">+</h4>
                                </a>
                            </div>
                              </div>
                              </div>
                            </div>
                            <div id="collapseFive" class="collapse" role="tabpanel" aria-labelledby="headingFive">
                              <div class="card-block" style="padding-left: 4%;">
                                <p>Nombre: </p>
                                <p>Lider: </p>
                                <p>Modulo de Innovacion: </p>
                                <p>Hora: </p>
                                <p>Lugar: </p>
                                <p>Descripcion: </p>
                              </div>
                            </div>
                        </li>
 
                    <hr>
                        <div id="accordion" role="tablist" aria-multiselectable="true">
                        <li>
                          <div class="card">
                            <div class="card-header" role="tab" id="headingSix">
                              <class="mb-0">
                              <div class="row">
                              <div class="col-md-11">
                                <h5 style="color:black;">Sesion 3</h5>
                            </div>
                            <div class= "col-md-1">
                                 <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="true" aria-controls="collapseSix">
                                  <h4 style="color:black">+</h4>
                                </a>
                            </div>
                              </div>
                              </div>
                            </div>
                            <div id="collapseSix" class="collapse" role="tabpanel" aria-labelledby="headingSix">
                              <div class="card-block" style="padding-left: 4%;">
                                <p>Nombre: </p>
                                <p>Lider: </p>
                                <p>Modulo de Innovacion: </p>
                                <p>Hora: </p>
                                <p>Lugar: </p>
                                <p>Descripcion: </p>
                              </div>
                            </div>
                        </li>
 
                        </div>
                    <hr>
                </ul>
            </div>
 
</div>
 
 
 
 
<!-- MAIN CONTAINER END-->
 
<?php include 'user_modal.php';?>
 
</body>
</html>
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
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

  <!-- Estan de mas  
    <script src="js/core.js"></script>
    <script src="js/transition.js"></script>
    <script src="js/background.js"></script>
    <script src="js/projecto.js"></script> -->

  <!--   <script type="js/jquery-slim-min-js"></script>
    <script src="js/jquery-3.2.1.min.js" ></script>
    <script src="js/dashboard.js"></script> -->

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>

    <title>Innovaction - Dashboard</title>
    <!-- Navigation Bar -->
    <?php include 'nav.php';?>
  </head>


<body class="main" ng-app="rootApp" id="document">

<?php include 'sidebar.php';?>
<?php include 'search.php';?>

<!--MAIN CONTAINER-->
<div class="mainContainer">

<div class="InicioFlag">
<div class="flag"> <p>Documentos</p></div>

<div class="DocsContainer">

 <div class="choose_file">
        <span class="glyphicon glyphicon-cloud-upload"></span> <b> &nbsp; Subir Documentos </b>
        <input name="Select File" type="file" />
    </div>
<br><br>
  <table class="table">
    <thead>
      <tr>
        <th>Nombre del Documento</th>
        <th>Compartido Por</th>
        <th>Fecha de Subida</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Bases del Proyecto</td>
        <td>Pedro Garza</td>
        <td>12 de marzo</td>
      </tr>
      <tr>
        <td>Fase 1</td>
        <td>Moe Jones</td>
        <td>18 de abril</td>
      </tr>
      <tr>
        <td>Fase 1 - Revision</td>
        <td>Coordinador de proyecto</td>
        <td>12 de enero</td>
      </tr>
    </tbody>
  </table>

</div>
</div>

<!-- MAIN CONTAINER END-->

<?php include 'user_modal.php';?>  

</body>

</html>

<?php 

// Procesar y guardar en la base de datos los proyectos

if(!isset($_POST) || empty($_POST)) {
	die('Wrong method');
}


require('connectdb.php');


$connection = connectDB("localhost", "root", "", "prueba");


$query = "INSERT INTO proyectos(Titulo, Descripcion, FInicio, Duracion, IdCampus) VALUES(?, ?, ?, ?, ?)";

$stmt = $connection->prepare($query);
$stmt->bind_param("sssis", $_POST['titulo'], $_POST['descripcion'], $_POST['finicio'], $_POST['duracion'], $_POST['campus']);

$success = false;
if($stmt->execute()){
	$success = true;
} else {echo $stmt->error;}

    //Stores the filename as it was on the client computer.
    $imagename = $connection->query("SELECT MAX(IdProyecto) as ID from proyectos")->fetch_object()->ID;
	echo $connection->error;
    //Stores the filetype e.g image/jpeg
    $imagetype = $_FILES['pic']['type'];
    //Stores any error codes from the upload.
    $imageerror = $_FILES['pic']['error'];
    //Stores the tempname as it is given by the host when uploaded.
    $imagetemp = $_FILES['pic']['tmp_name'];

    //The path you wish to upload the image to
    $imagePath = __DIR__."/img/prim/";
	
	$finalname = $imagename.".".basename($imagetype);
    
	if(is_uploaded_file($imagetemp)) {
        if(move_uploaded_file($imagetemp, $imagePath.$finalname)) {
            echo "Successfully uploaded your image.";
			$connection->query("UPDATE proyectos SET image_name = \"$finalname\" WHERE IdProyecto = $imagename");
        }
        else {
            echo "Failed to move your image. Error:";
			print_r(error_get_last());
        }
    }
	else if ($imageerror == 4){
		echo "No image selected.";
		$connection->query("UPDATE proyectos SET image_name = \"0.png\" WHERE IdProyecto = $imagename");
	}
    else {
        echo "Failed to upload your image. Error: ";
		echo $imageerror;
    }

	
$stmt->close();
$connection->close();

if($success)
	echo " Successfully stored project";
else
	echo " Failed to store project";

?>
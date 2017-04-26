<?php 
if(!isset($_POST) || empty($_POST)) {
	die('Wrong method');
}

require('connectdb.php');


$connection = connectDB("localhost", "root", "", "proyecto");

// GET
// POST




// Agarrar lo que te manda el form
// Guardarlo en la base de datos


$query = "DELETE FROM proyectos WHERE IdProyecto = ?";

$stmt = $connection->prepare($query);
$stmt->bind_param("i", $_POST['id']);

$success = false;
if($stmt->execute()){
	$success = true;
}



$stmt->close();
$connection->close();

if($success)
	echo json_encode(['code' => 200, 'success' => 'success']);
else
	echo json_encode(['code' => 404, 'msg' => 'Could not successfully delete project']);
?>
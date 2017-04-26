<?php

	$action = $_POST['action'];

	switch ($action) {
		case 'GET-PROJECTS':
			displayProjects();
			break;
		case 'LOGIN':
			verifyLogin();
			break;
		case 'GET-TIPOS':
			getTipos();
		
		default:
			# code...
			break;
	}

	function db_connect(){
		$host = "localhost";
		$dbname = "prueba";
		$user = "root";
	 	$pass = "";
    	$dsn = "mysql:host=$host;dbname=$dbname";
    	$opt = array(
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
	    return new PDO($dsn,$user,$pass, $opt);
	}


	function GetTipos(){
		try{

			$pdo = db_connect();
			$getTipos = $pdo->query("SELECT Nombre from tipo_de_proyecto");
			$getTipos -> setFetchMode(PDO::FETCH_ASSOC);

		    $allTipos = array();
		    $i = 0;
		    while ($row = $getTipos->fetch() ){
		    	$allTipos[$i] = $row['Nombre'];
		    	$i++;
		    }

		    $allData = array(	"status" 	=> "SUCCESS",
		    					"data"		=> $allTipos);

		    echo json_encode($allData);


		}
		catch(PDOException $e){
			echo $e->getMessage();
		}
		$pdo = null;
	}

	function displayProjects(){
		try{

			$pdo = db_connect();

			$filtros = $_POST['filtros'];
			$json = (array) json_decode($filtros,true);

			$sa = "('" . implode("','", $json) . "')";

			$getProjects = $pdo->query("SELECT * from Proyectos 
										LEFT JOIN son_de ON Proyectos.IdProyecto = son_de.IdProyecto
										LEFT JOIN tipo_de_proyecto ON son_de.IdTipo = tipo_de_proyecto.IdTipo
										WHERE tipo_de_proyecto.Nombre NOT IN $sa");
			$getProjects -> setFetchMode(PDO::FETCH_ASSOC);

		    // echo ('<table style="width:auto">');
		    // echo ('<tr>');
		    // echo ('<th> ID </th>');
		    // echo ('<th> Titulo </th>');
		    // echo ('<th> Descripcion </th>');
		    // echo ('<th> Fecha de Inicio </th>');
		    // echo ('<th> Duracion </th>');
		    // echo ('<th> IDCampus </th>');
		    // echo ('<th> ImageName </th>');
		    // echo ('</tr>');	

		    // while ($row = $getProjects->fetch() ){
		    // 	echo ('<tr>');
		   	// 	echo ('<td>'.$row['IdProyecto'] .'</td>');
		   	// 	echo ('<td>'.$row['Titulo'] .'</td>');
		   	// 	echo ('<td>'.$row['Descripcion'] .'</td>');
		   	// 	echo ('<td>'.$row['FInicio'] .'</td>');
		   	// 	echo ('<td>'.$row['Duracion'] .'</td>');
		   	// 	echo ('<td>'.$row['IdCampus'] .'</td>');
		   	// 	echo ('<td>'.$row['image_name'] .'</td>');
		   	// 	echo ('</tr>');
		    // }		

		    $allProyects = array();
		    $i = 0;
		    while ($row = $getProjects->fetch() ){
		    	$response = array( 	
		    						"TituloA" 	=> $row['Titulo'],
		    						"DescripcionA"		=> $row['Descripcion'],
		    						"ImagenA" 	=> $row['image_name'] );

		    	$allProyects[$i] = $response;
		    	$i++;
		    }

		    $allData = array(	"status" 	=> "SUCCESS",
		    					"data"		=> $allProyects);

		    echo json_encode($allData);


		}
		catch(PDOException $e){
			echo $e->getMessage();
		}
		$pdo = null;
	}

	function verifyLogin(){

		$user = $_POST['user'];
		$password =  $_POST['pass1'];


		try{

			$pdo = db_connect();
			$loginPdo = $pdo->prepare("SELECT * from usuarios WHERE Nomina = :username AND Contrasena = :password ");

	    	$loginPdo->bindParam(':username', $user );	
	    	$loginPdo->bindParam(':password', $password );	
	    	$loginPdo->execute();
			$loginPdo -> setFetchMode(PDO::FETCH_ASSOC);

			if ($loginPdo->rowCount() == 1 ){
				$response = array ( "status" => "SUCCESS");
			}
			else
				$response = array ("status" => "FALSE");

			echo json_encode($response);


		}


		catch(PDOException $e){
			echo $e->getMessage();
		}


		$pdo = null;

	}

	// echo "Hola" ;

	// displayProjects();
?>

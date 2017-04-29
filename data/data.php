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
			break;
		// case 'SESSIONS':
		// 	keepSession();
		// 	break;
		case 'GET-PROJECTS-DASH':
		{
			$page = $_POST['page'];
			getProjectsDash($page);
			break;
		}
		default:
			# code...
			break;
	}
	//---------------------db_connect----------
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
	//--------------------GetTipos------------
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
	//------------------displayProjects-------
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

		    $allProyects = array();
		    $i = 0;
		    while ($row = $getProjects->fetch() ){
		    	$response = array( 	
		    						"TituloA" 		=> $row['Titulo'],
		    						"DescripcionA"	=> $row['Descripcion'],
		    						"ImagenA" 		=> $row['image_name'] );

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
	//------------------verifyLogin-----------
	function verifyLogin(){

		$user = $_POST['user'];
		$password =  $_POST['pass1'];

		try{

			$pdo = db_connect();
			$loginPdo = $pdo->prepare("SELECT * from usuarios WHERE Correo = :username AND Contrasena = :password ");

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
	// //------------------keepSession-----------
	// function keepSession(){

	// 	ini_set("session.use_cookies","1");  
	// 	ini_set("session.use_only_cookies","1");  
	// 	ini_set("session.use_trans_sid","0");  
	// 	session_start();  
	// 	header("Cache-control:private");


	// 	if (isset($_SESSION['autentificado_socio'])) 
	// 	{  
	// 	    echo "Bienvenido Sr(a) "$_SESSION['NombreSocio']; 
	// 	} 
	// 	else 
	// 	{ 
	// 	    header("Location: index2.php"); 
	// 	    exit; 
	// 	} 

	// }

	//-----------getProjectDash()---------
	function getProjectsDash($page) {
			try {
				
				$pdo = db_connect();

				//Usuario de prueba
				$username = 'A00123123';

				switch ($page) {
					case 'project':
					{	
						$getProjects = $pdo->query("SELECT * FROM proyectos WHERE proyectos.IdProyecto IN( 
							SELECT IdProyecto FROM colabora_en WHERE colabora_en.Nomina_Matricula = $username)");

						$getProjects -> setFetchMode(PDO::FETCH_ASSOC);	
		    			$allProyects = array();
		    			$i = 0;
		    			while ($row = $getProjects->fetch() ){
		    			$response = array( 	
		    						"TituloA" 		=> $row['Titulo'],
		    						"DescripcionA"	=> $row['Descripcion'],
		    						"ImagenA" 		=> $row['image_name'] );

		    			$allProyects[$i] = $response;
		    			$i++;
		    			}
						break;
					}
					// case 'document':
					// {
					// 	break;
					// }
					// case 'sessions':
					// {
					// 	break;
					// }
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
	?>
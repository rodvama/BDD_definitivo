<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Proyectos</title>
	<style>
		body {
			font-family: sans-serif;
		}
		input, textarea {
			display: block;
			resize: none;
			width: 100%;
		}
		label{
			margin-top: 30px;
			display: block;
		}
		select {
			width: 100%;
			margin-bottom: 30px;
			height: 40px;
		}
		input[type="submit"] {
			width: initial;
		}
		.container {
			margin: 0 auto;
			width: 60%;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>Proyectos</h1>
		<p>Demo de como insertar a la base de datos</p>
		<form enctype="multipart/form-data" action="processProyectos.php" method="post">
			<label for="titulo">T&iacute;tulo:</label>
			<input type="text" id="titulo" name="titulo" />
			<label for="descripcion">Descripci&oacute;n</label>
			<textarea name="descripcion"></textarea>
			<label for="finicio">Fecha de inicio:</label>
			<input type="text" id="finicio" name="finicio" />
			<label for="duracion">Duraci&oacute;n:</label>
			<input type="text" id="duracion" name="duracion" />
			<label for="Campus">Campus:</label>
			<select name="campus" id="campus">
				<option value="CVE">Cuernavaca</option>
				<option value="MTY">Monterrey</option>
			</select>
    		<!-- MAX_FILE_SIZE debe preceder al campo de entrada del fichero -->
			<input type="hidden" name="MAX_FILE_SIZE" value="3000000" />
			<!-- El nombre del elemento de entrada determina el nombre en el array $_FILES -->
			<input name='pic' type="file" />
			<input type="submit" value="Submit">
		</form>
	</div>
</body>
</html>
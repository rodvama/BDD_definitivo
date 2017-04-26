-- transaccion editar perfil
-- aqui iria algo similar a lo de editar proyectos pero con usuario..
-- transaccion editar proyectos

SELECT * 
FROM `solicitudes`;

--busqueda de proyectos Areas

SELECT IdProyecto
FROM `delimita`,`areas_de_innovacion`
WHERE delimita.IdInnovacion = [OPCION DEL USUARIO]
AND delimita.IdInnovacion = areas_de_innovacion.IdInnovacion;


--busqueda de alumnos

SELECT Nombre, Apellidos, Correo
FROM `usuarios`
WHERE Nombre = [OPCION DEL USUARIO]
OR Nomina/Matricula = [OPCION DEL USUARIO];

--busqueda de profesores

SELECT Nombre, Apellidos, Correo
FROM `usuarios`
WHERE Nombre = [OPCION DEL USUARIO]
OR Nomina/Matricula = [OPCION DEL USUARIO];

--filtracion de busqueda por tipos

SELECT IdProyecto
FROM `son_de`, `tipo_de_proyecto`
WHERE son_de.IdTipo = [LA OPCION DEL USUARIO]
AND son_de.IdTipo = tipo_de_proyecto.IdTipo;


-- busqueda por competencias

SELECT Competencias.[IDCompetencia]
WHERE IDCompetencia == valorinputdelusuario
FROM Competencias;

-- busqueda por intereses

SELECT Intereses.[IDInteres]
WHERE IDIntereses == valorinpotdelusuario
FROM Intereses;

-- busqueda por departamentos

SELECT Departamentos.[IDDepartamento], Departamentos.[Nom_Depa], Departamentos.[IdCampus]
WHERE IdDepartamento == valorinputdelusuario
FROM Departamentos;



BEGIN TRANS

WHERE Proyecto.IdProyecto == ValorqueryID
if bool titulo == true ( ? ) //osea que busca editar el titulo
Proyecto.Titulo = Valor

if bool Descripccion == true 
proyecto.destripcion = valornuevo

if bool diaini == true
proyecto.diaini= valor

if bool mesini== true
proyecto.mesini= valor

if bool yearini== true
proyecto.yearini= valor

if bool duracion == true
prouecto.duracion =valor

if bool idcampus == true
proyecto.idcampus = valor

if bool ocupa == true
proyecto.ocupa = valor

COMMIT TRANS

-- Query Visualizar Proyectos
SELECT Proyectos.[IdProyecto], Proyectos.[Titulo], Proyectos.[Descripcion], Proyectos.[Dia de Inicio], Proyectos.[Mes de Inicio], Proyectos.[Year de Inicio], Proyectos.[Duracion], Proyectos.[IDCampus], Proyectos.[Ocupa]
FROM Proyectos;

-- transaccion aprobar proyectos

BEGIN TRANS
(NEW ?) PROYECTO -- > insert PROYECTO(IdProyecto(valor1),Titulo(valor),Descripccion(valor), DiaIni(valor), MesIni(valor), yearIni(Valor), duracion(valor), IdCampus(valor), Ocupa(valor)
COMMIT TRANS
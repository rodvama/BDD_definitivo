-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql313.byethost6.com
-- Generation Time: Apr 06, 2017 at 01:26 PM
-- Server version: 5.6.35-80.0
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `b6_19917597_practica1`
--

-- --------------------------------------------------------


CREATE TABLE IF NOT EXISTS `Departamentos` (
  `IdDepartamento` char(3) NOT NULL,
  `Nom_Depa` text NOT NULL,
  `IdCampus` char(3) NOT NULL,
  PRIMARY KEY (`IdCampus`,`IdDepartamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Ubicacion` (
  `IdCampus` char(3) NOT NULL,
  `NmCiudad` text NOT NULL,
  PRIMARY KEY (`IdCampus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Proyectos` (
  `IdProyecto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `FInicio`  date NOT NULL,
  `Duracion` int(11) NOT NULL,
  `IdCampus` char(3) NOT NULL,
  `image_name` TINYTEXT,
  PRIMARY KEY (`IdProyecto`),
  FOREIGN KEY (`IdCampus`) REFERENCES Ubicacion(`IdCampus`),
  UNIQUE (`Titulo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- INSERT INTO proyectos(Titulo, Descripcion, FInicio, Duracion, IdCampus) VALUES
-- ('Proyecto 1', 'Descripcion del proyecto', '2015-08-23', 20, 'MTY', 10),
-- ('Proyecto 2', 'Descripcion del proyecto', '2015-08-23', 20, 'MTY', 10),
-- ('Proyecto 3', 'Descripcion del proyecto', '2015-08-23', 20, 'MTY', 10),
-- ('Proyecto 4', 'Descripcion del proyecto', '2015-08-23', 20, 'MTY', 10),
-- ('Proyecto 5', 'Descripcion del proyecto', '2015-08-23', 20, 'MTY', 10) ;

CREATE TABLE IF NOT EXISTS `Archivos` (
  `IdArchivo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL DEFAULT '',
  `Proyecto` int(11) NOT NULL,
  `Descripcion_Reporte` text,
  `Minuta_Reporte` text,
  `FeSubida` datetime NOT NULL DEFAULT NOW(),
  `Nomina/Matricula` varchar(20) NOT NULL, 
  PRIMARY KEY (`IdArchivo`),
  FOREIGN KEY (`Proyecto`) REFERENCES Proyectos(`IdProyecto`),
  FOREIGN KEY (`Nomina/Matricula`) REFERENCES Usuarios(`Nomina/Matricula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Usuarios` (
  `Nomina/Matricula` varchar(20) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellidos` text NOT NULL,
  `Correo` text NOT NULL,
  `Contrasena` text NOT NULL,
  `IdDepartamento` char(3) NOT NULL,
  `image_id` int(11) DEFAULT 0,
  PRIMARY KEY (`Nomina/Matricula`),
  FOREIGN KEY (`IdDepartamento`) REFERENCES Departamentos(`IdDepartamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Solicitudes` (
  `IdSolicitudes` int(11) NOT NULL,
  `Estatus` int(11) NOT NULL COMMENT 'No hay yes/no',
  `Proyecto` int(11) NOT NULL,
  `Nomina/Matricula` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`IdSolicitudes`),
  FOREIGN KEY (`Nomina/Matricula`) REFERENCES Usuarios(`Nomina/Matricula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `Intereses` (
  `IdInteres` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  PRIMARY KEY(`IdInteres`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Areas de Innovacion`
--

CREATE TABLE IF NOT EXISTS `Areas_de_Innovacion` (
  `IdInnovacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY(`IdInnovacion`),
  UNIQUE (`nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Autoriza`
--

CREATE TABLE IF NOT EXISTS `Autoriza` (
  `IdProyecto` int(11) NOT NULL,
  `Nomina/Matricula` varchar(20) NOT NULL,
  `FeAutorizada` date NOT NULL,
  PRIMARY KEY (`Nomina/Matricula`,`FeAutorizada`),
  FOREIGN KEY (`IdProyecto`) REFERENCES Proyectos(`IdProyecto`),
  FOREIGN KEY (`Nomina/Matricula`) REFERENCES Usuarios(`Nomina/Matricula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Busca`
--

CREATE TABLE IF NOT EXISTS `Busca` (
  `IdSolicitudes` int(11) NOT NULL,
  `IdInteres` int(11) NOT NULL,
  PRIMARY KEY (`IdSolicitudes`,`IdInteres`),
  FOREIGN KEY (`IdSolicitudes`) REFERENCES Solicitudes(`IdSolicitudes`),
  FOREIGN KEY (`IdInteres`) REFERENCES Intereses(`IdInteres`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Comparten`
--
CREATE TABLE IF NOT EXISTS `Competencias` (
  `IdCompetencia` varchar(50) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL,
  PRIMARY KEY (`IdCompetencia`),
  UNIQUE (`Nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `Comparten` (
  `IdProyecto` int(11) NOT NULL,
  `IdCompetencia` varchar(50) NOT NULL,
  PRIMARY KEY (`IdProyecto`,`IdCompetencia`),
  FOREIGN KEY (`IdProyecto`) REFERENCES Proyectos(`IdProyecto`),
  FOREIGN KEY (`IdCompetencia`) REFERENCES Competencias(`IdCompetencia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `Equipo` (
  `IdEquipo` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  PRIMARY KEY (`IdEquipo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Table structure for table `Conforman`
--

CREATE TABLE IF NOT EXISTS `Conforman` (
  `IdEquipo` int(11) NOT NULL,
  `Nomina/Matricula` varchar(20) NOT NULL,
  PRIMARY KEY (`IdEquipo`, `Nomina/Matricula`),
  FOREIGN KEY (`IdEquipo`) REFERENCES Equipo(`IdEquipo`),
  FOREIGN KEY (`Nomina/Matricula`) REFERENCES Usuarios(`Nomina/Matricula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Crea`
--

CREATE TABLE IF NOT EXISTS `Crea` (
  `IdProyecto` int(11) NOT NULL,
  `Nomina/Matricula` varchar(20) NOT NULL,
  PRIMARY KEY (`IdProyecto`,`Nomina/Matricula`),
  FOREIGN KEY (`IdProyecto`) REFERENCES Proyectos(`IdProyecto`),
  FOREIGN KEY (`Nomina/Matricula`) REFERENCES Usuarios(`Nomina/Matricula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Delimita`
--

CREATE TABLE IF NOT EXISTS `Delimita` (
  `IdProyecto` int(11) NOT NULL,
  `IdInnovacion` varchar(50) NOT NULL,
  PRIMARY KEY (`IdProyecto`,`IdInnovacion`),
  FOREIGN KEY (`IdProyecto`) REFERENCES Proyectos(`IdProyecto`),
  FOREIGN KEY (`IdInnovacion`) REFERENCES Areas_de_Innovacion(`IdInnovacion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------


--
-- Table structure for table `Le_Interesa`
--

CREATE TABLE IF NOT EXISTS `Le_Interesa` (
  `IdInteres` int(11) NOT NULL,
  `Nomina/Matricula` varchar(20) NOT NULL,
  PRIMARY KEY (`IdInteres`,`Nomina/Matricula`),
  FOREIGN KEY (`IdInteres`) REFERENCES Intereses (`IdInteres`),
  FOREIGN KEY (`Nomina/Matricula`) REFERENCES Usuarios (`Nomina/Matricula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Metas`
--

CREATE TABLE IF NOT EXISTS `Metas` (
  `IdMetas` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` text NOT NULL,
  `Descripcion` text,
  `FeLimite` DATE,
  `FeCumplida` DATE,
  `Cumplida` bit DEFAULT 0,
  `Proyecto` int(11) NOT NULL,
  `IdSesion` int,
  `IdResultados` int,
  `IdInnovacion` int,
  PRIMARY KEY (`IdMetas`),
  FOREIGN KEY (`Proyecto`) REFERENCES Proyectos(`IdProyecto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Participan`
--

CREATE TABLE IF NOT EXISTS `Participan` (
  `IdProyecto` int(11) NOT NULL,
  `IdEquipo` int(11) NOT NULL,
  PRIMARY KEY(`IdProyecto`, `IdEquipo`),
  FOREIGN KEY (`IdProyecto`) REFERENCES Proyectos(`IdProyecto`),
  FOREIGN KEY (`IdEquipo`) REFERENCES Equipo(`IdEquipo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Pertenece_A`
--

CREATE TABLE IF NOT EXISTS `Pertenece_A` (
  `IdProyecto` int(11) NOT NULL,
  `IdDepartamento` char(3) NOT NULL,
  PRIMARY KEY (`IdProyecto`,`IdDepartamento`),
  FOREIGN KEY (`IdProyecto`) REFERENCES Proyectos(`IdProyecto`),
  FOREIGN KEY (`IdDepartamento`) REFERENCES Departamentos(`IdDepartamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Posee`
--

CREATE TABLE IF NOT EXISTS `Posee` (
  `IdCompetencia` varchar(50) NOT NULL,
  `Nomina/Matricula` varchar(20) NOT NULL,
  PRIMARY KEY (`IdCompetencia`,`Nomina/Matricula`),
  FOREIGN KEY (`IdCompetencia`) REFERENCES Competencias(`IdCompetencia`),
  FOREIGN KEY (`Nomina/Matricula`) REFERENCES Usuarios (`Nomina/Matricula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Requiere`
--

CREATE TABLE IF NOT EXISTS `Requiere` (
  `IdCompetencia` varchar(50) NOT NULL,
  `IdSolicitudes` int(11) NOT NULL,
  PRIMARY KEY (`IdCompetencia`,`IdSolicitudes`),
  FOREIGN KEY (`IdCompetencia`) REFERENCES Competencias(`IdCompetencia`),
  FOREIGN KEY (`IdSolicitudes`) REFERENCES Solicitudes(`IdSolicitudes`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Resultados`
--

CREATE TABLE IF NOT EXISTS `Resultados` (
  `IdResultados` int(11) NOT NULL,
  `Proyecto` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Rol`
--

CREATE TABLE IF NOT EXISTS `Rol` (
  `idrol` int(11) NOT NULL,
  `descripcion` text,
  `IdProyecto` int(11) NOT NULL,
  `Nomina/Matricula` varchar(20) NOT NULL,
  PRIMARY KEY (`idrol`),
  FOREIGN KEY (`IdProyecto`) REFERENCES Proyectos(`IdProyecto`), 
  FOREIGN KEY (`Nomina/Matricula`) REFERENCES Usuarios (`Nomina/Matricula`) 
)ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Colabora_en` (
  `Nomina/Matricula` varchar(20) NOT NULL,
  `IdProyecto` int(11) NOT NULL,
  `Rol` int(11) ,
  PRIMARY KEY (`Nomina/Matricula`,`IdProyecto`),
  FOREIGN KEY (`Nomina/Matricula`) REFERENCES Usuarios (`Nomina/Matricula`) ,
  FOREIGN KEY (`IdProyecto`) REFERENCES Proyectos (`IdProyecto`) 
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Sesiones`
--

CREATE TABLE IF NOT EXISTS `Sesiones` (
  `IdSesion` int(11) NOT NULL,
  `Descripcion` text NOT NULL,
  `HoraIni` int(11) NOT NULL,
  `MinutoIni` int(11) NOT NULL,
  `Duracion` int(11) NOT NULL,
  `Proyectos` int(11) NOT NULL,
  `Genera_Reporte` int(11) NOT NULL,
  PRIMARY KEY (`IdSesion`),
  FOREIGN KEY (`Proyectos`) REFERENCES Proyectos(`IdProyecto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Son_de`
--

CREATE TABLE IF NOT EXISTS `Son_de` (
  `IdProyecto` int(11) NOT NULL,
  `IdTipo` int(11) NOT NULL,
  PRIMARY KEY (`IdProyecto`,`IdTipo`),
  FOREIGN KEY (`IdProyecto`) REFERENCES Proyectos(`IdProyecto`),
  FOREIGN KEY (`IdTipo`) REFERENCES Tipo_de_Proyecto(`IdTipo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Tareas`
--

CREATE TABLE IF NOT EXISTS `Tareas` (
  `IdTarea` int(11) NOT NULL,
  `Titulo` text NOT NULL,
  `Descripcion` text NOT NULL,
  `Estatus` text NOT NULL,
  `FSubid` date NOT NULL,
  `Flimite` date NOT NULL,
  `Proyecto` int(11) NOT NULL,
  `Genera` int(11) NOT NULL,
  `IdMetas` int(11) NOT NULL,
  PRIMARY KEY (`IdTarea`),
  FOREIGN KEY (`Proyecto`) REFERENCES Proyectos(`IdProyecto`),
  FOREIGN KEY (`IdMetas`) REFERENCES Metas(`IdMetas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Tipo_de_Proyecto`
--

CREATE TABLE IF NOT EXISTS `Tipo_de_Proyecto` (
  `IdTipo` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`IdTipo`),
  UNIQUE (`Nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

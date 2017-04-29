-- INSERT INTO proyectos(Titulo, Descripcion, FInicio, Duracion, IdCampus) VALUES
-- ('Proyecto 1', 'Descripcion del proyecto', '2015-08-23', 100, 'MTY'),
-- ('Proyecto 2', 'Descripcion del proyecto', '2015-08-23', 120, 'MTY'),
-- ('Proyecto 3', 'Descripcion del proyecto', '2015-08-23', 34, 'GDL'),
-- ('Proyecto 4', 'Descripcion del proyecto', '2015-08-23', 56, 'PUE'),
-- ('Proyecto 5', 'Descripcion del proyecto', '2015-08-23', 244, 'MTY') ;

-- INSERT INTO usuarios(Nombre, Apellidos, Nomina_Matricula ,Contrasena, Correo, IdDepartamento) VALUES
-- ('Rodrigo','Valencia', 'A00123123', '1234','a123@correo.g', 'ECO'),
-- ('Rodolfo','Simpson', 'A00321321', '4321', 'a321@correo.g', 'FIS'),
-- ('Por','Que?', 'A123455', '55555', '14@correo.g','MAT'),
-- ('Esto','Aburrido', 'A0098765', '8888', 'quieneres@correo.g', 'ECO'),
-- ('','Nosequieneres', 'A000000', '0000', '0000@correo.g', 'COM') ;

-- INSERT INTO colabora_en(Nomina_Matricula, IdProyecto, Rol) VALUES
-- ('A00123123', '1', '1'),
-- ('A00123123', '2', '2'),
-- ('A00123123', '3', '3');


-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2017 at 12:13 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_03`
--

-- --------------------------------------------------------

--
-- Table structure for table `archivos`
--

CREATE TABLE `archivos` (
  `IdArchivo` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL DEFAULT '',
  `Proyecto` int(11) NOT NULL,
  `Descripcion_Reporte` text,
  `Minuta_Reporte` text,
  `FeSubida` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Nomina_Matricula` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `areas_de_innovacion`
--

CREATE TABLE `areas_de_innovacion` (
  `IdInnovacion` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `autoriza`
--

CREATE TABLE `autoriza` (
  `IdProyecto` int(11) NOT NULL,
  `Nomina_Matricula` varchar(20) NOT NULL,
  `FeAutorizada` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `badge`
--

CREATE TABLE `badge` (
  `IDBadge` varchar(11) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `badge_dept`
--

CREATE TABLE `badge_dept` (
  `IdDepartamento` varchar(3) NOT NULL,
  `IDBadge` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `badge_proyecto`
--

CREATE TABLE `badge_proyecto` (
  `IDBadge` varchar(11) NOT NULL,
  `IdProyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `busca`
--

CREATE TABLE `busca` (
  `IdSolicitudes` int(11) NOT NULL,
  `IdInteres` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `colabora_en`
--

CREATE TABLE `colabora_en` (
  `Nomina_Matricula` varchar(20) NOT NULL,
  `IdProyecto` int(11) NOT NULL,
  `Rol` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comparten`
--

CREATE TABLE `comparten` (
  `IdProyecto` int(11) NOT NULL,
  `IdCompetencia` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `competencias`
--

CREATE TABLE `competencias` (
  `IdCompetencia` varchar(50) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conforman`
--

CREATE TABLE `conforman` (
  `IdEquipo` int(11) NOT NULL,
  `Nomina_Matricula` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crea`
--

CREATE TABLE `crea` (
  `IdProyecto` int(11) NOT NULL,
  `Nomina_Matricula` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delimita`
--

CREATE TABLE `delimita` (
  `IdProyecto` int(11) NOT NULL,
  `IdInnovacion` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departamentos`
--

CREATE TABLE `departamentos` (
  `IdDepartamento` char(3) NOT NULL,
  `Nom_Depa` text NOT NULL,
  `IdCampus` char(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `equipo`
--

CREATE TABLE `equipo` (
  `IdEquipo` int(11) NOT NULL,
  `Nombre` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `intereses`
--

CREATE TABLE `intereses` (
  `IdInteres` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `le_interesa`
--

CREATE TABLE `le_interesa` (
  `IdInteres` int(11) NOT NULL,
  `Nomina_Matricula` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `IdMetas` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Descripcion` text,
  `FeLimite` date DEFAULT NULL,
  `FeCumplida` date DEFAULT NULL,
  `Cumplida` bit(1) DEFAULT b'0',
  `Proyecto` int(11) NOT NULL,
  `IdSesion` int(11) DEFAULT NULL,
  `IdResultados` int(11) DEFAULT NULL,
  `IdInnovacion` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `participan`
--

CREATE TABLE `participan` (
  `IdProyecto` int(11) NOT NULL,
  `IdEquipo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pertenece_a`
--

CREATE TABLE `pertenece_a` (
  `IdProyecto` int(11) NOT NULL,
  `IdDepartamento` char(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posee`
--

CREATE TABLE `posee` (
  `IdCompetencia` varchar(50) NOT NULL,
  `Nomina_Matricula` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proyectos`
--

CREATE TABLE `proyectos` (
  `IdProyecto` int(11) UNSIGNED NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `FInicio` date NOT NULL,
  `Duracion` int(11) NOT NULL,
  `IdCampus` char(3) NOT NULL,
  `image_name` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requiere`
--

CREATE TABLE `requiere` (
  `IdCompetencia` varchar(50) NOT NULL,
  `IdSolicitudes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resultados`
--

CREATE TABLE `resultados` (
  `IdResultados` int(11) NOT NULL,
  `Proyecto` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL,
  `descripcion` text,
  `IdProyecto` int(11) NOT NULL,
  `Nomina_Matricula` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sesiones`
--

CREATE TABLE `sesiones` (
  `IdSesion` int(11) NOT NULL,
  `Descripcion` text NOT NULL,
  `HoraIni` int(11) NOT NULL,
  `MinutoIni` int(11) NOT NULL,
  `Duracion` int(11) NOT NULL,
  `Proyectos` int(11) NOT NULL,
  `Genera_Reporte` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `solicitudes`
--

CREATE TABLE `solicitudes` (
  `IdSolicitudes` int(11) NOT NULL,
  `Estatus` int(11) NOT NULL COMMENT 'No hay yes/no',
  `Proyecto` int(11) NOT NULL,
  `Nomina_Matricula` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `son_de`
--

CREATE TABLE `son_de` (
  `IdProyecto` int(11) NOT NULL,
  `IdTipo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tareas`
--

CREATE TABLE `tareas` (
  `IdTarea` int(11) NOT NULL,
  `Titulo` text NOT NULL,
  `Descripcion` text NOT NULL,
  `Estatus` text NOT NULL,
  `FSubid` date NOT NULL,
  `Flimite` date NOT NULL,
  `Proyecto` int(11) NOT NULL,
  `Genera` int(11) NOT NULL,
  `IdMetas` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_de_proyecto`
--

CREATE TABLE `tipo_de_proyecto` (
  `IdTipo` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ubicacion`
--

CREATE TABLE `ubicacion` (
  `IdCampus` char(3) NOT NULL,
  `NmCiudad` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `Nomina_Matricula` varchar(20) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellidos` text NOT NULL,
  `Correo` text NOT NULL,
  `Contrasena` text NOT NULL,
  `IdDepartamento` char(3) NOT NULL,
  `image_id` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`IdArchivo`),
  ADD KEY `Proyecto` (`Proyecto`),
  ADD KEY `Nomina_Matricula` (`Nomina_Matricula`);

--
-- Indexes for table `areas_de_innovacion`
--
ALTER TABLE `areas_de_innovacion`
  ADD PRIMARY KEY (`IdInnovacion`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indexes for table `autoriza`
--
ALTER TABLE `autoriza`
  ADD PRIMARY KEY (`Nomina_Matricula`,`FeAutorizada`),
  ADD KEY `IdProyecto` (`IdProyecto`);

--
-- Indexes for table `badge`
--
ALTER TABLE `badge`
  ADD PRIMARY KEY (`IDBadge`);

--
-- Indexes for table `badge_dept`
--
ALTER TABLE `badge_dept`
  ADD PRIMARY KEY (`IDBadge`,`IdDepartamento`),
  ADD KEY `IDBadge` (`IDBadge`);


--
-- Indexes for table `badge_proyecto`
--
ALTER TABLE `badge_proyecto`
  ADD PRIMARY KEY (`IDBadge`,`IdProyecto`),
  ADD KEY `IDBadge` (`IDBadge`);


--
-- Indexes for table `busca`
--
ALTER TABLE `busca`
  ADD PRIMARY KEY (`IdSolicitudes`,`IdInteres`),
  ADD KEY `IdInteres` (`IdInteres`);

--
-- Indexes for table `colabora_en`
--
ALTER TABLE `colabora_en`
  ADD PRIMARY KEY (`Nomina_Matricula`,`IdProyecto`),
  ADD KEY `IdProyecto` (`IdProyecto`);

--
-- Indexes for table `comparten`
--
ALTER TABLE `comparten`
  ADD PRIMARY KEY (`IdProyecto`,`IdCompetencia`),
  ADD KEY `IdCompetencia` (`IdCompetencia`);

--
-- Indexes for table `competencias`
--
ALTER TABLE `competencias`
  ADD PRIMARY KEY (`IdCompetencia`),
  ADD UNIQUE KEY `Nombre` (`Nombre`);

--
-- Indexes for table `conforman`
--
ALTER TABLE `conforman`
  ADD PRIMARY KEY (`IdEquipo`,`Nomina_Matricula`),
  ADD KEY `Nomina_Matricula` (`Nomina_Matricula`);

--
-- Indexes for table `crea`
--
ALTER TABLE `crea`
  ADD PRIMARY KEY (`IdProyecto`,`Nomina_Matricula`),
  ADD KEY `Nomina_Matricula` (`Nomina_Matricula`);

--
-- Indexes for table `delimita`
--
ALTER TABLE `delimita`
  ADD PRIMARY KEY (`IdProyecto`,`IdInnovacion`),
  ADD KEY `IdInnovacion` (`IdInnovacion`);

--
-- Indexes for table `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`IdCampus`,`IdDepartamento`);

--
-- Indexes for table `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`IdEquipo`);

--
-- Indexes for table `intereses`
--
ALTER TABLE `intereses`
  ADD PRIMARY KEY (`IdInteres`);

--
-- Indexes for table `le_interesa`
--
ALTER TABLE `le_interesa`
  ADD PRIMARY KEY (`IdInteres`,`Nomina_Matricula`),
  ADD KEY `Nomina_Matricula` (`Nomina_Matricula`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`IdMetas`),
  ADD KEY `Proyecto` (`Proyecto`);

--
-- Indexes for table `participan`
--
ALTER TABLE `participan`
  ADD PRIMARY KEY (`IdProyecto`,`IdEquipo`),
  ADD KEY `IdEquipo` (`IdEquipo`);

--
-- Indexes for table `pertenece_a`
--
ALTER TABLE `pertenece_a`
  ADD PRIMARY KEY (`IdProyecto`,`IdDepartamento`),
  ADD KEY `IdDepartamento` (`IdDepartamento`);

--
-- Indexes for table `posee`
--
ALTER TABLE `posee`
  ADD PRIMARY KEY (`IdCompetencia`,`Nomina_Matricula`),
  ADD KEY `Nomina_Matricula` (`Nomina_Matricula`);

--
-- Indexes for table `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`IdProyecto`),
  ADD UNIQUE KEY `Titulo` (`Titulo`),
  ADD KEY `IdCampus` (`IdCampus`);

--
-- Indexes for table `requiere`
--
ALTER TABLE `requiere`
  ADD PRIMARY KEY (`IdCompetencia`,`IdSolicitudes`),
  ADD KEY `IdSolicitudes` (`IdSolicitudes`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`),
  ADD KEY `IdProyecto` (`IdProyecto`),
  ADD KEY `Nomina_Matricula` (`Nomina_Matricula`);

--
-- Indexes for table `sesiones`
--
ALTER TABLE `sesiones`
  ADD PRIMARY KEY (`IdSesion`),
  ADD KEY `Proyectos` (`Proyectos`);

--
-- Indexes for table `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`IdSolicitudes`),
  ADD KEY `Nomina_Matricula` (`Nomina_Matricula`);

--
-- Indexes for table `son_de`
--
ALTER TABLE `son_de`
  ADD PRIMARY KEY (`IdProyecto`,`IdTipo`),
  ADD KEY `IdTipo` (`IdTipo`);

--
-- Indexes for table `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`IdTarea`),
  ADD KEY `Proyecto` (`Proyecto`),
  ADD KEY `IdMetas` (`IdMetas`);

--
-- Indexes for table `tipo_de_proyecto`
--
ALTER TABLE `tipo_de_proyecto`
  ADD PRIMARY KEY (`IdTipo`),
  ADD UNIQUE KEY `Nombre` (`Nombre`);

--
-- Indexes for table `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`IdCampus`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Nomina_Matricula`),
  ADD KEY `IdDepartamento` (`IdDepartamento`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archivos`
--
ALTER TABLE `archivos`
  MODIFY `IdArchivo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `areas_de_innovacion`
--
ALTER TABLE `areas_de_innovacion`
  MODIFY `IdInnovacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `intereses`
--
ALTER TABLE `intereses`
  MODIFY `IdInteres` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `IdMetas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `IdProyecto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

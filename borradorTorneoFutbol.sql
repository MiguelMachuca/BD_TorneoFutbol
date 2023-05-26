CREATE DATABASE TorneoFutbol;

--USE master;
--DROP DATABASE TorneoFutbol;

go
USE TorneoFutbol;
go
-- Crear 
-- 30 equipos
-- 600 jugadores
-- 20 técnicos 
-- 15 estadios

---------------------creacion de tablas----------------------------
CREATE TABLE CiudadEstadio (
	id_ciudad_estadio INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50)
)

CREATE TABLE TipoTecnico (
	id_tipo_tecnico INT PRIMARY KEY IDENTITY(1,1),
	tipo VARCHAR(30)
)

create table ClubFutbol(
	id_club_futbol int primary key identity(1,1),
	nombre varchar(50),
	logo varchar(200),
	descripcion varchar(300),
	fecha_creacion date
)

CREATE TABLE Equipo (
    id_equipo INT PRIMARY KEY IDENTITY(1,1),
    nombre_equipo VARCHAR(50),	
	id_club_futbol INT,
	FOREIGN KEY (id_club_futbol) REFERENCES ClubFutbol (id_club_futbol)
)

CREATE TABLE Jugador (
	id_jugador INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50),
	apellido_paterno VARCHAR(50),
	apellido_materno VARCHAR(50),
	email VARCHAR(40),
	direccion VARCHAR(100),
	fecha_nacimiento DATE
)

CREATE TABLE Tecnico (
	id_tecnico INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50),
	apellido_paterno VARCHAR(50),
	apellido_materno VARCHAR(50),
	email VARCHAR(40),
	direccion VARCHAR(70),
	fecha_inicio_carrera DATE,
	id_tipo_tecnico INT,
	FOREIGN KEY (id_tipo_tecnico) REFERENCES TipoTecnico (id_tipo_tecnico)
)

CREATE TABLE UbicacionEstadio (
	id_ubicacion_estadio INT PRIMARY KEY IDENTITY(1,1),
	nombre_ubicacion VARCHAR(80),
	direccion VARCHAR(100),
	telefono VARCHAR(15),
	id_ciudad_estadio INT,
	FOREIGN KEY (id_ciudad_estadio) REFERENCES CiudadEstadio(id_ciudad_estadio)
)

CREATE TABLE Dirigente (
	id_dirigente INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50),
	apellido_paterno VARCHAR(50),
	apellido_materno VARCHAR(50)
)

CREATE TABLE Torneo (
	id_torneo INT PRIMARY KEY IDENTITY(1,1),
	nombre_torneo VARCHAR(50),
	fecha_inicio_torneo DATE,
	fecha_fin_torneo DATE,
	monto_inscripcion INT,
	fecha_inicio_inscripcion DATE,
	fecha_fin_inscripcion DATE,
)

CREATE TABLE EstadoJugador (
	id_estado_jugador INT PRIMARY KEY IDENTITY(1,1),
	tipo_estado VARCHAR(30)
)

CREATE TABLE TipoUsuario (
	id_tipo_usuario INT PRIMARY KEY IDENTITY(1,1),
	descripcion VARCHAR(100)
)

CREATE TABLE Posicion (
	id_posicion INT PRIMARY KEY IDENTITY(1,1),
	posicion_torneo INT,
	partidos_jugados INT,
	cantidad_puntos INT,
	partidos_ganados INT,
	partidos_empatados INT,
	goles_anotados INT,
	goles_encontra INT,
	diferencia_goles INT
)

CREATE TABLE EstadoPartido (
	id_estado_partido INT PRIMARY KEY IDENTITY(1,1),
	descripcion VARCHAR(100)
)

CREATE TABLE Rol (
	id_rol INT PRIMARY KEY IDENTITY(1,1),
	nombre_rol VARCHAR(50)
)

CREATE TABLE Arbitro (
	id_arbitro INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50),
	email VARCHAR(40),
	direccion VARCHAR(70)
)

create table Nacionalidad(
	id_nacionalidad int primary key identity(1,1),
	pais varchar(50)
)

create table CambioEstado(
	id_cambio_estado int primary key identity(1,1),
	fecha date,
	id_estado_jugador int,
	id_jugador int, 
	foreign key (id_estado_jugador) references EstadoJugador(id_estado_jugador),
	foreign key (id_jugador) references Jugador(id_jugador)
)

create table EstadisticaClub(
	id_estadistica_club int primary key identity(1,1),
	partidos_jugados int,
	partidos_ganados int,
	goles_marcados int,
	goles_encontra int,
	diferencia_goles int,
	tarjetas_rojas int,
	tarjetas_amarillas int,
	id_club_futbol int, 
	foreign key (id_club_futbol) references ClubFutbol(id_club_futbol)
)

create table Usuario(
	id_usuario int primary key identity(1,1),
	nombre_usuario varchar(50),
	contraseña varchar(50),
	id_tipo_usuario int,
	foreign key (id_tipo_usuario) references TipoUsuario(id_tipo_usuario)
)

CREATE TABLE PlanillaEquipo(
	id_planilla_equipo INT PRIMARY KEY IDENTITY(1,1),
	forma_pago VARCHAR(50),
	fecha_inscrito DATE,
	id_equipo INT,
	id_usuario INT,
	id_torneo INT,
	FOREIGN KEY (id_equipo) REFERENCES Equipo(id_equipo),
	FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
	FOREIGN KEY (id_torneo) REFERENCES Torneo(id_torneo),
)

create table EquipoJugador(
	id_torneo_equipo_jugador int primary key identity(1,1),
	id_jugador int,
	id_equipo int,
	posicion int,
	foreign key (id_jugador) references Jugador(id_jugador),	
	foreign key (id_equipo) references Equipo(id_equipo)
)

create table PosicionEquipoTorneo(
	id_posicion_equipo_torneo int primary key identity(1,1),
	id_equipo int,
	id_posicion int,
	id_torneo int,
	foreign key (id_equipo) references Equipo(id_equipo),
	foreign key (id_posicion) references Posicion(id_posicion),
	foreign key (id_torneo) references Torneo(id_torneo)
)

create table Alineacion(
	id_alineacion int primary key identity(1,1),
	id_dirigente int,
	id_equipo int,
	fecha date,
	foreign key (id_dirigente) references Dirigente(id_dirigente),
	foreign key (id_equipo) references Equipo(id_equipo)
)

create table ProgramaPartido(
	id_programa_partido int primary key identity(1,1),
	fecha_programada date,
	hora_programada TIME(0) CONSTRAINT CK_TiempoFormato CHECK (hora_programada = CONVERT(TIME(0), CONVERT(VARCHAR(5), hora_programada, 108))),
	marcador_local int,
	marcador_visitante int,
	equipo_ganador varchar(50),
	equipo_perdedor varchar(50),
	tarjetas_amarillas int,
	tarjetas_rojas int,
	cambios int,
	faltas int,
	id_torneo int,
	id_alineacion_local int,
	id_alineacion_visitante int,
	id_estado_partido int,
	id_ubicacion_estadio int,
	foreign key (id_torneo) references Torneo(id_torneo),
	foreign key (id_alineacion_local) references Alineacion(id_alineacion),
	foreign key (id_alineacion_visitante) references Alineacion(id_alineacion),
	foreign key (id_estado_partido) references EstadoPartido(id_estado_partido),
	foreign key (id_ubicacion_estadio) references UbicacionEstadio(id_ubicacion_estadio)
)

CREATE TABLE Designacion (
	id_designacion INT PRIMARY KEY IDENTITY(1,1),	
	fecha DATE,
	id_arbitro INT,
	id_rol INT,
	id_programa_partido INT,
    FOREIGN KEY (id_rol) REFERENCES Rol(id_rol),
    FOREIGN KEY (id_programa_partido) REFERENCES ProgramaPartido(id_programa_partido),
	FOREIGN KEY (id_arbitro) REFERENCES Arbitro(id_arbitro)
)

CREATE TABLE DetalleAlineacion(
	id_detalle_alineacion INT PRIMARY KEY IDENTITY(1,1),
	posicion VARCHAR(70),
	id_jugador INT,
	id_alineacion INT,
	FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador),
	FOREIGN KEY (id_alineacion) REFERENCES Alineacion(id_alineacion)
)

CREATE TABLE Evento(
	id_evento INT PRIMARY KEY IDENTITY(1,1),
	tiempo_jugado INT,
	cantidad_pases INT,
	id_detalle_alineacion INT,
	FOREIGN KEY (id_detalle_alineacion) REFERENCES DetalleAlineacion(id_detalle_alineacion)
)

CREATE TABLE Tarjeta (
	id_tarjeta INT PRIMARY KEY IDENTITY(1,1),
	color_tarjeta VARCHAR(25),
)

CREATE TABLE TipoFalta (
	id_tipo_falta INT PRIMARY KEY IDENTITY(1,1),
	tip_falta VARCHAR(75),
)

CREATE TABLE Falta (
	id_falta INT PRIMARY KEY IDENTITY(1,1),
	minuto INT,
	id_tipo_falta INT,
	id_tarjeta INT,
	id_detalle_alineacion INT,
	FOREIGN KEY (id_detalle_alineacion) REFERENCES DetalleAlineacion(id_detalle_alineacion),
	FOREIGN KEY (id_tipo_falta) REFERENCES TipoFalta(id_tipo_falta),
	FOREIGN KEY (id_tarjeta) REFERENCES Tarjeta(id_tarjeta)
)

CREATE TABLE NacionalidadJugador(
	id_nacionalidad_jugador INT PRIMARY KEY IDENTITY(1,1),
	fecha_adquisicion DATE,
	id_jugador INT,
	id_nacionalidad INT,
	FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador),
	FOREIGN KEY (id_nacionalidad) REFERENCES Nacionalidad(id_nacionalidad)
)

CREATE TABLE Goleo(
	id_goleo INT PRIMARY KEY IDENTITY(1,1),
	minuto INT,
	id_detalle_alineacion INT,
	FOREIGN KEY (id_detalle_alineacion) REFERENCES DetalleAlineacion(id_detalle_alineacion),	
)

CREATE TABLE AlineacionTecnico(
	id_alineacion_tecnico INT PRIMARY KEY IDENTITY(1,1),
	fecha DATE,
	id_alineacion INT,
	id_tecnico INT,
	FOREIGN KEY (id_alineacion) REFERENCES Alineacion(id_alineacion),
	FOREIGN KEY (id_tecnico) REFERENCES Tecnico(id_tecnico)	
)

CREATE TABLE CambioJugador(
	id_cambio_juagador INT PRIMARY KEY IDENTITY(1,1),
	minuto_cambio INT,
	id_jugador_entrada INT,
	id_jugador_salida INT
	FOREIGN KEY (id_jugador_entrada) REFERENCES DetalleAlineacion(id_detalle_alineacion),
	FOREIGN KEY (id_jugador_salida) REFERENCES DetalleAlineacion(id_detalle_alineacion)
)

---------------------------------------------------------------------------------------


---------------------------------------POBLAR------------------------------------------

INSERT INTO CiudadEstadio (nombre)
VALUES
	('Ciudad de México, México'),
	('Río de Janeiro, Brasil'),
	('Buenos Aires, Argentina'),
	('Santiago, Chile'),
	('Barranquilla, Colombia'),
	('Montevideo, Uruguay'),
	('Asunción, Paraguay'),
	('Lima, Perú'),
	('La Paz, Bolivia'),
	('São Paulo, Brasil'),
	('Ciudad de Panamá, Panamá'),
	('San José, Costa Rica'),
	('Bogotá, Colombia')

INSERT INTO UbicacionEstadio (nombre_ubicacion, direccion, telefono, id_ciudad_estadio) 
VALUES 
    ('Estadio Azteca', 'Calzada de Tlalpan 3465, Sta. Úrsula Coapa, Coyoacán, 04650 Ciudad de México, CDMX, México', '(55) 6274-8698', 1),
    ('Estadio Maracaná', 'Av. Pres. Castelo Branco, s/n - Maracanã, Rio de Janeiro - RJ, 20271-130, Brasil', '(21) 7233-8648', 2),
    ('Estadio Monumental', 'Av. Pres. Figueroa Alcorta 7597, C1428BNC CABA, Argentina', '(11) 9374-2644', 3),
    ('Estadio Nacional', 'Av. Grecia 2001, Ñuñoa, Santiago, Región Metropolitana, Chile', '(2) 9334-9348', 4),
    ('Estadio Metropolitano Roberto Meléndez', 'Cl. 45 #30-95, Barranquilla, Atlántico, Colombia', '(5) 2944837', 5),
	('Estadio Centenario', 'Av. Dr. Americo Ricaldoni, Montevideo, Uruguay', '(2) 943-4927', 6),
	('Estadio Defensores del Chaco', 'Av. Artigas, Asunción, Paraguay', ' (21) 984-306', 7),
	('Estadio Alejandro Villanueva', 'Calle Fray Martín, Lima 15046, Perú', '(01) 748-91747', 8),
	('Estadio Azul', 'Calz. de Tlalpan 3465, Sta. Úrsula Coapa, Coyoacán, 04650 Ciudad de México, CDMX, México', '(55) 6184-6628', 1),
	('Estadio Hernando Siles', 'Plaza Venezuela, La Paz, Bolivia', '(2) 253-7637', 9),
	('Estadio Morumbi', 'Av. Jules Rimet, 500 - Morumbi, São Paulo - SP, 05618-000, Brasil', '(11) 8224-9328', 10),
	('Estadio Rommel Fernández', 'Avenida Ricardo J. Alfaro, Panamá, Panamá', '(507) 934-8427', 11),
	('Estadio Nacional de Costa Rica', 'Parque Metropolitano La Sabana, San José, Costa Rica', '(506) 2222-5474', 12),
	('Estadio Nemesio Camacho "El Campín"', 'Cra. 30 #57-61, Bogotá, Colombia', '(1) 9348362', 13),
	('Estadio Monumental de la U', 'Av. Marathon 5300, Macul, Región Metropolitana, Chile','(2) 8224-2893', 4)

INSERT INTO TipoTecnico (tipo)
VALUES
	('Entrenador Principal'),
	('Asistente Técnico'),
	('Entrenador de Porteros'),
	('Preparador Físico'),
	('Analista Táctico'),
	('Scout')

INSERT INTO Tarjeta (color_tarjeta)
VALUES
	('Tarjeta Roja'),
	('Tarjeta Amarilla')

INSERT INTO TipoFalta (tip_falta)
VALUES
	('Falta directa'),
	('Falta indirecta'),
	('Falta táctica'),
	('Falta violenta'),
	('Mano'),
	('Fuera de juego'),
	('Simulación o fingir una falta'),
	('Retrasar el juego'),
	('Conducta antideportiva'),
	('Falta de respeto al arbitro')

INSERT INTO EstadoPartido (descripcion)
VALUES
	('Victoria'),
	('Empate'),
	('Abandono'),
	('Decisión Administrativa')

insert into TipoUsuario values ('Este es un super Usuario, no tiene restricciones en el sistema')
insert into TipoUsuario values ('Este es un usuario Administrador, a diferencia  del super usuario este tiene algunas restricciones')
insert into TipoUsuario values ('Este es un Usuario, a al ser un usuario normal, solo puede estar en modo espectador')

insert into Usuario values ('marco','423423',1)
insert into Usuario values ('miguel','4adasd23',1)
insert into Usuario values ('Ericka','4234fsdf',1)
insert into Usuario values ('Sandra','4234gjghj23',2)
insert into Usuario values ('Jose','42342hjgj3',2)
insert into Usuario values ('Take','4234wer23',3)
insert into Usuario values ('Cesar','4234gdf23',3)
insert into Usuario values ('Sandra','4234gjghj23',3)
insert into Usuario values ('Jose','42342hjgj3',3)
insert into Usuario values ('Take','4234wer23',3)
insert into Usuario values ('Cesar','4234gdf23',3)
insert into Usuario values ('Sandra','4234gjghj23',3)
insert into Usuario values ('Jose','42342hjgj3',3)
insert into Usuario values ('Take','4234wer23',3)
insert into Usuario values ('Cesar','4234gdf23',3)

insert into Nacionalidad values ('AFGANA')
insert into Nacionalidad values ('ALBANESA')
insert into Nacionalidad values ('ANDORRANA')
insert into Nacionalidad values ('ANGOLEÑA')
insert into Nacionalidad values ('ANTIGUANA')
insert into Nacionalidad values ('SAUDÍ')
insert into Nacionalidad values ('ARGELINA')
insert into Nacionalidad values ('ARGENTINA')
insert into Nacionalidad values ('ARMENIA')
insert into Nacionalidad values ('ARUBEÑA')
insert into Nacionalidad values ('AUSTRALIANA')
insert into Nacionalidad values ('AUSTRIACA')
insert into Nacionalidad values ('AZERBAIYANA')
insert into Nacionalidad values ('BAHAMEÑA')
insert into Nacionalidad values ('BANGLADESÍ')
insert into Nacionalidad values ('BARBADENSE')
insert into Nacionalidad values ('BAREINÍ')
insert into Nacionalidad values ('BELGA')
insert into Nacionalidad values ('BELICEÑA')
insert into Nacionalidad values ('BENINÉSA')
insert into Nacionalidad values ('SAUDÍ')
insert into Nacionalidad values ('BIELORRUSA')
insert into Nacionalidad values ('BIRMANA')
insert into Nacionalidad values ('BOLIVIANA')
insert into Nacionalidad values ('BOSNIA')
insert into Nacionalidad values ('BOTSUANA')
insert into Nacionalidad values ('BRASILEÑA')
insert into Nacionalidad values ('BRUNEANA')
insert into Nacionalidad values ('BAHAMEÑA')
insert into Nacionalidad values ('BÚLGARA')
insert into Nacionalidad values ('BURUNDÉSA')
insert into Nacionalidad values ('BUTANÉSA')
insert into Nacionalidad values ('CABOVERDIANA')
insert into Nacionalidad values ('CAMBOYANA')
insert into Nacionalidad values ('CAMERUNESA')
insert into Nacionalidad values ('CANADIENSE')
insert into Nacionalidad values ('CATARÍ')
insert into Nacionalidad values ('CHADIANA')
insert into Nacionalidad values ('CHILENA')
insert into Nacionalidad values ('CHINA')
insert into Nacionalidad values ('CHIPRIOTA')
insert into Nacionalidad values ('VATICANA')
insert into Nacionalidad values ('COLOMBIANA')
insert into Nacionalidad values ('COMORENSE')
insert into Nacionalidad values ('NORCOREANA')
insert into Nacionalidad values ('SURCOREANA')
insert into Nacionalidad values ('MARFILEÑA')
insert into Nacionalidad values ('COSTARRICENSE')
insert into Nacionalidad values ('CROATA')
insert into Nacionalidad values ('DANÉSA')
insert into Nacionalidad values ('DOMINIQUÉS')
insert into Nacionalidad values ('ECUATORIANA')
insert into Nacionalidad values ('EGIPCIA')
insert into Nacionalidad values ('SALVADOREÑA')
insert into Nacionalidad values ('EMIRATÍ')
insert into Nacionalidad values ('ERITREA')
insert into Nacionalidad values ('ESLOVACA')
insert into Nacionalidad values ('ESLOVENA')
insert into Nacionalidad values ('ESPAÑOLA')
insert into Nacionalidad values ('ESTADOUNIDENSE')

insert into EstadoJugador values ('ACTIVO')
insert into EstadoJugador values ('RETIRADO')
insert into EstadoJugador values ('LESIONADO')
insert into EstadoJugador values ('SUSPENDIDO')
insert into EstadoJugador values ('TRANSFERIBLE')
insert into EstadoJugador values ('AGENTE LIBRE')
insert into EstadoJugador values ('EN NEGOCIACIONES')
insert into EstadoJugador values ('EN FORMACION')

insert into Arbitro values ('Ericka', 'ericka@gmail.com','Avenida Siempre Viva')
insert into Arbitro values ('Miguel', 'miguel@gmail.com','Calle morroso')
insert into Arbitro values ('Mark', 'Mark@gmail.com','Pailon')
insert into Arbitro values ('jose', 'jose@gmail.com','Santa Cruz de la sierra')
insert into Arbitro values ('Vicenta', 'vicenta@gmail.com','las misiones')
insert into Arbitro values ('Sergio', 'sergio@gmail.com','27 de mayo')
insert into Arbitro values ('Marco', 'Marco@gmail.com','central fatima')
insert into Arbitro values ('Juan', 'juan@gmail.com','Avenida Siempre Viva')
insert into Arbitro values ('sara', 'sara@gmail.com','villa nueva')
insert into Arbitro values ('la trece', 'trece@gmail.com','seattle')
insert into Arbitro values ('house', 'house@gmail.com','seatle')
insert into Arbitro values ('foreman', 'foreman@gmail.com','silicon valley')
insert into Arbitro values ('chase', 'chase@gmail.com','nueva yersey')
insert into Arbitro values ('jorge', 'jorge@gmail.com','plan 3000')
insert into Arbitro values ('jose rivero', 'rivero@gmail.com','la cuchilla')

insert into Rol values ('Árbitro principal')
insert into Rol values ('Árbitro asistente o juez de línea')
insert into Rol values ('Cuarto árbitro')
insert into Rol values ('Árbitro de video o VAR')

---------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE generar_correos
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @nombre VARCHAR(50), @apellido VARCHAR(50), @correo VARCHAR(100), @id INT;

    DECLARE cursor1 CURSOR FOR
    SELECT id_jugador, nombre, apellido_paterno
    FROM Jugador;

    OPEN cursor1;

    FETCH NEXT FROM cursor1 INTO @id, @nombre, @apellido;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @correo = CONCAT(LOWER(@nombre), LOWER(@apellido), '@gmail.com');

        UPDATE Jugador SET email = @correo WHERE id_jugador = @id;

        FETCH NEXT FROM cursor1 INTO @id, @nombre, @apellido;
    END

    CLOSE cursor1;
    DEALLOCATE cursor1;
END

EXEC generar_correos;

CREATE PROCEDURE generar_fecha_nacimiento
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @fecha date, @id INT;

    DECLARE cursor1 CURSOR FOR
    SELECT id_jugador, fecha_nacimiento
    FROM Jugador;

    OPEN cursor1;

    FETCH NEXT FROM cursor1 INTO @id, @fecha;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        
		SET @fecha = DATEADD(DAY, -1* RAND() * 10000, '2001-01-01');

        UPDATE Jugador SET fecha_nacimiento = @fecha WHERE id_jugador = @id;

        FETCH NEXT FROM cursor1 INTO @id, @fecha;
    END

    CLOSE cursor1;
    DEALLOCATE cursor1;
END

EXEC generar_fecha_nacimiento;

ALTER PROCEDURE generar_direccion_sc
AS
BEGIN
  DECLARE @id INT;
  DECLARE @direccion VARCHAR(100);
  
  DECLARE cursor_personas CURSOR FOR 
    SELECT id_tecnico FROM Tecnico;
    
  OPEN cursor_personas;
  
  FETCH NEXT FROM cursor_personas INTO @id;
  
  WHILE @@FETCH_STATUS = 0
  BEGIN
    DECLARE @municipio VARCHAR(50) = (
      SELECT TOP 1 municipio
      FROM (
        SELECT 'Santa Cruz de la Sierra' AS municipio, 1 AS orden UNION
        SELECT 'Warnes' AS municipio, 2 AS orden UNION
        SELECT 'Montero' AS municipio, 3 AS orden UNION
        SELECT 'Portachuelo' AS municipio, 4 AS orden UNION
        SELECT 'Okinawa Uno' AS municipio, 5 AS orden UNION
        SELECT 'La Guardia' AS municipio, 6 AS orden UNION
        SELECT 'El Torno' AS municipio, 7 AS orden UNION
        SELECT 'Colpa Bélgica' AS municipio, 8 AS orden UNION
        SELECT 'El Puente' AS municipio, 9 AS orden
      )t 
      ORDER BY NEWID()
    );
    
    SET @direccion = CONCAT('Calle ', ABS(CHECKSUM(NEWID())) % 1000, ', ', @municipio, ', Santa Cruz, Bolivia');
    
    UPDATE Tecnico SET direccion = @direccion WHERE id_tecnico = @id;
    
    FETCH NEXT FROM cursor_personas INTO @id;
  END
  
  CLOSE cursor_personas;
  DEALLOCATE cursor_personas;
END;

EXEC generar_direccion_sc;

CREATE PROCEDURE generar_correos_tecnico
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @nombre VARCHAR(50), @apellido VARCHAR(50), @correo VARCHAR(100), @id INT;

    DECLARE cursor1 CURSOR FOR
    SELECT id_tecnico, nombre, apellido_paterno
    FROM Tecnico;

    OPEN cursor1;

    FETCH NEXT FROM cursor1 INTO @id, @nombre, @apellido;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @correo = CONCAT(LOWER(@nombre), LOWER(@apellido), '@gmail.com');

        UPDATE Tecnico SET email = @correo WHERE id_tecnico = @id;

        FETCH NEXT FROM cursor1 INTO @id, @nombre, @apellido;
    END

    CLOSE cursor1;
    DEALLOCATE cursor1;
END

EXEC generar_correos_tecnico;

CREATE PROCEDURE generar_fecha_carrera
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @fecha date, @id INT;

    DECLARE cursor1 CURSOR FOR
    SELECT id_tecnico, fecha_inicio_carrera
    FROM Tecnico;

    OPEN cursor1;

    FETCH NEXT FROM cursor1 INTO @id, @fecha;

    WHILE @@FETCH_STATUS = 0
    BEGIN        
		SET @fecha = DATEADD(DAY, -1* RAND() * 9000, '2001-01-01');
        UPDATE Tecnico SET fecha_inicio_carrera = @fecha WHERE id_tecnico = @id;
        FETCH NEXT FROM cursor1 INTO @id, @fecha;
    END
    CLOSE cursor1;
    DEALLOCATE cursor1;
END;

EXEC generar_fecha_carrera;

-------------------------------------------------------------------------

CREATE PROCEDURE GenerarTorneos (@year INT)
AS
BEGIN
    DECLARE @Fecha DATETIME
    SET @Fecha = DATEADD(YEAR, -@year, GETDATE())
	print @Fecha
	DECLARE @cantidad INT
	SET @cantidad = @year * 2
	print @cantidad

    DECLARE @Contador INT
    SET @Contador = 0
    
    WHILE @Contador < @cantidad
    BEGIN
        DECLARE @Anio INT
        SET @Anio = DATEPART(YEAR, @Fecha)
        
        DECLARE @MesInicio INT
        DECLARE @MesFin INT
		DECLARE @MesI DATE
		DECLARE @MesF DATE
		DECLARE @NumeroInicio INT
		DECLARE @NumeroFinal INT
		DECLARE @Monto INT
		DECLARE @InscripicionI DATE
		DECLARE @InscripicionF DATE
        
        IF @Contador % 2 = 0
        BEGIN
            SET @MesInicio = 1
            SET @MesFin = 6
        END
        ELSE
        BEGIN
            SET @MesInicio = 7
            SET @MesFin = 12
        END
		DECLARE @name nvarchar(40)
        DECLARE @NombreTorneo NVARCHAR(50)

		DECLARE @nombres TABLE (id INT IDENTITY(1,1), nombre VARCHAR(50))
		INSERT INTO @nombres (nombre)
		VALUES ('CONMEBOL Sudamericana'), ('CONMEBOL Libertadores'), ('Copa Latina'), ('Copa FIFA Confederaciones'), ('Copa America'), ('Eliminatorias de America'), ('Copa Oro'), ('UEFA Champions League'), ('Liga Profesional Boliviana'), ('Eliminatorias CONMEBOL'), ('Amistosos internacionales')

        SELECT TOP 1 @name = nombre FROM @nombres ORDER BY NEWID()

        SET @NombreTorneo = @name +' ' +CONVERT(NVARCHAR(5), @Anio)
		
		SET @numeroInicio = ROUND(RAND() * 29 + 1, 0)
		SET @numeroFinal = ROUND(RAND() * 29 + 1, 0)
    
		set @MesI =  CAST(DATEFROMPARTS(@Anio, @MesInicio, @numeroInicio) AS DATE)
		set @MesF = CAST(DATEFROMPARTS(@Anio, @MesFin, @numeroFinal) AS DATE)
		set @Monto = FLOOR(RAND() * (10000 - 1000 + 1)) + 1000
		set @InscripicionI = DATEADD(day, -30, @MesI)
		set @InscripicionF = DATEADD(day, -1, @MesI)
    		
		INSERT INTO Torneo (nombre_torneo, fecha_inicio_torneo, fecha_fin_torneo, monto_inscripcion, fecha_inicio_inscripcion, fecha_fin_inscripcion)
        
		VALUES (@NombreTorneo, @MesI, @MesF, @Monto, @InscripicionI, @InscripicionF)

        IF @MesInicio > 6
		BEGIN
			SET @Fecha = DATEADD(YEAR, 1, @Fecha)
		END
        SET @Contador = @Contador + 1
    END
END

EXEC GenerarTorneos 10

CREATE PROCEDURE CrearAlineacion (@id_equipo int, @fecha date)
	AS
	BEGIN
		DECLARE @rnd int	
		SELECT @rnd = COUNT(*) FROM Dirigente;
		set @rnd = FLOOR(RAND() * @rnd) + 1
		DECLARE @idEquipo int = @id_equipo
		DECLARE @idDirigente int = @rnd
		DECLARE @alineacion TABLE (id INT IDENTITY(1,1), id_equipo int, id_dirigente int)
		INSERT INTO Alineacion (id_equipo, id_dirigente, fecha)
		VALUES (@idEquipo, @idDirigente, @fecha)
	END

CREATE PROCEDURE generar_partidos_todos_contra_todos (@cantidad_equipo INT, @id_torneo INT)
AS
BEGIN
    DECLARE @num_equipos INT = @cantidad_equipo
    DECLARE @num_jornadas INT = @num_equipos - 1
    DECLARE @partidos_por_jornada INT = @num_equipos / 2
    DECLARE @hora_inicio TIME = '08:00:00'
    DECLARE @dias_entre_jornadas INT = 7
	DECLARE @fecha_inicio DATE
	DECLARE @fecha_fin DATE
	DECLARE @fecha_aleatoria DATE
	DECLARE @dias INT
	DECLARE @marcador_local INT
	DECLARE @marcador_visitante INT
	DECLARE @equipo_ganador varchar(50)
	DECLARE @equipo_perdedor varchar(50)
	DECLARE	@tarjetas_amarillas INT
	DECLARE @tarjetas_rojas INT
	DECLARE @ubicacion_estadio INT
	DECLARE @estado_partido INT = 1
	DECLARE @id_local INT
	DECLARE @id_visitante INT

	select @fecha_inicio = fecha_inicio_torneo from Torneo where id_torneo = @id_torneo
	select @fecha_fin = fecha_fin_torneo from Torneo where id_torneo = @id_torneo
	SELECT @dias = DATEDIFF(day, @fecha_inicio, @fecha_fin)
	----------------------------------------------------------------------------
	Declare @c int = 1
	While (@c <= @cantidad_equipo)
	BEGIN
		Declare @id_equipo int
		Declare @nombre_equipo varchar(50)
		Declare @cant int = 1
		DECLARE @equipo TABLE (id INT IDENTITY(1,1), id_equipo int, nombre_equipo varchar(50))
		While (@cant >= 1)
			Begin					
				SELECT TOP 1 @id_equipo = id_equipo FROM Equipo ORDER BY NEWID()
				SELECT @nombre_equipo = nombre_equipo FROM Equipo WHERE id_equipo = @id_equipo
				SELECT @cant = COUNT(*) FROM @equipo WHERE id_equipo = @id_equipo
			End		
		INSERT INTO @equipo(id_equipo, nombre_equipo)
		VALUES (@id_equipo, @nombre_equipo)		
		SET @c = @c + 1
	END
	select * from @equipo
	-------------------------------------------------------------------------
    DECLARE @fecha_jornada DATETIME = DATEADD(DAY, 1, @fecha_inicio)

    DECLARE @id_equipo_local INT
    DECLARE @id_equipo_visitante INT

    -- Generar partidos para cada jornada
    DECLARE @jornada INT = 1
    WHILE (@jornada <= @num_jornadas)
    BEGIN
        SET @id_equipo_local = 1
        WHILE (@id_equipo_local <= @num_equipos)
        BEGIN

            SET @id_equipo_visitante = @id_equipo_local + @jornada
			
            -- Ajustar id del equipo visitante si es mayor que la cantidad de equipos
            IF (@id_equipo_visitante > @num_equipos)
            BEGIN
                SET @id_equipo_visitante = @id_equipo_visitante - @num_equipos
            END
			SELECT TOP 1 @ubicacion_estadio = id_ubicacion_estadio FROM UbicacionEstadio ORDER BY NEWID()	
			SELECT @tarjetas_amarillas = FLOOR(2 + (RAND() * (4 - 2 + 1)))
			SELECT @tarjetas_rojas = FLOOR(0 + (RAND() * (1 - 0 + 1)))			
			SELECT @marcador_local = FLOOR(0 + (RAND() * (4 - 0 + 1)))
			SELECT @marcador_visitante = FLOOR(0 + (RAND() * (4 - 0 + 1)))
			SELECT @fecha_aleatoria = DATEADD(day, CAST(RAND()*(@dias) AS int), @fecha_inicio)
			SELECT @hora_inicio = RIGHT(DATEADD(hour, CAST(RAND() * 9 AS int), '08:00:00'), 7)
			IF (@marcador_local = @marcador_visitante)
				BEGIN
					select @estado_partido = id_estado_partido from EstadoPartido where descripcion = 'Empate'
				END
			SELECT @id_local = id_equipo from @equipo where id = @id_equipo_local
			SELECT @id_visitante = id_equipo from @equipo where id = @id_equipo_visitante

			IF @marcador_local >= @marcador_visitante
			BEGIN
				SELECT @equipo_ganador = nombre_equipo FROM Equipo WHERE id_equipo = @id_local
				SELECT @equipo_perdedor = nombre_equipo FROM Equipo WHERE id_equipo = @id_visitante
			END
			ELSE
			BEGIN
				SELECT @equipo_perdedor = nombre_equipo FROM Equipo WHERE id_equipo = @id_local
				SELECT @equipo_ganador = nombre_equipo FROM Equipo WHERE id_equipo = @id_visitante
			END

			declare @local int
			declare @visitante int
			EXEC CrearAlineacion @id_local, @fecha_aleatoria
			EXEC CrearAlineacion @id_visitante, @fecha_aleatoria

			select @local = id_alineacion from Alineacion where fecha = @fecha_aleatoria and id_equipo = @id_local
			select @visitante = id_alineacion from Alineacion where fecha = @fecha_aleatoria and id_equipo = @id_visitante

            INSERT INTO ProgramaPartido(id_alineacion_local, id_alineacion_visitante, fecha_programada, hora_programada, marcador_local, marcador_visitante, tarjetas_amarillas, tarjetas_rojas, id_torneo, id_estado_partido, id_ubicacion_estadio, equipo_ganador, equipo_perdedor)
            VALUES (@local, @visitante, @fecha_aleatoria, @hora_inicio, @marcador_local, @marcador_visitante, @tarjetas_amarillas, @tarjetas_rojas, @id_torneo, @estado_partido, @ubicacion_estadio, @equipo_ganador, @equipo_perdedor)
			select @estado_partido = id_estado_partido from EstadoPartido where descripcion = 'Victoria'
            SET @id_equipo_local = @id_equipo_local + 1
        END
        SET @jornada = @jornada + 1
    END
    -- Mostrar los partidos generados
    
END

EXEC generar_partidos_todos_contra_todos 5, 1

CREATE PROCEDURE generar_alineacion_tecnico
	AS
	BEGIN
		DECLARE @fecha date
		DECLARE @id_tecnico int
		DECLARE @id_alineacion int

		DECLARE cursor1 CURSOR FOR
		SELECT id_alineacion, fecha
		FROM Alineacion;

		OPEN cursor1;

		FETCH NEXT FROM cursor1 INTO @id_alineacion, @fecha;

		WHILE @@FETCH_STATUS = 0
		BEGIN
			SELECT TOP 1 @id_tecnico = id_tecnico FROM Tecnico ORDER BY NEWID()
			INSERT INTO AlineacionTecnico(fecha, id_alineacion, id_tecnico)
			VALUES (@fecha, @id_alineacion, @id_tecnico)

			FETCH NEXT FROM cursor1 INTO @id_alineacion, @fecha;
		END

		CLOSE cursor1;
		DEALLOCATE cursor1;

	END

EXEC generar_alineacion_tecnico

CREATE PROCEDURE AgregarDetalleAlineacion
	AS
	BEGIN
		DECLARE @posicion VARCHAR(70)
		DECLARE @id_jugador INT
		DECLARE @id_alineacion INT	
		
		DECLARE @posiciones TABLE (id INT IDENTITY(1,1), posiciones VARCHAR(70))
		INSERT INTO @posiciones(posiciones)
		VALUES ('Portero'),('Defensa central'),('Lateral derecho'),('Lateral izquierdo'),('Centrocampista defensivo'),('Centrocampista central'),('Centrocampista derecho'),('Centrocampista izquierdo'),('Delantero centro'),('Delantero derecho'),('Delantero izquierdo'),('Sustitucion Uno'), ('Sustitucion Dos'), ('Sustitucion Tres')
		
		DECLARE cursor1 CURSOR FOR
		SELECT id_alineacion
		FROM Alineacion;

		OPEN cursor1;

		FETCH NEXT FROM cursor1 INTO @id_alineacion;

		WHILE @@FETCH_STATUS = 0
		BEGIN
			---------------
			DECLARE @DetalleAlineacion TABLE(id int identity(1,1), posicion varchar(70), id_jugador int, id_alineacion int)
			
			DECLARE @c INT = 1
			WHILE @c <= 14
				BEGIN								
					DECLARE @cant INT = 1
					WHILE @cant >= 1
						BEGIN
							SELECT TOP 1 @posicion = posiciones FROM @posiciones ORDER BY NEWID()
							SELECT @cant = COUNT(*) FROM @DetalleAlineacion WHERE posicion = @posicion
							IF @cant = 0
								BEGIN
									SELECT TOP 1 @id_jugador = id_jugador FROM Jugador ORDER BY NEWID()
									SELECT @cant = COUNT(*) FROM @DetalleAlineacion WHERE id_jugador = @id_jugador
								END
						END
					INSERT INTO @DetalleAlineacion(posicion, id_jugador, id_alineacion) 
					VALUES (@posicion, @id_jugador, @id_alineacion)
					SET @c = @c + 1
				END
				set @id_alineacion = @id_alineacion + 1
				select * from @DetalleAlineacion
		
				INSERT INTO DetalleAlineacion (posicion, id_jugador, id_alineacion)
				SELECT posicion, id_jugador, id_alineacion
				FROM @DetalleAlineacion;
				delete from @DetalleAlineacion
			---------------
			FETCH NEXT FROM cursor1 INTO @id_alineacion;
		END
		CLOSE cursor1;
		DEALLOCATE cursor1;
	
	END

EXEC AgregarDetalleAlineacion

CREATE PROCEDURE AgregarDesignacion
AS
BEGIN
	DECLARE @fecha DATE
	DECLARE @id_arbitro INT
	DECLARE @id_rol INT
	DECLARE @id_programa_partido INT
		
	DECLARE @Designacion TABLE(id int identity (1,1), fecha DATE, id_arbitro INT,id_rol INT, id_programa_partido INT)
	DECLARE cursor1 CURSOR FOR
	SELECT id_programa_partido, fecha_programada
	FROM ProgramaPartido;

	OPEN cursor1;

	FETCH NEXT FROM cursor1 INTO @id_programa_partido, @fecha;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		DECLARE @i INT = 1
		while @i <= 4
		BEGIN
			DECLARE @cant INT = 1
			WHILE @cant >= 1
				BEGIN						
					SELECT TOP 1 @id_rol = id_rol FROM Rol ORDER BY NEWID()
					SELECT @cant = COUNT(*) FROM @Designacion WHERE id_rol = @id_rol
					IF @cant = 0
						BEGIN
							SELECT TOP 1 @id_arbitro = id_arbitro FROM Arbitro ORDER BY NEWID()		
							SELECT @cant = COUNT(*) FROM @Designacion WHERE id_arbitro = @id_arbitro						
						END
				END
			INSERT INTO @Designacion(fecha, id_arbitro, id_rol, id_programa_partido)
			VALUES (@fecha, @id_arbitro, @id_rol, @id_programa_partido)	

			SET @i = @i + 1
		END

		INSERT INTO Designacion (fecha, id_arbitro, id_rol, id_programa_partido)
		SELECT fecha, id_arbitro, id_rol, id_programa_partido
		FROM @Designacion;
		DELETE FROM @Designacion

		FETCH NEXT FROM cursor1 INTO @id_programa_partido, @fecha;
	END
	CLOSE cursor1;
	DEALLOCATE cursor1;
END

EXEC AgregarDesignacion

CREATE PROCEDURE GenerarGoleo
	AS
	BEGIN
		DECLARE @id_alineacion_local INT
		DECLARE @id_alineacion_visitante INT
		DECLARE @marcador_local INT
		DECLARE @marcador_visitante INT
		DECLARE @id_detalle_alineacion INT
		DECLARE @minuto INT
		
		DECLARE cursor1 CURSOR FOR
		SELECT id_alineacion_local, id_alineacion_visitante, marcador_local, marcador_visitante
		FROM ProgramaPartido;

		OPEN cursor1;

		FETCH NEXT FROM cursor1 INTO @id_alineacion_local, @id_alineacion_visitante, @marcador_local, @marcador_visitante;

		WHILE @@FETCH_STATUS = 0
		BEGIN
			DECLARE @contador INT = 1
			IF @marcador_local > 0
			BEGIN
				WHILE @marcador_local >= @contador
				BEGIN
					SET @minuto = CAST(RAND() * 90 + 1 AS INT)
					SELECT TOP 1 @id_detalle_alineacion = id_detalle_alineacion FROM DetalleAlineacion WHERE id_alineacion = @id_alineacion_local ORDER BY NEWID()
					INSERT INTO Goleo(minuto, id_detalle_alineacion)
					VALUES (@minuto, @id_detalle_alineacion)
					SET @contador = @contador + 1
				END
			END
			SET @contador = 1
			IF @marcador_visitante > 0
			BEGIN
				WHILE @marcador_visitante >= @contador
				BEGIN
					SET @minuto = CAST(RAND() * 90 + 1 AS INT)
					SELECT TOP 1 @id_detalle_alineacion = id_detalle_alineacion FROM DetalleAlineacion WHERE id_alineacion = @id_alineacion_visitante ORDER BY NEWID()
					INSERT INTO Goleo(minuto, id_detalle_alineacion)
					VALUES (@minuto, @id_detalle_alineacion)
					SET @contador = @contador + 1
				END
			END					
			FETCH NEXT FROM cursor1 INTO @id_alineacion_local, @id_alineacion_visitante, @marcador_local, @marcador_visitante;
		END

		CLOSE cursor1;
		DEALLOCATE cursor1;
	END

EXEC GenerarGoleo

CREATE PROCEDURE GenerarFaltas
	AS
	BEGIN
		DECLARE @id_alineacion_local INT
		DECLARE @id_alineacion_visitante INT
		DECLARE @tarjetas_amarillas INT
		DECLARE @tarjetas_rojas INT
		DECLARE @id_tipo_falta INT
		DECLARE @id_tarjeta INT
		DECLARE @id_detalle_alineacion INT
		DECLARE @minuto INT
		DECLARE @contador INT
		DECLARE @contador_amarillo_local INT
		DECLARE @contador_amarillo_visitante INT
		DECLARE @cantidad_faltas INT
		DECLARE @contador_faltas INT
		DECLARE @contador_roja INT
		DECLARE @flag INT
		
		DECLARE cursor1 CURSOR FOR
		SELECT id_alineacion_local, id_alineacion_visitante, tarjetas_amarillas, tarjetas_rojas
		FROM ProgramaPartido;
		OPEN cursor1;

		FETCH NEXT FROM cursor1 INTO @id_alineacion_local, @id_alineacion_visitante, @tarjetas_amarillas, @tarjetas_rojas;

		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @contador_roja =  @tarjetas_rojas
			SELECT @contador_amarillo_local = FLOOR(RAND() * @tarjetas_amarillas)
			SELECT @contador_amarillo_visitante = @tarjetas_amarillas - @contador_amarillo_local
			SELECT @flag = ROUND(RAND() + 1.0, 0)

			SELECT @cantidad_faltas = ABS(CHECKSUM(NEWID())) % 5 + 9
			SET @contador_faltas = 1
			WHILE @cantidad_faltas >= @contador_faltas
			BEGIN
				SET @minuto = CAST(RAND() * 90 + 1 AS INT)
				SELECT TOP 1 @id_detalle_alineacion = id_detalle_alineacion FROM DetalleAlineacion WHERE id_alineacion = @id_alineacion_local ORDER BY NEWID()
				SELECT TOP 1 @id_tipo_falta = id_tipo_falta FROM TipoFalta ORDER BY NEWID()
				SELECT @id_tarjeta = id_tarjeta FROM Tarjeta WHERE color_tarjeta = 'Tarjeta Amarilla' 
								
				IF @contador_amarillo_local > 0
				BEGIN
					INSERT INTO Falta(minuto, id_tipo_falta, id_tarjeta, id_detalle_alineacion)
					VALUES (@minuto, @id_tipo_falta, @id_tarjeta, @id_detalle_alineacion)
				END
				ELSE
				BEGIN
					IF @contador_roja > 0 AND @flag = 1
					BEGIN
						SELECT @id_tarjeta = id_tarjeta FROM Tarjeta WHERE color_tarjeta = 'Tarjeta Roja'
						INSERT INTO Falta(minuto, id_tipo_falta, id_tarjeta, id_detalle_alineacion)
						VALUES (@minuto, @id_tipo_falta, @id_tarjeta, @id_detalle_alineacion)
						SET @contador_roja = @contador_roja - 1
					END
					ELSE
					BEGIN
						INSERT INTO Falta(minuto, id_tipo_falta, id_detalle_alineacion)
						VALUES (@minuto, @id_tipo_falta, @id_detalle_alineacion)
					END					
				END	
				SET @contador_amarillo_local = @contador_amarillo_local - 1
				SET @contador_faltas = @contador_faltas + 1
			END	
			------------------------------------------------------------------------------------------------
			SELECT @cantidad_faltas = ABS(CHECKSUM(NEWID())) % 5 + 9
			SET @contador_faltas = 1
			WHILE @cantidad_faltas >= @contador_faltas
			BEGIN
				SET @minuto = CAST(RAND() * 90 + 1 AS INT)
				SELECT TOP 1 @id_detalle_alineacion = id_detalle_alineacion FROM DetalleAlineacion WHERE id_alineacion = @id_alineacion_visitante ORDER BY NEWID()
				SELECT TOP 1 @id_tipo_falta = id_tipo_falta FROM TipoFalta ORDER BY NEWID()
				SELECT @id_tarjeta = id_tarjeta FROM Tarjeta WHERE color_tarjeta = 'Tarjeta Amarilla' 
								
				IF @contador_amarillo_visitante > 0
				BEGIN
					INSERT INTO Falta(minuto, id_tipo_falta, id_tarjeta, id_detalle_alineacion)
					VALUES (@minuto, @id_tipo_falta, @id_tarjeta, @id_detalle_alineacion)
				END
				ELSE
				BEGIN
					IF @contador_roja > 0 AND @flag = 2
					BEGIN
						SELECT @id_tarjeta = id_tarjeta FROM Tarjeta WHERE color_tarjeta = 'Tarjeta Roja'
						INSERT INTO Falta(minuto, id_tipo_falta, id_tarjeta, id_detalle_alineacion)
						VALUES (@minuto, @id_tipo_falta, @id_tarjeta, @id_detalle_alineacion)
						SET @contador_roja = @contador_roja - 1
					END
					ELSE
					BEGIN
						INSERT INTO Falta(minuto, id_tipo_falta, id_detalle_alineacion)
						VALUES (@minuto, @id_tipo_falta, @id_detalle_alineacion)
					END					
				END		
				SET @contador_amarillo_local = @contador_amarillo_visitante - 1
				SET @contador_faltas = @contador_faltas + 1
			END	
			
			FETCH NEXT FROM cursor1 INTO @id_alineacion_local, @id_alineacion_visitante, @tarjetas_amarillas, @tarjetas_rojas;
		END

		CLOSE cursor1;
		DEALLOCATE cursor1;
	END

EXEC GenerarFaltas

CREATE PROCEDURE GenerarCambioJugador
AS
BEGIN
	DECLARE @id_detalle_alineacion_salida INT
	DECLARE @id_detalle_alineacion_entrada INT
	DECLARE @id_alineacion INT
	DECLARE @minuto_cambio INT
	DECLARE @cant INT

	DECLARE cursor1 CURSOR FOR
	SELECT id_alineacion
	FROM Alineacion;
	OPEN cursor1;

	FETCH NEXT FROM cursor1 INTO @id_alineacion;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		DECLARE @cantidad_cambio INT = 1
		WHILE @cantidad_cambio <= 3
		BEGIN
			SET @minuto_cambio = CAST(RAND() * 90 + 1 AS INT)						
			SET @cant = 1
			WHILE @cant > 0
			BEGIN
				SELECT TOP 1 @id_detalle_alineacion_salida = id_detalle_alineacion from DetalleAlineacion WHERE id_alineacion = @id_alineacion AND posicion <> 'Portero' AND posicion <> 'Sustitucion Uno' AND posicion <> 'Sustitucion Dos' AND posicion <> 'Sustitucion Tres' ORDER BY NEWID()
				SELECT @cant = COUNT(*) FROM CambioJugador WHERE id_jugador_salida = @id_detalle_alineacion_salida
			END			
			SET @cant = 1
			WHILE @cant > 0
			BEGIN
				SELECT TOP 1 @id_detalle_alineacion_entrada = id_detalle_alineacion from DetalleAlineacion WHERE id_alineacion = @id_alineacion AND (posicion = 'Sustitucion Uno' OR posicion = 'Sustitucion Dos' OR posicion = 'Sustitucion Tres') ORDER BY NEWID()
				SELECT @cant = COUNT(*) FROM CambioJugador WHERE id_jugador_entrada = @id_detalle_alineacion_entrada
			END
			
			INSERT INTO CambioJugador(minuto_cambio, id_jugador_entrada, id_jugador_salida)
			VALUES (@minuto_cambio, @id_detalle_alineacion_entrada, @id_detalle_alineacion_salida)
				
			SET @cantidad_cambio = @cantidad_cambio + 1
		END
		
	FETCH NEXT FROM cursor1 INTO @id_alineacion;
	END
	SELECT * FROM CambioJugador
END

EXEC GenerarCambioJugador

CREATE PROCEDURE AgregarEvento
AS
BEGIN
	DECLARE @tiempo_jugado INT
	DECLARE @cantidad_pases INT
	DECLARE @id_detalle_alineacion INT
	DECLARE @minuto_cambio INT
	DECLARE @flag INT	
	
	DECLARE cursor_evento CURSOR FOR
	SELECT id_detalle_alineacion
	FROM DetalleAlineacion;

	OPEN cursor_evento;
	FETCH NEXT FROM cursor_evento INTO @id_detalle_alineacion

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @cantidad_pases = ROUND(RAND()*(100-50)+50, 0)
		SET @tiempo_jugado = 90		
		SELECT @flag = COUNT(*) FROM CambioJugador WHERE id_jugador_entrada = @id_detalle_alineacion OR id_jugador_salida = @id_detalle_alineacion

		IF @flag > 0
		BEGIN		
			SELECT @minuto_cambio = minuto_cambio FROM CambioJugador WHERE id_jugador_entrada = @id_detalle_alineacion
			IF @minuto_cambio > 0
			BEGIN
				SET @tiempo_jugado = @tiempo_jugado - @minuto_cambio				
			END
			SELECT @minuto_cambio = minuto_cambio FROM CambioJugador WHERE id_jugador_salida = @id_detalle_alineacion
			IF @minuto_cambio > 0
			BEGIN
				SET @tiempo_jugado = @minuto_cambio
			END								
		END
		INSERT INTO Evento(tiempo_jugado, cantidad_pases, id_detalle_alineacion)
		VALUES (@tiempo_jugado, @cantidad_pases, @id_detalle_alineacion)		
	FETCH NEXT FROM cursor_evento INTO @id_detalle_alineacion;
	END	
	CLOSE cursor_evento;
	DEALLOCATE cursor_evento;
END

EXEC AgregarEvento


-------------------------------Está de forma aleatoria------------------------------
CREATE PROCEDURE InsertarCambioEstado
AS
BEGIN
    DECLARE @Contador INT
    SET @Contador = 1

    WHILE @Contador <= 900
    BEGIN
        -- Generar un IdJugador aleatorio
        DECLARE @IdJugador INT

        -- Obtener el número total de registros en la tabla Jugador
        DECLARE @TotalJugadores INT
        SELECT @TotalJugadores = COUNT(*) FROM Jugador

        -- Generar un número aleatorio entre 1 y el número total de registros en la tabla Jugador
        SET @IdJugador = ROUND((RAND() * (@TotalJugadores - 1)) + 1, 0)

        -- Generar un IdEstado aleatorio
        DECLARE @IdEstado INT

        -- Obtener el número total de registros en la tabla EstadoJugador
        DECLARE @TotalEstados INT
        SELECT @TotalEstados = COUNT(*) FROM EstadoJugador

        -- Generar un número aleatorio entre 1 y el número total de registros en la tabla EstadoJugador
        SET @IdEstado = ROUND((RAND() * (@TotalEstados - 1)) + 1, 0)

        -- Si es la primera iteración, establecer el primer ID de EstadoJugador como clave foránea
        IF @Contador = 1
            SET @IdEstado = 1

        -- Generar una fecha aleatoria entre 1910-01-01 y la fecha actual
        DECLARE @FechaAleatoria DATE
        DECLARE @FechaMinima DATE
        SET @FechaMinima = '1910-01-01'
        SET @FechaAleatoria = DATEADD(day, ROUND((RAND() * (DATEDIFF(day, @FechaMinima, GETDATE()))), 0), @FechaMinima)

        -- Insertar el registro en la tabla CambioEstado
        INSERT INTO CambioEstado (id_jugador, id_estado_jugador, fecha)
        VALUES (@IdJugador, @IdEstado, @FechaAleatoria)

        SET @Contador = @Contador + 1
    END
END

EXEC InsertarCambioEstado

CREATE PROCEDURE InsertarNacionalidadJugador
AS
BEGIN
    DECLARE @Contador INT
    SET @Contador = 1

    WHILE @Contador <= 900
    BEGIN
        -- Generar un IdJugador aleatorio
        DECLARE @IdJugador INT

        -- Obtener el número total de registros en la tabla Jugador
        DECLARE @TotalJugadores INT
        SELECT @TotalJugadores = COUNT(*) FROM Jugador

        -- Generar un número aleatorio entre 1 y el número total de registros en la tabla Jugador
        SET @IdJugador = ROUND((RAND() * (@TotalJugadores - 1)) + 1, 0)

        -- Generar un IdNacionalidad aleatorio
        DECLARE @IdNacionalidad INT

        -- Obtener el número total de registros en la tabla Nacionalidad
        DECLARE @TotalNacionalidades INT
        SELECT @TotalNacionalidades = COUNT(*) FROM Nacionalidad

        -- Generar un número aleatorio entre 1 y el número total de registros en la tabla Nacionalidad
        SET @IdNacionalidad = ROUND((RAND() * (@TotalNacionalidades - 1)) + 1, 0)

        -- Generar una fecha aleatoria entre 1910-01-01 y la fecha actual
        DECLARE @FechaAdquisicion DATE
        DECLARE @FechaMinima DATE
        SET @FechaMinima = '1910-01-01'
        SET @FechaAdquisicion = DATEADD(day, ROUND((RAND() * (DATEDIFF(day, @FechaMinima, GETDATE()))), 0), @FechaMinima)

        -- Insertar el registro en la tabla NacionalidadJugador
        INSERT INTO NacionalidadJugador (id_jugador, id_nacionalidad, fecha_adquisicion)
        VALUES (@IdJugador, @IdNacionalidad, @FechaAdquisicion)

        SET @Contador = @Contador + 1
    END
END

EXEC InsertarNacionalidadJugador

-----------------------------------------------------------

CREATE PROCEDURE AgregarPlanillaEquipo
AS
BEGIN
	DECLARE @forma_pago VARCHAR(50)
	DECLARE @fecha_inscrito DATE
	DECLARE @id_equipo INT
	DECLARE @id_usuario INT
	DECLARE @id_torneo INT
	DECLARE @cantidad_equipo_uno INT
	DECLARE @cantidad_equipo_dos INT
	DECLARE @id_equipo_uno INT 
	DECLARE @id_equipo_dos INT 
	DECLARE @id_local INT
	DECLARE @id_visitante INT
	DECLARE @fecha_inicio DATE
	DECLARE @fecha_fin DATE
	DECLARE @dias INT
	DECLARE @fecha_random DATE
	DECLARE @random INT
	DECLARE @id_alineacion_visitante INT
	DECLARE @id_alineacion_local INT

	DECLARE cursor_planilla CURSOR FOR
	SELECT id_torneo, id_alineacion_local, id_alineacion_visitante
	FROM ProgramaPartido;

	OPEN cursor_planilla;
	FETCH NEXT FROM cursor_planilla INTO @id_torneo, @id_alineacion_local, @id_alineacion_visitante

	WHILE @@FETCH_STATUS = 0
	BEGIN
		DECLARE @formas_pagos TABLE(id INT PRIMARY KEY IDENTITY(1,1), forma_pago varchar(30))
		INSERT INTO @formas_pagos(forma_pago)
		VALUES ('Pago en efectivo'),('Transferencia bancaria'),('Tarjeta de crédito/débito'),('Plataformas de pago en línea')
		SELECT TOP 1 @forma_pago = forma_pago FROM @formas_pagos ORDER BY NEWID()	
		----------------------------------------------------------------------------------------
		SELECT @fecha_inicio = fecha_inicio_inscripcion FROM Torneo WHERE id_torneo = @id_torneo
		SELECT @fecha_fin = fecha_fin_inscripcion FROM Torneo WHERE id_torneo = @id_torneo
		
		SET @dias = DATEDIFF(day, CAST(@fecha_inicio AS DATE) , CAST(@fecha_fin AS DATE))

		SET @random = CAST((RAND() * @dias) AS INT)

		SET @fecha_inscrito = DATEADD(day, @random, @fecha_inicio)
		----------------------------------------------------------------------------------------
		select @id_local = id_alineacion_local, @id_visitante = id_alineacion_visitante 
		from ProgramaPartido 
		where id_torneo = @id_torneo and id_alineacion_visitante = @id_alineacion_visitante or id_alineacion_local = @id_alineacion_local

		select @id_equipo_uno = id_equipo from Alineacion where id_alineacion = @id_local
		select @id_equipo_dos = id_equipo from Alineacion where id_alineacion = @id_visitante

		SELECT @cantidad_equipo_uno = COUNT(*) FROM PlanillaEquipo WHERE id_torneo = @id_torneo AND id_equipo = @id_equipo_uno
		SELECT @cantidad_equipo_dos = COUNT(*) FROM PlanillaEquipo WHERE id_torneo = @id_torneo AND id_equipo = @id_equipo_dos
		--------------------------------------------------------------------------------
		SELECT TOP 1 @id_usuario = id_usuario FROM Usuario ORDER BY NEWID()

		IF @cantidad_equipo_uno = 0
		BEGIN
			INSERT INTO PlanillaEquipo(forma_pago, fecha_inscrito, id_equipo, id_usuario, id_torneo)
			VALUES (@forma_pago, @fecha_inscrito, @id_equipo_uno, @id_usuario, @id_torneo)
		END
		IF @cantidad_equipo_dos = 0
		BEGIN
			INSERT INTO PlanillaEquipo(forma_pago, fecha_inscrito, id_equipo, id_usuario, id_torneo)
			VALUES (@forma_pago, @fecha_inscrito, @id_equipo_dos, @id_usuario, @id_torneo)
		END
	FETCH NEXT FROM cursor_planilla INTO @id_torneo, @id_alineacion_local, @id_alineacion_visitante;
	END
	CLOSE cursor_planilla;
	DEALLOCATE cursor_planilla;
END

EXEC AgregarPlanillaEquipo

select * from ProgramaPartido
select * from PlanillaEquipo

select * from Equipo where id_equipo in (select id_equipo from PlanillaEquipo)
select * from Torneo
-------------------------------------------------------------

CREATE PROCEDURE AgregarPosicion
AS
BEGIN
	DECLARE @posicion_torneo INT
	DECLARE @partidos_jugados INT
	DECLARE @cantidad_puntos INT
	DECLARE @partidos_ganados INT
	DECLARE @partidos_empatados INT
	DECLARE @goles_anotados INT
	DECLARE @goles_encontra INT
	DECLARE @diferencia_goles INT
	
	DECLARE @contador INT
    SET @contador = 1
    WHILE @contador <= 750
    BEGIN
		SELECT @posicion_torneo = ROUND(RAND()*(10-1)+1, 0)
		SELECT @partidos_jugados = ROUND(RAND()*(80-50)+50, 0)
		SELECT @cantidad_puntos = ROUND(RAND()*(30-5)+5, 0)
		SELECT @partidos_ganados = ROUND(RAND()*(20-5)+5, 0)
		SELECT @partidos_empatados = ROUND(RAND()*(20-5)+5, 0)
		SELECT @goles_anotados = ROUND(RAND()*(15-5)+5, 0)
		SELECT @goles_encontra = ROUND(RAND()*(15-5)+5, 0)
		SELECT @diferencia_goles = ROUND(RAND()*(7-2)+2, 0)
		INSERT INTO Posicion(posicion_torneo, partidos_jugados, cantidad_puntos, partidos_ganados, partidos_empatados, goles_anotados, goles_encontra, diferencia_goles)
		VALUES (@posicion_torneo, @partidos_jugados, @cantidad_puntos, @partidos_ganados, @partidos_empatados, @goles_anotados, @goles_encontra, @diferencia_goles)
		SET @contador = @contador + 1
	END
END

EXEC AgregarPosicion

CREATE PROCEDURE AgregarPosicionEquipoTorneo
AS
BEGIN
	DECLARE @id_torneo INT
	DECLARE @id_equipo INT
	DECLARE @id_posicion INT

	DECLARE cursor2 CURSOR FOR
	SELECT id_posicion
	FROM Posicion;

	OPEN cursor2;

	FETCH NEXT FROM cursor2 INTO @id_posicion
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT TOP 1 @id_equipo = id_equipo FROM Equipo ORDER BY NEWID()
		SELECT TOP 1 @id_torneo = id_torneo FROM Torneo ORDER BY NEWID()

		INSERT INTO PosicionEquipoTorneo(id_equipo, id_posicion, id_torneo)
		VALUES(@id_equipo, @id_posicion, @id_torneo)

	FETCH NEXT FROM cursor2 INTO @id_posicion;
	END		
	CLOSE cursor2;
	DEALLOCATE cursor2;
END

EXEC AgregarPosicionEquipoTorneo

CREATE PROCEDURE AgregarEstadisticaClub
AS
BEGIN
	DECLARE @partidos_jugados INT
	DECLARE @tarjetas_rojas INT
	DECLARE @tarjetas_amarillas INT
	DECLARE @goles_marcados INT
	DECLARE @id_club_futbol INT
		
	DECLARE cursor3 CURSOR FOR
	SELECT id_club_futbol
	FROM ClubFutbol;

	OPEN cursor3;

	FETCH NEXT FROM cursor3 INTO @id_club_futbol
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @partidos_jugados = ROUND(RAND()*(80-50)+50, 0)
		SET @tarjetas_rojas = ROUND(RAND()*(80-50)+50, 0)
		SET @tarjetas_amarillas = ROUND(RAND()*(170-50)+50, 0)
		SET @goles_marcados = ROUND(RAND()*(160-50)+50, 0)	
		INSERT INTO EstadisticaClub(partidos_jugados, tarjetas_rojas, tarjetas_amarillas, goles_marcados, id_club_futbol)
		VALUES(@partidos_jugados, @tarjetas_rojas, @tarjetas_amarillas, @goles_marcados, @id_club_futbol)
	FETCH NEXT FROM cursor3 INTO @id_club_futbol;
	END	
END

EXEC AgregarEstadisticaClub





select * from DetalleAlineacion WHERE id_alineacion = 153
select * from Goleo WHERE id_detalle_alineacion > 1332 and id_detalle_alineacion < 1343
select * from ProgramaPartido WHERE id_alineacion_local = 153



select * from PlanillaEquipo


select * from Posicion

select count(*) 
from Alineacion 
where id_equipo = 7 
and id_alineacion 
in (select id_alineacion_visitante from ProgramaPartido where id_torneo = 1)

select count(*) 
from Alineacion 
where id_equipo = 7 
and id_alineacion 
in (select id_alineacion_local from ProgramaPartido where id_torneo = 1)

DECLARE @partidos_jugados INT


------------------------------------------------------------------------------------------------------------

---------------------------------------------------------

---------------------------------------------------------
CREATE PROCEDURE AgregarPosicion
AS
BEGIN
	DECLARE @id_equipo INT
	DECLARE @id_torneo	INT
	DECLARE @partidos_jugados INT

	DECLARE cursor_planilla CURSOR FOR
	SELECT id_equipo, id_torneo
	FROM PlanillaEquipo;

	OPEN cursor_planilla;

	FETCH NEXT FROM cursor_planilla INTO @id_equipo, @id_torneo
	WHILE @@FETCH_STATUS = 0
	BEGIN
		DECLARE @puntos_equipos TABLE(id INT PRIMARY KEY IDENTITY(1,1), id_equipo int, cantidad_puntos int)
		DECLARE @equipo_torneo TABLE(id INT PRIMARY KEY IDENTITY(1,1), id_alineacion INT)
		DECLARE @id_alineacion INT
		DECLARE @marcador_local INT
		DECLARE @marcador_visitante INT
		DECLARE @cantidad_puntos INT = 0
		DECLARE @partidos_ganados INT = 0
		DECLARE @partidos_empatados INT = 0
		DECLARE @goles_anotados INT = 0
		DECLARE @goles_encontra INT = 0
		DECLARE @diferencia_goles INT = 0

		INSERT INTO @equipo_torneo (id_alineacion)
		SELECT id_alineacion
		FROM Alineacion
		WHERE id_equipo = @id_equipo
		and id_alineacion 
		in (select id_alineacion_local from ProgramaPartido where id_torneo = @id_torneo)
		
		INSERT INTO @equipo_torneo (id_alineacion)
		SELECT id_alineacion
		FROM Alineacion
		WHERE id_equipo = @id_equipo
		and id_alineacion 
		in (select id_alineacion_visitante from ProgramaPartido where id_torneo = @id_torneo)

		DECLARE cursor_equipo CURSOR FOR
		SELECT id_alineacion
		FROM @equipo_torneo;

		OPEN cursor_equipo;

		FETCH NEXT FROM cursor_equipo INTO @id_alineacion
		WHILE @@FETCH_STATUS = 0
		BEGIN
  
			SELECT @marcador_local = marcador_local, @marcador_visitante = marcador_visitante 
			FROM ProgramaPartido 
			WHERE id_alineacion_local = @id_alineacion 
		
			IF @marcador_local > @marcador_visitante
			BEGIN
				SET @cantidad_puntos = @cantidad_puntos + 3
				SET @partidos_ganados = @partidos_ganados + 1
				SET @goles_anotados = @goles_anotados + @marcador_local
			END
			IF @marcador_local = @marcador_visitante
			BEGIN
				SET @cantidad_puntos = @cantidad_puntos + 1
				SET @partidos_empatados = @partidos_empatados + 1
				SET @goles_anotados = @goles_anotados + @marcador_local
				SET @goles_encontra = @goles_encontra + @marcador_visitante
			END
			IF @marcador_local < @marcador_visitante
			BEGIN
				SET @goles_encontra = @goles_encontra + @marcador_visitante
			END			

			SELECT @marcador_local = marcador_local, @marcador_visitante = marcador_visitante 
			FROM ProgramaPartido 
			WHERE id_alineacion_visitante = @id_alineacion 
		
			IF @marcador_visitante > @marcador_local
			BEGIN
				SET @cantidad_puntos = @cantidad_puntos + 3
				SET @partidos_ganados = @partidos_ganados + 1
				SET @goles_anotados = @goles_anotados + @marcador_visitante
			END
			IF @marcador_visitante = @marcador_local
			BEGIN
				SET @cantidad_puntos = @cantidad_puntos + 1
				SET @partidos_empatados = @partidos_empatados + 1
				SET @goles_anotados = @goles_anotados + @marcador_visitante
				SET @goles_encontra = @goles_encontra + @marcador_local
			END
			IF @marcador_visitante < @marcador_local 
			BEGIN
				SET @goles_encontra = @goles_encontra + @marcador_local
			END						
								
		FETCH NEXT FROM cursor_equipo INTO @id_alineacion;
		END
		CLOSE cursor_equipo;
		DEALLOCATE cursor_equipo;	

		DECLARE @cantidad_local INT = 0
		DECLARE @cantidad_visitante INT = 0
		
		select @cantidad_local = count(*) 
		from Alineacion 
		where id_equipo = @id_equipo 
		and id_alineacion 
		in (select id_alineacion_local from ProgramaPartido where id_torneo = @id_torneo)

		select @cantidad_visitante = count(*) 
		from Alineacion 
		where id_equipo = @id_equipo 
		and id_alineacion 
		in (select id_alineacion_local from ProgramaPartido where id_torneo = @id_torneo)
		
		SET @partidos_jugados = @cantidad_visitante + @cantidad_local

		SET @diferencia_goles = @goles_anotados - @goles_encontra

		INSERT INTO Posicion(partidos_jugados, cantidad_puntos, partidos_ganados, partidos_empatados, goles_anotados, goles_encontra, diferencia_goles)
		VALUES (@partidos_jugados, @cantidad_puntos, @partidos_ganados, @partidos_empatados, @goles_anotados, @goles_encontra, @diferencia_goles)
		SET @cantidad_puntos = 0 
		SET @partidos_ganados = 0
		SET @partidos_empatados = 0
		SET @goles_anotados = 0
		SET @goles_encontra = 0
		DECLARE @id_posicion INT
		SELECT @id_posicion = SCOPE_IDENTITY();
		INSERT INTO PosicionEquipoTorneo (id_equipo, id_posicion, id_torneo)
		VALUES (@id_equipo, @id_posicion, @id_torneo)

	FETCH NEXT FROM cursor_planilla INTO @id_equipo, @id_torneo;
	END
	CLOSE cursor_planilla;
	DEALLOCATE cursor_planilla;
END

EXEC AgregarPosicion

CREATE PROCEDURE AgregarTorneos
AS 
BEGIN
	DECLARE @id_torneo INT
	DECLARE cursor_torneo CURSOR FOR
	SELECT id_torneo
	FROM Torneo;

	OPEN cursor_torneo;

	FETCH NEXT FROM cursor_torneo INTO @id_torneo
	WHILE @@FETCH_STATUS = 0
	BEGIN
			
		EXEC AgregarPartidoProgramadoA @id_torneo
		
	FETCH NEXT FROM cursor_torneo INTO @id_torneo;
	END
	CLOSE cursor_torneo;
	DEALLOCATE cursor_torneo;
END

-----------------------------------------------------------
INSERT INTO EstadisticaClub(id_club_futbol)
SELECT id_club_futbol
FROM ClubFutbol
UPDATE EstadisticaClub 
SET partidos_jugados = 0, 
	partidos_ganados = 0, 
	goles_encontra = 0,
	diferencia_goles = 0,
	tarjetas_rojas = 0, 
	tarjetas_amarillas = 0, 
	goles_marcados = 0;

select * from EstadisticaClub
-----------------------------------------------------------
CREATE TRIGGER ActualizarEstadisticaClubParteUno
ON PosicionEquipoTorneo
AFTER INSERT
AS
BEGIN
	DECLARE @partidos_jugados INT, @goles_marcados INT, @id_club_futbol INT, @id_posicion INT, @id_equipo INT

	SELECT @id_posicion = id_posicion, @id_equipo = id_equipo
	FROM inserted
	
	SELECT @id_club_futbol = id_club_futbol FROM Equipo WHERE id_equipo = @id_equipo
	SELECT @partidos_jugados = partidos_jugados, @goles_marcados = goles_anotados 
	FROM Posicion WHERE id_posicion = @id_posicion 
	
	UPDATE EstadisticaClub
	SET partidos_jugados = partidos_jugados + @partidos_jugados, goles_marcados = goles_marcados + @goles_marcados
	WHERE id_club_futbol = @id_club_futbol
END


CREATE TRIGGER ActualizarEstadisticaClubParteDos
ON Falta
AFTER INSERT
AS
BEGIN	
	DECLARE @tarjetas_rojas INT, @tarjetas_amarillas INT, @id_club_futbol INT, @id_detalle_alineacion INT,
	@id_tarjeta INT, @tarjeta_roja INT, @tarjeta_amarilla INT
	
	SELECT @tarjeta_amarilla = id_tarjeta FROM Tarjeta WHERE color_tarjeta = 'Tarjeta Amarilla'
	SELECT @tarjeta_roja = id_tarjeta FROM Tarjeta WHERE color_tarjeta = 'Tarjeta Roja'		
	
	SELECT @id_detalle_alineacion = id_detalle_alineacion, @id_tarjeta = id_tarjeta
	FROM inserted

	select @id_club_futbol = id_club_futbol from Equipo where id_club_futbol in 
		(select id_equipo from Alineacion where id_alineacion in
			(select id_alineacion from DetalleAlineacion where id_detalle_alineacion = @id_detalle_alineacion))

	IF @id_tarjeta = @tarjeta_amarilla
	BEGIN
		UPDATE EstadisticaClub
		SET tarjetas_amarillas = tarjetas_amarillas + 1
		WHERE id_club_futbol = @id_club_futbol
	END
	IF @id_tarjeta = @tarjeta_roja
	BEGIN
		UPDATE EstadisticaClub
		SET tarjetas_rojas = tarjetas_rojas + 1
		WHERE id_club_futbol = @id_club_futbol
	END	
END

-----------------------------AGREGAR PLANTEL--------------------------------
CREATE PROCEDURE AgregarPlantelA
AS
BEGIN
	DECLARE @id_equipo INT, @menor INT = 0, @mayor INT = 0

	DECLARE cursor_equipo CURSOR FOR
	SELECT id_equipo
	FROM Equipo;

	OPEN cursor_equipo;

	FETCH NEXT FROM cursor_equipo INTO @id_equipo
	WHILE @@FETCH_STATUS = 0
	BEGIN
	    SET @menor = @mayor + 1
		SET @mayor = @mayor + 22
		INSERT INTO EquipoJugador(id_jugador, id_equipo)
		SELECT TOP 22 id_jugador, @id_equipo
		FROM Jugador where id_jugador BETWEEN @menor and @mayor
	FETCH NEXT FROM cursor_equipo INTO @id_equipo;
	END
	CLOSE cursor_equipo;
	DEALLOCATE cursor_equipo;
END

CREATE PROCEDURE AgregarPlantelB
AS
BEGIN
	DECLARE @id INT = 1, @id_jugador INT, @posicion VARCHAR(70)

	DECLARE @posiciones TABLE (id INT IDENTITY(1,1), posiciones VARCHAR(70))
	INSERT INTO @posiciones(posiciones)
	VALUES ('Portero'),('Defensa central'),('Lateral derecho'),('Lateral izquierdo'),('Centrocampista defensivo'),('Centrocampista central'),('Centrocampista derecho'),('Centrocampista izquierdo'),('Delantero centro'),('Delantero derecho'),('Delantero izquierdo')
	
	DECLARE cursor_jugador CURSOR FOR
	SELECT id_jugador
	FROM EquipoJugador;

	OPEN cursor_jugador;

	FETCH NEXT FROM cursor_jugador INTO @id_jugador
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT TOP 1 @posicion = posiciones FROM @posiciones WHERE id = @id
		
		UPDATE EquipoJugador
		SET posicion = @posicion 
		WHERE id_jugador = @id_jugador
		
		IF @id = 11
		BEGIN
			SET @id = 0
		END
		SET @id = @id + 1
	FETCH NEXT FROM cursor_jugador INTO @id_jugador;
	END
	CLOSE cursor_jugador;
	DEALLOCATE cursor_jugador;
END

-----------------------------AGREGAR PLANTEL--------------------------------
EXEC AgregarPlantelA
EXEC AgregarPlantelB

select * from EquipoJugador
delete from EquipoJugador
----------------------------------------------------------------------------
-----------------------------AGREGAR PLANILLA EQUIPOS------------------------------
CREATE PROCEDURE AgregarPlanillaEquipoA
AS 
BEGIN		
	DECLARE @id_torneo INT, @numero_equipo INT, @numero_aleatorio INT, @mayor INT, @menor INT
	
	DECLARE cursor_torneo CURSOR FOR
	SELECT id_torneo
	FROM Torneo;
	
	OPEN cursor_torneo;

	FETCH NEXT FROM cursor_torneo INTO @id_torneo
	WHILE @@FETCH_STATUS = 0	
	BEGIN
		SET @mayor = 15
		SET @menor = 5 
		SET @numero_equipo = CAST((RAND() * (@mayor - @menor + 1) + @menor) AS INT);
		SET @mayor = CAST((RAND() * (30 - @numero_equipo + 1) + @numero_equipo) AS INT); 
		SET @menor = (@mayor - @numero_equipo) + 1

		INSERT INTO PlanillaEquipo(id_equipo, id_torneo)
		SELECT TOP (@numero_equipo) id_equipo, @id_torneo
		FROM Equipo where id_equipo BETWEEN @menor and @mayor
				
	FETCH NEXT FROM cursor_torneo INTO @id_torneo
	END
	CLOSE cursor_torneo;
	DEALLOCATE cursor_torneo;
END

CREATE PROCEDURE AgregarPlanillaEquipoB
AS
BEGIN		
	DECLARE @fecha_inscrito DATE
	DECLARE @fecha_inicio_inscripcion DATE
	DECLARE @fecha_fin_inscripcion DATE
	DECLARE @id_planilla_equipo INT	
	DECLARE @id_usuario INT
	DECLARE @forma_pago VARCHAR(30)	
	DECLARE @id_torneo INT
	DECLARE @dias INT

	DECLARE cursor_planilla_equipo CURSOR FOR
	SELECT id_planilla_equipo, id_torneo
	FROM PlanillaEquipo;
	
	OPEN cursor_planilla_equipo;

	FETCH NEXT FROM cursor_planilla_equipo INTO @id_planilla_equipo, @id_torneo
	WHILE @@FETCH_STATUS = 0	
	BEGIN

		SELECT @fecha_inicio_inscripcion = fecha_inicio_inscripcion, @fecha_fin_inscripcion = fecha_fin_inscripcion 
		FROM Torneo 
		WHERE id_torneo = @id_torneo
	
		DECLARE @formas_pagos TABLE(id INT PRIMARY KEY IDENTITY(1,1), forma_pago varchar(30))
		INSERT INTO @formas_pagos(forma_pago)
		VALUES ('Pago en efectivo'),('Transferencia bancaria'),('Tarjeta de crédito/débito'),('Plataformas de pago en línea')

		SET @dias = DATEDIFF(day, CAST(@fecha_inicio_inscripcion AS DATE) , CAST(@fecha_fin_inscripcion AS DATE))	
		---------------------------------------------------------------------------------------------
		SET @fecha_inscrito = DATEADD(day, CAST((RAND() * @dias) AS INT), @fecha_inicio_inscripcion)
		SELECT TOP 1 @forma_pago = forma_pago FROM @formas_pagos ORDER BY NEWID()
		SELECT TOP 1 @id_usuario = id_usuario FROM Usuario ORDER BY NEWID()
		---------------------------------------------------------------------------------------------
		UPDATE PlanillaEquipo
		SET forma_pago = @forma_pago, fecha_inscrito = @fecha_inscrito, id_usuario = @id_usuario
		WHERE id_planilla_equipo = @id_planilla_equipo

	FETCH NEXT FROM cursor_planilla_equipo INTO @id_planilla_equipo, @id_torneo
	END
	CLOSE cursor_planilla_equipo;
	DEALLOCATE cursor_planilla_equipo;
END
-----------------------------AGREGAR PLANILLA EQUIPOS------------------------------
EXEC AgregarPlanillaEquipoA
EXEC AgregarPlanillaEquipoB

select * from PlanillaEquipo
-----------------------------------------------------------------------------------


------------------------------------AGREGAR TORNEOS--------------------------------------
CREATE PROCEDURE AgregarPartidoProgramadoA (@id_torneo INT)
AS
BEGIN	
	DECLARE @id_alineacion_local INT, @id_alineacion_visitante INT, @fecha_programada DATE, @dias INT	
	DECLARE @id_equipo1 INT, @id_equipo2 INT, @cantidad INT, @fecha_inicio DATE, @fecha_fin DATE 
	------------------------------------------------------------------------------	
	SELECT @fecha_inicio = fecha_inicio_torneo, @fecha_fin = fecha_fin_torneo 
	FROM Torneo WHERE id_torneo = @id_torneo
	SELECT @dias = DATEDIFF(day, @fecha_inicio, @fecha_fin)
	
	SELECT @cantidad = COUNT(*) FROM PlanillaEquipo WHERE id_torneo = @id_torneo

	DECLARE cursorA CURSOR FOR 
	SELECT id_equipo FROM PlanillaEquipo WHERE id_torneo = @id_torneo ORDER BY id_equipo ASC;
	OPEN cursorA;

	FETCH NEXT FROM cursorA INTO @id_equipo1;
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @cantidad = @cantidad - 1
		
		DECLARE cursorB CURSOR FOR
		SELECT TOP (@cantidad) id_equipo FROM PlanillaEquipo WHERE id_torneo = @id_torneo ORDER BY id_equipo DESC;
		OPEN cursorB;

		FETCH NEXT FROM cursorB INTO @id_equipo2;
		WHILE @@FETCH_STATUS = 0
		BEGIN
			-------------------------------------------------------------------------------------------------------------
			SELECT @fecha_programada = DATEADD(day, CAST(RAND()*(@dias) AS int), @fecha_inicio)		
			
			INSERT INTO Alineacion(id_equipo, fecha) VALUES(@id_equipo1, @fecha_programada)
			SET @id_alineacion_local = SCOPE_IDENTITY();
			INSERT INTO Alineacion(id_equipo, fecha) VALUES(@id_equipo2, @fecha_programada)
			SET @id_alineacion_visitante = SCOPE_IDENTITY();
			-------------------------------------------------------------------------------------------------------------
            INSERT INTO ProgramaPartido(id_alineacion_local, id_alineacion_visitante, fecha_programada, id_torneo)
            VALUES (@id_alineacion_local, @id_alineacion_visitante, @fecha_programada, @id_torneo)
			-------------------------------------------------------------------------------------------------------------
			SELECT @fecha_programada = DATEADD(day, CAST(RAND()*(@dias) AS int), @fecha_inicio)			
			
			INSERT INTO Alineacion(id_equipo, fecha) VALUES(@id_equipo1, @fecha_programada)
			SET @id_alineacion_visitante = SCOPE_IDENTITY();
			INSERT INTO Alineacion(id_equipo, fecha) VALUES(@id_equipo2, @fecha_programada)
			SET @id_alineacion_local = SCOPE_IDENTITY();
			-------------------------------------------------------------------------------------------------------------
			INSERT INTO ProgramaPartido(id_alineacion_local, id_alineacion_visitante, fecha_programada, id_torneo)
            VALUES (@id_alineacion_local, @id_alineacion_visitante, @fecha_programada, @id_torneo)
			-------------------------------------------------------------------------------------------------------------
			FETCH NEXT FROM cursorB INTO @id_equipo2;
		END
		CLOSE cursorB;
		DEALLOCATE cursorB;
		FETCH NEXT FROM cursorA INTO @id_equipo1;
	END
	CLOSE cursorA;
	DEALLOCATE cursorA;
END


CREATE TRIGGER AgregarPartidoProgramadoB
ON ProgramaPartido
AFTER INSERT
AS
BEGIN		
    DECLARE @hora_programada TIME, @marcador_local INT, @marcador_visitante INT, @equipo_ganador varchar(50), 
	@equipo_perdedor varchar(50), @tarjetas_amarillas INT, @tarjetas_rojas INT, @id_ubicacion_estadio INT, 
	@id_estado_partido INT = 1, @faltas INT, @cambios INT, @id_programa_partido INT, @id_alineacion_visitante INT,
	@id_alineacion_local INT

	SELECT TOP 1 @id_ubicacion_estadio = id_ubicacion_estadio FROM UbicacionEstadio ORDER BY NEWID()	
	SET @tarjetas_amarillas = FLOOR(2 + (RAND() * (4 - 2 + 1)))
	SET @tarjetas_rojas = FLOOR(0 + (RAND() * (1 - 0 + 1)))			
	SET @marcador_local = FLOOR(0 + (RAND() * (4 - 0 + 1)))
	SET @marcador_visitante = FLOOR(0 + (RAND() * (4 - 0 + 1)))
	SET @faltas = CAST(RAND() * 5 + 15 AS INT)
	SET @cambios = CAST(RAND() * 3 + 4 AS INT)
	SET @hora_programada = RIGHT(DATEADD(hour, CAST(RAND() * 9 AS int), '08:00'), 7)
	
	SELECT @id_programa_partido = id_programa_partido, 
	@id_alineacion_local = id_alineacion_local, @id_alineacion_visitante = id_alineacion_visitante
	FROM inserted

	IF @marcador_local > @marcador_visitante
	BEGIN
		SELECT @equipo_ganador = nombre_equipo FROM Equipo WHERE id_equipo 
		IN (SELECT id_equipo FROM Alineacion WHERE id_alineacion = @id_alineacion_local)
		SELECT @equipo_perdedor = nombre_equipo FROM Equipo WHERE id_equipo 
		IN (SELECT id_equipo FROM Alineacion WHERE id_alineacion = @id_alineacion_visitante)
	END
	IF @marcador_local < @marcador_visitante
	BEGIN
		SELECT @equipo_ganador = nombre_equipo FROM Equipo WHERE id_equipo 
		IN (SELECT id_equipo FROM Alineacion WHERE id_alineacion = @id_alineacion_visitante)
		SELECT @equipo_perdedor = nombre_equipo FROM Equipo WHERE id_equipo 
		IN (SELECT id_equipo FROM Alineacion WHERE id_alineacion = @id_alineacion_local)
	END
	UPDATE ProgramaPartido
	SET hora_programada = @hora_programada, marcador_local = @marcador_local, marcador_visitante = @marcador_visitante,
	equipo_ganador = @equipo_ganador, equipo_perdedor = @equipo_perdedor, tarjetas_amarillas = @tarjetas_amarillas,
	tarjetas_rojas = @tarjetas_rojas, cambios = @cambios, faltas = @faltas, id_estado_partido = @id_estado_partido,
	id_ubicacion_estadio = @id_ubicacion_estadio
	WHERE id_programa_partido = @id_programa_partido
END

------------------------------------AGREGAR TORNEOS---------------------------------------
----------------------------------------------------------------------------
EXEC AgregarPartidoProgramadoA 3
SELECT *  FROM ProgramaPartido WHERE id_torneo > 2
DELETE FROM ProgramaPartido WHERE id_torneo = 3;

----------------------------------------------------------------------------
ALTER FUNCTION ObtenerAlineacion(@id_equipo INT, @fecha DATE)
RETURNS INT
AS
BEGIN
    DECLARE @id_alineacion INT
	SELECT @id_alineacion = id_alineacion FROM Alineacion WHERE fecha = @fecha and id_equipo = @id_equipo
	RETURN @id_alineacion
END



-- Realizar la inserción en la tabla
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[AgregarPartidoProgramadoB] (@id_programa_partido INT)
AS
BEGIN		
    DECLARE @hora_programada TIME, @marcador_local INT, @marcador_visitante INT, @equipo_ganador varchar(50), 
	@equipo_perdedor varchar(50), @tarjetas_amarillas INT, @tarjetas_rojas INT, @id_ubicacion_estadio INT, 
	@id_estado_partido INT = 1, @faltas INT, @cambios INT, @id_alineacion_visitante INT, @id_alineacion_local INT,
	@pases INT, @penales INT, @tiros_libres INT, @duracion_partido INT, @identificador_marcador INT

	SELECT TOP 1 @id_ubicacion_estadio = id_ubicacion_estadio FROM UbicacionEstadio ORDER BY NEWID()	
	SET @tarjetas_amarillas = FLOOR(2 + (RAND() * (4 - 2 + 1)))
	SET @tarjetas_rojas = FLOOR(0 + (RAND() * (1 - 0 + 1)))			
	SET @marcador_local = FLOOR(0 + (RAND() * (4 - 0 + 1)))
	SET @marcador_visitante = FLOOR(0 + (RAND() * (4 - 0 + 1)))
	SET @faltas = CAST(RAND() * 5 + 15 AS INT)
	SET @cambios = CAST(RAND() * 3 + 4 AS INT)
	SET @hora_programada = RIGHT(DATEADD(hour, CAST(RAND() * 9 AS int), '08:00'), 7)
	SET @pases = 400 + CAST((RAND() * (600 - 400 + 1)) AS INT)
	SET @penales = FLOOR(0 + (RAND() * (1 - 0 + 1)))
	SET @tiros_libres = 10 + (RAND() * (15 - 10))
	SET @duracion_partido = 95 + (RAND() * (100 - 95))

	SELECT @id_alineacion_local = id_alineacion_local, @id_alineacion_visitante = id_alineacion_visitante
	FROM ProgramaPartido
	WHERE id_programa_partido = @id_programa_partido 

	IF @marcador_local > @marcador_visitante
	BEGIN
		SET @identificador_marcador = 0
	END
	IF @marcador_local < @marcador_visitante
	BEGIN
		SET @identificador_marcador = 1
	END
	IF @marcador_local = @marcador_visitante
	BEGIN
		SET @identificador_marcador = 2
	END

	UPDATE ProgramaPartido
	SET hora_programada = @hora_programada, marcador_local = @marcador_local, marcador_visitante = @marcador_visitante,
	tarjetas_amarillas = @tarjetas_amarillas, tarjetas_rojas = @tarjetas_rojas, cambios = @cambios, faltas = @faltas, 
	id_estado_partido = @id_estado_partido, id_ubicacion_estadio = @id_ubicacion_estadio, pases = @pases, 
	penales = @penales, tiros_libres = @tiros_libres, duracion_partido = @duracion_partido, 
	identificador_marcador = @identificador_marcador

	WHERE id_programa_partido = @id_programa_partido
END

SELECT * FROM ProgramaPartido
------------------------------------CONSULTAS---------------------------------------
SELECT * FROM CiudadEstadio
SELECT * FROM EstadoPartido
SELECT * FROM Rol
SELECT * FROM Arbitro
SELECT * FROM TipoTecnico
SELECT * FROM UbicacionEstadio 
SELECT * FROM Tarjeta
SELECT * FROM TipoFalta
SELECT * FROM EstadoJugador
SELECT * FROM Nacionalidad
SELECT * FROM TipoUsuario
SELECT * FROM Usuario
SELECT * FROM Dirigente
SELECT * FROM ClubFutbol
SELECT * FROM Equipo
SELECT * FROM Tecnico
SELECT * FROM Jugador
SELECT * FROM Designacion
SELECT * FROM Alineacion
SELECT * FROM Torneo
SELECT * FROM Alineacion
SELECT * FROM ProgramaPartido
SELECT * FROM AlineacionTecnico
SELECT * FROM CambioEstado
SELECT * FROM DetalleAlineacion
SELECT * FROM Falta
SELECT * FROM Goleo
SELECT * FROM CambioEstado
SELECT * FROM EstadisticaClub
------------------------------------CONSULTAS---------------------------------------

CREATE FUNCTION dbo.RandomNumberWithProbabilities
(
    @min INT,
    @max INT,
    @prob1 FLOAT,
    @prob2 FLOAT
)
RETURNS INT
AS
BEGIN
    DECLARE @range INT, @offset INT, @result FLOAT;

    -- Calculate the range and offset
    SELECT @range = @max - @min + 1, @offset = @min - 1;

    -- Generate a random number between 0 and 1
    SET @result = (SELECT TOP 1 RAND(CAST(NEWID() AS VARBINARY)) FROM Numbers);

    -- Determine which range the random number falls into
    IF @result < @prob1
    BEGIN
        -- First range
        RETURN CONVERT(INT, (SELECT TOP 1 number FROM Numbers WHERE number BETWEEN @min AND @max ORDER BY number OFFSET @offset ROWS FETCH NEXT 1 ROWS ONLY));
    END
    ELSE IF @result < @prob1 + @prob2
    BEGIN
        -- Second range
        RETURN CONVERT(INT, (SELECT TOP 1 number FROM Numbers WHERE number BETWEEN @min AND @max ORDER BY number OFFSET @offset + 1 ROWS FETCH NEXT 1 ROWS ONLY));
    END
    ELSE
    BEGIN
        -- Third range
        RETURN CONVERT(INT, (SELECT TOP 1 number FROM Numbers WHERE number BETWEEN @min AND @max ORDER BY number OFFSET @offset + 2 ROWS FETCH NEXT 1 ROWS ONLY));
    END

    RETURN 0; -- Esto se agrega para cumplir con el requisito de que la última instrucción de la función sea un RETURN.
END

----------------------------------------------------------------------------------------
SELECT * FROM PeriodoPartido
CREATE PROCEDURE AgregarPeriodoPartido
AS
BEGIN
	DECLARE @hora_inicio TIME, @hora_fin TIME, @minutos_retraso INT, 
	@minutos_extras INT, @id_programa_partido INT, @minuto_random INT, @hora_programada TIME

	DECLARE cursor_partido CURSOR FOR
	SELECT id_programa_partido, hora_programada
	FROM ProgramaPartido;
	
	OPEN cursor_partido;

	FETCH NEXT FROM cursor_partido INTO @id_programa_partido, @hora_programada
	WHILE @@FETCH_STATUS = 0	
	BEGIN
		SET @hora_inicio = DATEADD(MINUTE, FLOOR(RAND()*(15-5+1)+5), @hora_programada)
		SET @hora_fin = DATEADD(MINUTE, 45 + (FLOOR(RAND()*(5-1+1)+1)), @hora_inicio)
		SET @minutos_retraso = DATEDIFF(MINUTE, @hora_programada, @hora_inicio)
		SET @minutos_extras = (DATEDIFF(MINUTE, @hora_inicio, @hora_fin) - 45)

		SELECT DATEDIFF(MINUTE, @hora_fin, @hora_inicio)

		INSERT INTO PeriodoPartido(hora_inicio, hora_fin, minutos_retraso, minutos_extras, id_programa_partido
		) VALUES(@hora_inicio, @hora_fin, @minutos_retraso, @minutos_extras, @id_programa_partido)
		--------------------------------------------------------------------------------------------------------
		SET @hora_inicio = DATEADD(MINUTE, FLOOR(RAND()*(15-5+1)+5), DATEADD(MINUTE, 15, @hora_fin))
		SET @hora_fin = DATEADD(MINUTE, 45 + (FLOOR(RAND()*(5-1+1)+1)), @hora_inicio)
		SET @minutos_retraso = DATEDIFF(MINUTE, DATEADD(MINUTE, -15, @hora_inicio), @hora_inicio)
		SET @minutos_extras = (DATEDIFF(MINUTE, @hora_inicio, @hora_fin) - 45)

		INSERT INTO PeriodoPartido(hora_inicio, hora_fin, minutos_retraso, minutos_extras, id_programa_partido
		) VALUES(@hora_inicio, @hora_fin, @minutos_retraso, @minutos_extras, @id_programa_partido)

	FETCH NEXT FROM cursor_partido INTO @id_programa_partido, @hora_programada;
	END
	CLOSE cursor_partido;
	DEALLOCATE cursor_partido;
END
----------------------------------------------------------------------------------------
SELECT * FROM PeriodoPartido

DELETE FROM PeriodoPartido

		
CREATE PROCEDURE ActualizarDuracion
AS
BEGIN
	DECLARE @hora_inicio TIME, @hora_fin TIME, @cantidad_hora INT, @id_programa_partido INT
	
	DECLARE cursor_partido CURSOR FOR
	SELECT id_programa_partido
	FROM ProgramaPartido

	OPEN cursor_partido

	FETCH NEXT FROM cursor_partido INTO @id_programa_partido
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT TOP 1 @hora_inicio = hora_inicio, @hora_fin = hora_fin 
		FROM PeriodoPartido 
		WHERE id_programa_partido = @id_programa_partido ORDER BY id_periodo_partido ASC
		SET @cantidad_hora = DATEDIFF(MINUTE, @hora_inicio, @hora_fin)
		----------------------------------------------------------------------
		SELECT TOP 1 @hora_inicio = hora_inicio, @hora_fin = hora_fin 
		FROM PeriodoPartido 
		WHERE id_programa_partido = @id_programa_partido ORDER BY id_periodo_partido DESC
		SET @cantidad_hora = @cantidad_hora + DATEDIFF(MINUTE, @hora_inicio, @hora_fin)
	
		update ProgramaPartido SET duracion_partido = @cantidad_hora 
		WHERE id_programa_partido = @id_programa_partido
		
	FETCH NEXT FROM cursor_partido INTO @id_programa_partido
	END
	CLOSE cursor_partido
	DEALLOCATE cursor_partido
END


---------------------------------------------------------------------
select * from EquipoJugador


DECLARE @id_jugador INT, @posicion VARCHAR(70), @id_alineacion INT
DECLARE @posiciones TABLE (id INT IDENTITY(1,1), posiciones VARCHAR(70))
INSERT INTO @posiciones(posiciones)
VALUES ('Portero'),('Defensa central'),('Lateral derecho'),('Lateral izquierdo'),('Centrocampista defensivo'),('Centrocampista central'),('Centrocampista derecho'),('Centrocampista izquierdo'),('Delantero centro'),('Delantero derecho'),('Delantero izquierdo')

DECLARE cursor_alineacion CURSOR FOR
SELECT id_alineacion
FROM Alineacion
OPEN cursor_alineacion

FETCH NEXT FROM cursor_alineacion INTO @id_alineacion
WHILE @@FETCH_STATUS = 0
BEGIN
	DECLARE cursor_posicion CURSOR FOR
	SELECT posiciones
	FROM @posiciones
	OPEN cursor_posicion

	FETCH NEXT FROM cursor_posicion INTO @posicion
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT TOP 1 @id_jugador = id_jugador FROM EquipoJugador WHERE id_equipo in
		(SELECT id_equipo FROM Alineacion WHERE id_alineacion = @id_alineacion) 
		and posicion = @posicion ORDER BY NEWID()
		
		INSERT INTO DetalleAlineacion (posicion, id_jugador, id_alineacion)
		VALUES (@posicion, @id_jugador, @id_alineacion)
	FETCH NEXT FROM cursor_posicion INTO @posicion
	END
	CLOSE cursor_posicion
	DEALLOCATE cursor_posicion
FETCH NEXT FROM cursor_alineacion INTO @id_alineacion
END
CLOSE cursor_alineacion
DEALLOCATE cursor_alineacion


---------------------------------------------------------------------

--CREATE PROCEDURE AGREGAR
--AS
--BEGIN
------------------------------------------------------------------------------------------------------- 
DECLARE @cambios INT, @cambio_local INT, @cambio_visitante INT, @id_alineacion_local INT, 
@id_alineacion_visitante INT, @id_jugador_salida INT, @id_jugador_entrada INT, @posicion VARCHAR(70), 
@id_cambio_jugador INT, @id_jugador INT, @duracion_partido INT, @minuto INT, @id_alineacion INT

DECLARE cursor_partido CURSOR FOR
SELECT cambios, id_alineacion_local, id_alineacion_visitante
FROM ProgramaPartido
OPEN cursor_partido

FETCH NEXT FROM cursor_partido INTO @cambios, @id_alineacion_local, @id_alineacion_visitante
WHILE @@FETCH_STATUS = 0
BEGIN
	SET @cambio_local = FLOOR(RAND() * (@cambios + 1))
	SET @cambio_visitante = @cambios - @cambio_local

	INSERT INTO CambioJugador(id_jugador_salida)
	SELECT TOP (@cambio_local) id_detalle_alineacion
	FROM DetalleAlineacion
	WHERE id_alineacion = @id_alineacion_local

	INSERT INTO CambioJugador(id_jugador_salida)
	SELECT TOP (@cambio_visitante) id_detalle_alineacion
	FROM DetalleAlineacion
	WHERE id_alineacion = @id_alineacion_visitante

FETCH NEXT FROM cursor_partido INTO @cambios, @id_alineacion_local, @id_alineacion_visitante
END
CLOSE cursor_partido
DEALLOCATE cursor_partido
-------------------------------------------------------------------------------------------------------
DECLARE cursor_cambio CURSOR FOR
SELECT id_cambio_juagador, id_jugador_salida
FROM CambioJugador

OPEN cursor_cambio

FETCH NEXT FROM cursor_cambio INTO @id_cambio_jugador, @id_jugador_salida
WHILE @@FETCH_STATUS = 0
BEGIN
	SELECT @posicion = posicion, @id_jugador_salida = id_jugador, @id_alineacion = id_alineacion  
	FROM DetalleAlineacion WHERE id_detalle_alineacion = @id_jugador_salida

	SELECT @id_jugador = id_jugador FROM EquipoJugador 
	WHERE id_jugador <> @id_jugador_salida AND posicion = @posicion AND id_equipo
	in(SELECT id_equipo FROM Alineacion WHERE id_alineacion = @id_alineacion)

	INSERT INTO DetalleAlineacion(posicion, id_jugador, id_alineacion)
	VALUES(@posicion, @id_jugador, @id_alineacion)

	SET @id_jugador_entrada = SCOPE_IDENTITY()

	SELECT @duracion_partido = duracion_partido FROM ProgramaPartido 
	WHERE id_alineacion_local = @id_alineacion OR id_alineacion_visitante = @id_alineacion
	
	SET @minuto = CAST(RAND() * @duracion_partido + 1 AS INT)

	UPDATE CambioJugador SET id_jugador_entrada = @id_jugador_entrada, minuto_cambio = @minuto
	WHERE id_cambio_juagador = @id_cambio_jugador

FETCH NEXT FROM cursor_cambio INTO @id_cambio_jugador, @id_jugador_salida
END
CLOSE cursor_cambio
DEALLOCATE cursor_cambio
-------------------------------------------------------------------------------------------------------


SELECT * FROM CambioJugador WHERE id_cambio_juagador > 11880
---------------------------------------------------------------------
SELECT * FROM DetalleAlineacion
WHERE id_detalle_alineacion > 55440
---------------------------------------------------------------------------------------

CREATE PROCEDURE GolesAnotados(@id_torneo INT, @id_equipo INT)
AS
BEGIN
    DECLARE @goles INT = 0;

    SELECT @goles = SUM(marcador_local)
	FROM ProgramaPartido 
	WHERE id_torneo = @id_torneo 
	AND id_alineacion_local
	IN (SELECT id_alineacion FROM Alineacion WHERE id_equipo = @id_equipo) 
	
	SELECT @goles = @goles + SUM(marcador_visitante)
	FROM ProgramaPartido 
	WHERE id_torneo = @id_torneo
	AND id_alineacion_visitante 
	IN (SELECT id_alineacion FROM Alineacion WHERE id_equipo = @id_equipo) 

    RETURN @goles;
END;

CREATE PROCEDURE GolesEncontra(@id_torneo INT, @id_equipo INT)
AS
BEGIN
    DECLARE @goles INT = 0;

    SELECT @goles = SUM(marcador_visitante)
	FROM ProgramaPartido 
	WHERE id_torneo = @id_torneo 
	AND id_alineacion_local
	IN (SELECT id_alineacion FROM Alineacion WHERE id_equipo = @id_equipo) 
	
	SELECT @goles = @goles + SUM(marcador_local)
	FROM ProgramaPartido 
	WHERE id_torneo = @id_torneo
	AND id_alineacion_visitante 
	IN (SELECT id_alineacion FROM Alineacion WHERE id_equipo = @id_equipo) 

    RETURN @goles;
END;


CREATE PROCEDURE PartidosGanados(@id_torneo INT, @id_equipo INT)
AS
BEGIN
	DECLARE @partidos INT = 0
	SELECT @partidos = COUNT(*)
	FROM ProgramaPartido 
	WHERE identificador_marcador = 0 AND id_torneo = @id_torneo
	AND id_alineacion_local
	IN (SELECT id_alineacion FROM Alineacion WHERE id_equipo = @id_equipo) 
	
	SELECT @partidos = @partidos + COUNT(*)
	FROM ProgramaPartido 
	WHERE identificador_marcador = 1 AND id_torneo = @id_torneo
	AND id_alineacion_visitante
	IN (SELECT id_alineacion FROM Alineacion WHERE id_equipo = @id_equipo) 

	RETURN @partidos;
END
	
CREATE PROCEDURE PartidosEmpatados(@id_torneo INT, @id_equipo INT)
AS 
BEGIN
	DECLARE @partidos INT = 0

	SELECT @partidos = COUNT(*)
	FROM ProgramaPartido
	WHERE identificador_marcador = 2 AND id_torneo = @id_torneo
	AND (id_alineacion_local
	IN (SELECT id_alineacion FROM Alineacion WHERE id_equipo = @id_equipo)
	OR id_alineacion_visitante
	IN (SELECT id_alineacion FROM Alineacion WHERE id_equipo = @id_equipo) ) 
	RETURN @partidos;
END
	

-------------------------------------------------------------------
DECLARE @cantidad_puntos INT, @partidos_ganados INT, @partidos_empatados INT, @goles_anotados INT,
@goles_encontra INT, @diferencia_goles INT, @id_equipo INT, @id_torneo INT, @id_posicion INT

DECLARE cursor_planilla CURSOR FOR
SELECT id_torneo, id_equipo
FROM PlanillaEquipo

OPEN cursor_planilla;
FETCH NEXT FROM cursor_planilla INTO @id_torneo, @id_equipo;
WHILE @@FETCH_STATUS = 0
BEGIN
	EXEC @partidos_ganados = PartidosGanados @id_torneo, @id_equipo
	EXEC @partidos_empatados = PartidosEmpatados @id_torneo, @id_equipo
	EXEC @goles_anotados = GolesAnotados @id_torneo, @id_equipo
	EXEC @goles_encontra = GolesAnotados @id_torneo, @id_equipo
	SET @diferencia_goles = @goles_anotados - @goles_encontra
	SET @cantidad_puntos = (@partidos_ganados * 3) + (@partidos_empatados)	

	INSERT INTO Posicion(cantidad_puntos, partidos_ganados, partidos_empatados, goles_anotados, goles_encontra, diferencia_goles)
	VALUES (@cantidad_puntos, @partidos_ganados, @partidos_empatados, @goles_anotados, @goles_encontra, @diferencia_goles)
		
	SELECT @id_posicion = SCOPE_IDENTITY();
	INSERT INTO PosicionEquipoTorneo (id_equipo, id_posicion, id_torneo)
	VALUES (@id_equipo, @id_posicion, @id_torneo)

FETCH NEXT FROM cursor_planilla INTO @id_torneo, @id_equipo;
END
CLOSE cursor_planilla
DEALLOCATE cursor_planilla



DELETE FROM Posicion
DELETE FROM PosicionEquipoTorneo
-------------------------------------------------------------------

	
---------------------------------------------------------------------------------------
CREATE PROCEDURE AgregarNacionalidadTecnico
AS
BEGIN
	DECLARE @fecha_adquisicion DATE, @id_tecnico INT, @id_nacionalidad INT, @numero_nacionalidad INT,
	@contador INT = 1, @flag INT = 0, @dias INT

	DECLARE cursor_tecnico CURSOR FOR
	SELECT id_tecnico
	FROM Tecnico
	OPEN cursor_tecnico 
	FETCH NEXT FROM cursor_tecnico INTO @id_tecnico
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @numero_nacionalidad = FLOOR(RAND() * 3 + 1)
		WHILE @numero_nacionalidad >= @contador
		BEGIN
			SELECT TOP 1 @id_nacionalidad = id_nacionalidad FROM Nacionalidad ORDER BY NEWID()
			SELECT @flag = COUNT(*) FROM NacionalidadTecnico 
			WHERE id_tecnico = @id_tecnico AND id_nacionalidad = @id_nacionalidad
			IF @flag = 0
			BEGIN		
				SET @dias = RAND() * (10000 + 1)
				SET @fecha_adquisicion = DATEADD(DAY, -(@dias), CONVERT(DATE, '2005-12-31', 23));
				INSERT INTO NacionalidadTecnico(fecha_adquisicion, id_tecnico, id_nacionalidad)
				VALUES(@fecha_adquisicion, @id_tecnico, @id_nacionalidad)
				SET @contador = @contador + 1
			END
		END
	FETCH NEXT FROM cursor_tecnico INTO @id_tecnico
	END
	CLOSE cursor_tecnico
	DEALLOCATE cursor_tecnico
END


SELECT * FROM NacionalidadJugador

---------------------------------------------------------------------------------------
CREATE PROCEDURE ActualizarPosiciones
AS
BEGIN
	DECLARE @id_posicion INT, @posicion_torneo VARCHAR(50), @contador INT, @id_torneo INT

	DECLARE cursor_toreno CURSOR FOR 
	SELECT id_torneo
	FROM PosicionEquipoTorneo
	OPEN cursor_torneo

	FETCH NEXT FROM cursor_torneo INTO @id_torneo
	WHILE @@FETCH_STATUS = 0
	BEGIN
		DECLARE cursor_posicion CURSOR FOR
		SELECT id_posicion FROM Posicion WHERE id_posicion 
		IN(SELECT id_posicion FROM PosicionEquipoTorneo WHERE id_torneo = @id_torneo)
		ORDER BY cantidad_puntos DESC, diferencia_goles DESC, goles_anotados DESC
		OPEN cursor_posicion

		SET @contador = 0
		FETCH NEXT FROM cursor_posicion INTO @id_posicion
		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @contador = @contador + 1
			SET @posicion_torneo = CAST(@contador AS VARCHAR(5)) + '° Puesto'
			UPDATE Posicion SET posicion_torneo = @posicion_torneo 
			WHERE id_posicion = @id_posicion
		FETCH NEXT FROM cursor_posicion INTO @id_posicion
		END
		CLOSE cursor_posicion
		DEALLOCATE cursor_posicion
	FETCH NEXT FROM cursor_torneo INTO @id_torneo
	END
	CLOSE cursor_torneo
	DEALLOCATE cursor_torneo
END


UPDATE EstadisticaClub SET partidos_jugados = 0, partidos_ganados = 0, goles_marcados = 0, 
goles_encontra = 0, diferencia_goles = 0, tarjetas_rojas = 0, tarjetas_amarillas = 0


DECLARE @id_equipo INT, @id_posicion INT, @id_club_futbol INT, @diferencia_goles INT,
@goles_encontra INT, @goles_anotados INT, @partidos_ganados INT, @partidos_jugados INT,
@tarjetas_rojas INT, @tarjetas_amarillas INT

DECLARE cursor_posicion CURSOR FOR
SELECT id_equipo, id_posicion
FROM PosicionEquipoTorneo

OPEN cursor_posicion

FETCH NEXT FROM cursor_posicion INTO @id_equipo, @id_posicion
WHILE @@FETCH_STATUS = 0
BEGIN
	SELECT @partidos_jugados = COUNT(*) FROM Alineacion WHERE id_equipo = @id_equipo
	SELECT @partidos_ganados = partidos_ganados FROM Posicion WHERE id_posicion = @id_posicion
	SELECT @goles_anotados = goles_anotados FROM Posicion WHERE id_posicion = @id_posicion
	SELECT @goles_encontra = goles_encontra FROM Posicion WHERE id_posicion = @id_posicion
	SELECT @diferencia_goles = diferencia_goles FROM Posicion WHERE id_posicion = @id_posicion
	
	SELECT @tarjetas_rojas = count(*) FROM Falta WHERE id_tarjeta = 1 AND id_detalle_alineacion 
	IN (SELECT id_detalle_alineacion FROM DetalleAlineacion WHERE id_alineacion 
	IN (SELECT id_alineacion FROM Alineacion WHERE id_equipo = @id_equipo))

	SELECT @tarjetas_amarillas = count(*) FROM Falta WHERE id_tarjeta = 2 AND id_detalle_alineacion 
	IN (SELECT id_detalle_alineacion FROM DetalleAlineacion WHERE id_alineacion 
	IN (SELECT id_alineacion FROM Alineacion WHERE id_equipo = @id_equipo))
	
	SELECT @id_club_futbol = id_club_futbol FROM Equipo WHERE id_equipo = @id_equipo

	UPDATE EstadisticaClub SET partidos_jugados = @partidos_jugados,
	partidos_ganados = (partidos_ganados + @partidos_ganados), 
	goles_marcados = (goles_marcados + @goles_anotados),
	goles_encontra = (goles_encontra + @goles_encontra), 
	diferencia_goles = (diferencia_goles + @diferencia_goles),
	tarjetas_rojas = @tarjetas_rojas,
	tarjetas_amarillas = @tarjetas_amarillas
	WHERE id_club_futbol = @id_club_futbol

FETCH NEXT FROM cursor_posicion INTO @id_equipo, @id_posicion
END
CLOSE cursor_posicion
DEALLOCATE cursor_posicion

/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT *
  FROM [TorneoFutbol].[dbo].[Alineacion]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[AlineacionTecnico]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Arbitro]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[CambioEstado]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[CambioJugador]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[CiudadEstadio]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[ClubFutbol]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Designacion]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[DetalleAlineacion]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Dirigente]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Equipo]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[EstadisticaClub]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[EstadoJugador]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[EstadoPartido]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Evento]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Falta]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Goleo]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Jugador]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Nacionalidad]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[NacionalidadJugador]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[NacionalidadTecnico]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[PeriodoPartido]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[PlanillaEquipo]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Posicion]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[PosicionEquipoTorneo]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[ProgramaPartido]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Rol]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Tarjeta]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Tecnico]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[TipoFalta]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[TipoTecnico]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[TipoUsuario]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Torneo]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[UbicacionEstadio]
GO
SELECT *
  FROM [TorneoFutbol].[dbo].[Usuario]
GO

-------------------------------------DIMENSIONES-------------------------------------------
------------------------------------------------------------------------------------------
SELECT CAST(ROW_NUMBER() OVER (ORDER BY COLUMN_NAME) AS INT) 
AS id_equipo_local_visitante, CAST(COLUMN_NAME AS VARCHAR(50)) AS local_visitante   
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'ProgramaPartido' AND
      COLUMN_NAME IN ('id_alineacion_local', 'id_alineacion_visitante');

DECLARE @TablaTemporal TABLE (Equipo_Local BIT, Equipo_Visitante BIT)
INSERT INTO @TablaTemporal(Equipo_Local, Equipo_Visitante)
VALUES(1,1)

DECLARE @TablaTemporal 
TABLE (id_equipo_local_visitante INT PRIMARY KEY IDENTITY(1,1), local_visitante VARCHAR(20))
INSERT INTO @TablaTemporal(local_visitante)
VALUES('Local'),('Visitante')
SELECT id_equipo_local_visitante, local_visitante FROM @TablaTemporal

SELECT CAST(ROW_NUMBER() OVER (ORDER BY COLUMN_NAME) AS INT) 
AS id_equipo_local_visitante, CAST(COLUMN_NAME AS VARCHAR(20)) AS local_visitante
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = '@TablaTemporal' AND
      COLUMN_NAME IN ('Equipo_Local', 'Equipo_Visitante');


------------------------------------------------------------------------------------------
---------------------------------------HECHOS---------------------------------------------
------------------------------------------------------------------------------------------
SELECT id_torneo, id_ubicacion_estadio as id_estadio, a.id_equipo as id_equipo, fecha_programada as id_tiempo,
1 as id_equipo_local_visitante ,marcador_local as goles_marcados, 
marcador_visitante as goles_encontra,
	CASE
		WHEN marcador_local > marcador_visitante THEN 3
		WHEN marcador_visitante > marcador_local THEN 0
		ELSE 1
		END AS puntos,
	CASE
		WHEN marcador_local > marcador_visitante THEN 1
		WHEN marcador_visitante > marcador_local THEN 0
		ELSE 0
		END AS partido_ganados,
	CASE
		WHEN marcador_local > marcador_visitante THEN 0
		WHEN marcador_visitante > marcador_local THEN 1
		ELSE 0
		END AS partido_perdidos,
	CASE
		WHEN marcador_local = marcador_visitante THEN 1
		ELSE 0
		END AS partido_empatados,
	(marcador_local - marcador_visitante) AS diferencia_goles
FROM ProgramaPartido, Alineacion as a
WHERE id_alineacion_local = a.id_alineacion
UNION ALL
SELECT id_torneo, id_ubicacion_estadio as id_estadio, a.id_equipo as id_equipo, fecha_programada as id_tiempo,
2 as id_local_visitante, marcador_visitante as goles_marcados, 
marcador_local as goles_encontra,
	CASE
		WHEN marcador_local < marcador_visitante THEN 3
		WHEN marcador_visitante < marcador_local THEN 0
		ELSE 1
		END AS puntos,
	CASE
		WHEN marcador_local < marcador_visitante THEN 1
		WHEN marcador_visitante < marcador_local THEN 0
		ELSE 0
		END AS partido_ganados,
	CASE
		WHEN marcador_local < marcador_visitante THEN 0
		WHEN marcador_visitante < marcador_local THEN 1
		ELSE 0
		END AS partido_perdidos,
	CASE
		WHEN marcador_local = marcador_visitante THEN 1
		ELSE 0
		END AS partido_empatados,
	(marcador_visitante - marcador_local) AS diferencia_goles
FROM ProgramaPartido, Alineacion as a
WHERE id_alineacion_visitante = a.id_alineacion
------------------------------------------------------------------------------------------
SELECT * FROM NacionalidadJugador WHERE id_jugador in
(SELECT id_jugador FROM Jugador)

SELECT     Jugador.id_jugador , CONCAT(Jugador.nombre, ' ',Jugador.apellido_paterno, ' ',Jugador.apellido_materno) AS nombre_jugador, Nacionalidad.pais AS nacionalidad
FROM            Jugador CROSS JOIN
                         Nacionalidad


SELECT * FROM Nacionalidad WHERE id_nacionalidad in 
(SELECT * FROM NacionalidadJugador WHERE id_jugador = 410)
select * from ProgramaPartido

SELECT     Jugador.id_jugador , CONCAT(Jugador.nombre, Jugador.apellido_paterno, Jugador.apellido_materno) AS nombre_jugador, Nacionalidad.pais AS nacionalidad
FROM            Jugador CROSS JOIN
                         Nacionalidad

SELECT * FROM Jugador WHERE id_jugador in
(SELECT id_jugador FROM NacionalidadJugador)

SELECT COUNT(*) FROM NacionalidadJugador WHERE id_jugador = 
DELETE FROM NacionalidadJugador

SELECT * FROM Jugador WHERE id_jugador in
(SELECT id_jugador FROM NacionalidadJugador)

SELECT id_nacionalidad_jugador, Jugador.nombre FROM NacionalidadJugador WHERE id_jugador IN
(SELECT id_jugador FROM Jugador)

SELECT j.id_jugador, 
CAST( CONCAT(j.nombre, ' ',j.apellido_paterno, ' ',j.apellido_materno) AS VARCHAR(160)) AS nombre_jugador, 
n.pais AS nacionalidad, n.id_nacionalidad
from Jugador as j, NacionalidadJugador as nj, Nacionalidad as n
where j.id_jugador = nj.id_jugador and nj.id_nacionalidad = n.id_nacionalidad



SELECT     Jugador.id_jugador ,CAST( CONCAT(Jugador.nombre, ' ',Jugador.apellido_paterno, ' ',Jugador.apellido_materno) AS VARCHAR(160)) AS nombre_jugador, Nacionalidad.pais AS nacionalidad
FROM            Jugador CROSS JOIN
                         Nacionalidad




SELECT        Jugador.id_jugador, CAST( CONCAT(Jugador.nombre, ' ',Jugador.apellido_paterno, ' ',Jugador.apellido_materno) AS VARCHAR(160)) AS nombre_jugador, Nacionalidad.id_nacionalidad
FROM            Jugador INNER JOIN
                         NacionalidadJugador ON Jugador.id_jugador = NacionalidadJugador.id_jugador INNER JOIN
                         Nacionalidad ON NacionalidadJugador.id_nacionalidad = Nacionalidad.id_nacionalidad


SELECT j.id_jugador, a.id_equipo, p.id_torneo, p.id_ubicacion_estadio as id_estadio, a.fecha AS id_tiempo,
e.tiempo_jugado AS minutos_jugados, 
e.kilometros_recorridos, e.cantidad_pases AS pases, e.intercepciones, e.takles_ganados,
COUNT(g.id_goleo) AS goles_anotados
FROM Jugador AS j, Evento AS e, Alineacion AS a, ProgramaPartido p,
DetalleAlineacion da--, Goleo g 
LEFT JOIN Goleo AS g ON da.id_detalle_alineacion = g.id_detalle_alineacion
WHERE j.id_jugador = da.id_jugador AND da.id_detalle_alineacion = e.id_detalle_alineacion 
AND a.id_alineacion = da.id_alineacion 
AND (p.id_alineacion_local = a.id_alineacion OR p.id_alineacion_visitante = a.id_alineacion) 
GROUP BY j.id_jugador, a.id_equipo, p.id_torneo, p.id_ubicacion_estadio, a.fecha,
e.tiempo_jugado, e.kilometros_recorridos, e.cantidad_pases, e.intercepciones, e.takles_ganados

-- 9674

SELECT da.id_detalle_alineacion, da.posicion, da.id_jugador, da.id_alineacion,count(id_goleo) as cantidad_goles
FROM Goleo AS g, DetalleAlineacion AS da
WHERE g.id_detalle_alineacion = da.id_detalle_alineacion
GROUP BY da.id_detalle_alineacion, da.posicion, da.id_jugador, da.id_alineacion


SELECT da.id_detalle_alineacion, da.posicion, da.id_jugador, count(id_goleo) as goles
FROM DetalleAlineacion as da
LEFT JOIN Goleo ON da.id_detalle_alineacion = Goleo.id_detalle_alineacion
GROUP BY da.id_detalle_alineacion, da.posicion, da.id_jugador



SELECT *
FROM TablaA
LEFT JOIN TablaB ON TablaA.columnaEspecifica = TablaB.columnaEspecifica;

SELECT j.id_jugador, 0 AS minutos_jugados,0 AS kilometros_recorridos, 0 AS pases, 0 AS intercepciones,
0 AS takles_ganados,1 AS goles_anotados
FROM Jugador AS j, DetalleAlineacion da, Evento e, Goleo g
WHERE j.id_jugador = da.id_jugador AND da.id_detalle_alineacion = g.id_detalle_alineacion


SELECT        Torneo.id_torneo, Equipo.id_equipo, DetalleAlineacion.id_detalle_alineacion
FROM            Alineacion INNER JOIN
                         DetalleAlineacion ON Alineacion.id_alineacion = DetalleAlineacion.id_alineacion INNER JOIN
                         Equipo ON Alineacion.id_equipo = Equipo.id_equipo INNER JOIN
                         Evento ON DetalleAlineacion.id_detalle_alineacion = Evento.id_detalle_alineacion INNER JOIN
                         Jugador ON DetalleAlineacion.id_jugador = Jugador.id_jugador INNER JOIN
                         PlanillaEquipo ON Equipo.id_equipo = PlanillaEquipo.id_equipo INNER JOIN
                         Torneo ON PlanillaEquipo.id_torneo = Torneo.id_torneo


SELECT        Torneo.id_torneo, Equipo.id_equipo, DetalleAlineacion.id_detalle_alineacion
FROM            Alineacion INNER JOIN
                         DetalleAlineacion ON Alineacion.id_alineacion = DetalleAlineacion.id_alineacion INNER JOIN
                         Equipo ON Alineacion.id_equipo = Equipo.id_equipo INNER JOIN
                         Evento ON DetalleAlineacion.id_detalle_alineacion = Evento.id_detalle_alineacion INNER JOIN
                         Jugador ON DetalleAlineacion.id_jugador = Jugador.id_jugador INNER JOIN
                         PlanillaEquipo ON Equipo.id_equipo = PlanillaEquipo.id_equipo INNER JOIN
                         Torneo ON PlanillaEquipo.id_torneo = Torneo.id_torneo INNER JOIN
                         Goleo ON DetalleAlineacion.id_detalle_alineacion = Goleo.id_detalle_alineacion




SELECT        Jugador.id_jugador, DetalleAlineacion.id_detalle_alineacion, Goleo.id_goleo, Evento.id_evento
FROM            DetalleAlineacion INNER JOIN
                         Evento ON DetalleAlineacion.id_detalle_alineacion = Evento.id_detalle_alineacion INNER JOIN
                         Goleo ON DetalleAlineacion.id_detalle_alineacion = Goleo.id_detalle_alineacion INNER JOIN
                         Jugador ON DetalleAlineacion.id_jugador = Jugador.id_jugador



SELECT        Jugador.id_jugador, CAST( CONCAT(Jugador.nombre, ' ',Jugador.apellido_paterno, ' ',Jugador.apellido_materno) AS VARCHAR(160)) AS nombre_jugador
FROM            Jugador


select * from Evento
CREATE DATABASE TorneoFutbol;

USE master;
DROP DATABASE TorneoFutbol;

USE TorneoFutbol;

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

CREATE TABLE Equipo (
    id_equipo INT PRIMARY KEY IDENTITY(1,1),
    nombre_equipo VARCHAR(50),		
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
select * from Tecnico
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
----------------------------------------------------------------
CREATE TABLE Dirigente (
	id_dirigente INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50),
	apellido_paterno VARCHAR(50),
	apellido_materno VARCHAR(50)
)

CREATE TABLE Torneo (
	id_torneo INT PRIMARY KEY IDENTITY(1,1),
	nombre_torneo VARCHAR(50),
	fecha_inicio DATE,
	fecha_finalizacion DATE
)

CREATE TABLE EstadoJugador (
	id_estado_jugador INT PRIMARY KEY IDENTITY(1,1),
	tipo INT
)

CREATE TABLE TipoUsuario (
	id_tipo_usuario INT PRIMARY KEY IDENTITY(1,1),
	descripcion VARCHAR(100)
)

CREATE TABLE Posicion (
	id_posicion INT PRIMARY KEY IDENTITY(1,1),
	posicion_torneo VARCHAR(50),
	partidos_jugados VARCHAR(50),
	cantidad_puntos INT,
	goles_anotados INT,
	goles_encontra INT,
	diferencia_Goles INT
)

CREATE TABLE EstadoPartido (
	id_estado_partido INT PRIMARY KEY IDENTITY(1,1),
	descripcion VARCHAR(100)
)

CREATE TABLE Rol (
	id_rol INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50)
)

CREATE TABLE Arbitro (
	id_arbitro INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50),
	email VARCHAR(40),
	direccion VARCHAR(70)
)




-------------------------Ericka----------------------------
----------------------------------------------------------------
create table Nacionalidad(
id_nacionalidad int primary key identity(1,1),
pais varchar(50)
);

create table CambioEstado(
id_cambio_estado int primary key identity(1,1),
fecha date,
id_estado_jugador int,
id_jugador int, 
foreign key (id_estado_jugador) references EstadoJugador(id_estado_jugador),
foreign key (id_jugador) references Jugador(id_jugador)
);

create table ClubFutbol(
id_club_futbol int primary key identity(1,1),
nombre varchar(50),
logo varchar(200),
descripcion varchar(300),
fecha_creacion date
);


create table EstadisticaClub(
id_estadistica_club int primary key identity(1,1),
partidos_jugados int,
tarjetas_rojas int,
tarjetas_amarillas int,
goles_marcados int,
id_club_futbol int, 
foreign key (id_club_futbol) references ClubFutbol(id_club_futbol)
);


create table Usuario(
id_usuario int primary key identity(1,1),
nombre varchar(50),
contraseña varchar(50),
id_tipo_usuario int,
foreign key (id_tipo_usuario) references TipoUsuario(id_tipo_usuario)
);


create table Inscripcion(
id_inscripcion int primary key identity(1,1),
monto int,
fecha_inscripcion date,
id_usuario int,
foreign key (id_usuario) references Usuario(id_usuario)
);

create table TorneoEquipoJugador(
id_torneo_equipo_jugador int primary key identity(1,1),
id_jugador int,
id_torneo int,
id_equipo int,
foreign key (id_jugador) references Jugador(id_jugador),
foreign key (id_torneo) references Torneo(id_torneo),
foreign key (id_equipo) references Equipo(id_equipo)
);

create table PosicionEquipoTorneo(
id_posicion_equipo_torneo int primary key identity(1,1),
id_equipo int,
id_posicion int,
id_torneo int,
foreign key (id_equipo) references Equipo(id_equipo),
foreign key (id_posicion) references Posicion(id_posicion),
foreign key (id_torneo) references Torneo(id_torneo)
);
select * from Alineacion
create table Alineacion(
id_alineacion int primary key identity(1,1),
id_dirigente int,
id_equipo int,
foreign key (id_dirigente) references Dirigente(id_dirigente),
foreign key (id_equipo) references Equipo(id_equipo)
);

ALTER TABLE Alineacion
DROP constraint id_tecnico;

create table ProgramaPartido(
id_programa_partido int primary key identity(1,1),
fecha_hora_programada date,
hora_programada time,
marcador_local int,
marcador_visitante int,
id_ganador int,
id_perdedor int,
id_torneo int,
id_alineacion_local int,
id_alineacion_visitante int,
id_estado_partido int,
id_ubicacion_estadio int,
foreign key (id_ganador) references Equipo(id_equipo),
foreign key (id_perdedor) references Equipo(id_equipo),
foreign key (id_torneo) references Torneo(id_torneo),
foreign key (id_alineacion_local) references Alineacion(id_alineacion),
foreign key (id_alineacion_visitante) references Alineacion(id_alineacion),
foreign key (id_estado_partido) references EstadoPartido(id_estado_partido),
foreign key (id_ubicacion_estadio) references UbicacionEstadio(id_ubicacion_estadio)
);

----------------------------------------------------------------
CREATE TABLE Designacion (
	id_entrenador INT PRIMARY KEY IDENTITY(1,1),	
	fecha DATE,
	id_arbitro INT,
	id_rol INT,
	id_programa_partido INT,
    FOREIGN KEY (id_rol) REFERENCES Rol(id_rol),
    FOREIGN KEY (id_programa_partido) REFERENCES ProgramaPartido(id_programa_partido),
	FOREIGN KEY (id_arbitro) REFERENCES Arbitro(id_arbitro)
)

CREATE TABLE Tarjeta (
	id_tarjeta INT PRIMARY KEY IDENTITY(1,1),
	color_tarjeta INT,
	id_estadistica_club INT,
	id_torneo_equipo_jugador INT,
	FOREIGN KEY (id_estadistica_club) REFERENCES EstadisticaClub(id_estadistica_club),
	FOREIGN KEY (id_torneo_equipo_jugador) REFERENCES TorneoEquipoJugador(id_torneo_equipo_jugador)
)

CREATE TABLE Sancion (
	id_sancion INT PRIMARY KEY IDENTITY(1,1),
	minuto INT,
	fecha_sancion DATE,
	id_programa_partido INT,
	id_jugador INT,
	id_tarjeta INT,
	FOREIGN KEY (id_programa_partido) REFERENCES ProgramaPartido(id_programa_partido),
	FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador),
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

CREATE TABLE AlineacionJugador(
	id_alineacion_jugador INT PRIMARY KEY IDENTITY(1,1),
	minuto_entrada INT,
	minuto_salida INT,
	fecha DATE,
	id_jugador INT,
	id_alineacion INT,
	FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador),
	FOREIGN KEY (id_alineacion) REFERENCES Alineacion(id_alineacion)
)

CREATE TABLE Goleo(
	id_goleo INT PRIMARY KEY IDENTITY(1,1),
	minuto INT,
	id_alineacion_jugador INT,
	id_programa_partido INT,
	FOREIGN KEY (id_alineacion_jugador) REFERENCES AlineacionJugador(id_alineacion_jugador),
	FOREIGN KEY (id_programa_partido) REFERENCES ProgramaPartido(id_programa_partido)
)

CREATE TABLE DetalleJugador(
	id_detalle_jugador INT PRIMARY KEY IDENTITY(1,1),
	tiempo_jugado INT,
	cantidad_pases INT,
	goles_anotados INT,
	id_jugador INT,
	id_programa_partido INT,
	FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador),
	FOREIGN KEY (id_programa_partido) REFERENCES ProgramaPartido(id_programa_partido)
)


--------------------------------------------------------------------------------------------

ALTER TABLE Tecnico
add id_tipo_tecnico int
FOREIGN KEY (id_tipo_tecnico) REFERENCES TipoTecnico(id_tipo_tecnico);

-------------------------POBLAR---------------------------

INSERT INTO Jugador (nombre, apellido_paterno, apellido_materno)
SELECT nombre, apellido_paterno, apellido_materno FROM Nombres$

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

select * from CiudadEstadio

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


alter table TipoTecnico
alter column tipo VARCHAR(30)




INSERT INTO TipoTecnico (tipo)
VALUES
	('Entrenador Principal'),
	('Asistente Técnico'),
	('Entrenador de Porteros'),
	('Preparador Físico'),
	('Analista Táctico'),
	('Scout')

select * from TipoTecnico

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


INSERT INTO Equipo (nombre_equipo)
SELECT nombre_equipo FROM Equipos$

DELETE FROM Equipos$
WHERE nombre_equipo IS NULL;

INSERT INTO Tecnico (nombre, apellido_paterno, apellido_materno)
SELECT nombre, apellido_paterno, apellido_materno FROM Tecnicos$

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


ALTER TABLE Equipo DROP column comentario;

DELETE FROM Equipo
WHERE nombre_equipo IS NULL;


alter table Posicion
alter column posicion_torneo VARCHAR(50)

alter table Posicion
alter column partidos_jugados VARCHAR(50)

ALTER PROCEDURE GenerarTorneos (@FechaInicio DATETIME)
AS
BEGIN
    DECLARE @Fecha DATETIME
    SET @Fecha = @FechaInicio
    
    DECLARE @Contador INT
    SET @Contador = 0
    
    WHILE @Contador < 20
    BEGIN
        DECLARE @Anio INT
        SET @Anio = DATEPART(YEAR, @Fecha)
        
        DECLARE @MesInicio INT
        DECLARE @MesFin INT
		DECLARE @MesI DATE
		DECLARE @MesF DATE
		DECLARE @NumeroInicio INT
		DECLARE @NumeroFinal INT

        
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

        DECLARE @NombreTorneo NVARCHAR(50)
        SET @NombreTorneo = 'Torneo ' + CONVERT(NVARCHAR(2), @Contador + 1)
		
		SET @numeroInicio = ROUND(RAND() * 29 + 1, 0)
		SET @numeroFinal = ROUND(RAND() * 29 + 1, 0)
    
		set @MesI =  CAST(DATEFROMPARTS(@Anio, @MesInicio, @numeroInicio) AS DATE)
		set @MesF = CAST(DATEFROMPARTS(@Anio, @MesFin, @numeroFinal) AS DATE)
    		
		INSERT INTO Torneo (nombre_torneo, fecha_inicio, fecha_finalizacion)
        
		VALUES (@NombreTorneo, @MesI, @MesF)

        IF @MesInicio = 7
		BEGIN
			SET @Fecha = DATEADD(YEAR, 1, @Fecha)
		END
        SET @Contador = @Contador + 1
    END
END



EXEC GenerarTorneos '2013-01-01'



CREATE PROCEDURE generar_alineaciones_por_equipo 
AS
BEGIN
    DECLARE @id_equipo INT, @num_alineaciones INT, @i INT
    
    -- Obtener el ID y nombre de cada equipo de la tabla "equipos"
    DECLARE equipos_cursor CURSOR FOR 
        SELECT id_equipo FROM Equipo
        
    OPEN equipos_cursor  
    FETCH NEXT FROM equipos_cursor INTO @id_equipo
    
    -- Recorrer cada equipo y generar de 11 a 27 alineaciones aleatorias
    WHILE @@FETCH_STATUS = 0  
    BEGIN  
        SET @num_alineaciones = ROUND(RAND() * 16, 0) + 11 -- Generar un número aleatorio entre 11 y 27
        SET @i = 1
        
        WHILE (@i <= @num_alineaciones)
        BEGIN
            -- Generar una alineación aleatoria para el equipo actual
            INSERT INTO Alineacion (id_equipo)           
			VALUES (@id_equipo)

            SET @i = @i + 1
        END
        
        FETCH NEXT FROM equipos_cursor INTO @id_equipo
    END  
    
    CLOSE equipos_cursor  
    DEALLOCATE equipos_cursor  
END


EXEC generar_alineaciones_por_equipo	


CREATE PROCEDURE generar_partidos_todos_contra_todos
AS
BEGIN
    DECLARE @num_equipos INT = 12
    DECLARE @num_jornadas INT = @num_equipos - 1
    DECLARE @partidos_por_jornada INT = @num_equipos / 2
    DECLARE @fecha_inicio DATE = '2023-05-01'
    DECLARE @hora_inicio TIME = '08:00:00'
    DECLARE @dias_entre_jornadas INT = 7

    DECLARE @tabla_partidos TABLE (
        id_partido INT IDENTITY(1,1),
        id_equipo_local INT,
        id_equipo_visitante INT,
        fecha_partido DATETIME
    )

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
                SET @id_equipo_visitante = @id_equipo_visitante - @num_equipos + 1
            END

            INSERT INTO @tabla_partidos (id_equipo_local, id_equipo_visitante, fecha_partido)
            VALUES (@id_equipo_local, @id_equipo_visitante, DATEADD(HOUR, @id_equipo_local, DATEADD(DAY, (@jornada-1)*7, CAST(CONVERT(VARCHAR(10), @fecha_jornada, 120) + ' ' + CONVERT(VARCHAR(10), @hora_inicio, 108) AS DATETIME))))

            SET @id_equipo_local = @id_equipo_local + 1
        END

        SET @jornada = @jornada + 1
    END

    -- Mostrar los partidos generados
    SELECT * FROM @tabla_partidos ORDER BY fecha_partido
END

EXEC generar_partidos_todos_contra_todos


------------------------------------------------------------------------------------------------



select * from Alineacion

select * from Equipo

select * from Tecnico

select * from UbicacionEstadio 

select * from Jugador

select * from Dirigente

select * from Torneo

select * from EstadoJugador

select * from PosicionJuego

select * from TipoUsuario

select * from Posicion

select * from Ciudad

select * from EstadoPartido

select * from Rol

select * from Arbitro

select * from TipoTecnico


CREATE DATABASE [TorneoFutbol];
GO
USE [TorneoFutbol]
GO
/****** Object:  Table [dbo].[Alineacion]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alineacion](
	[id_alineacion] [int] IDENTITY(1,1) NOT NULL,
	[titular] [varchar](50) NULL,
	[suplente] [varchar](50) NULL,
	[posicion] [varchar](50) NULL,
	[id_tecnico] [int] NULL,
	[id_dirigente] [int] NULL,
	[id_equipo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_alineacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlineacionJugador]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlineacionJugador](
	[id_alineacion_jugador] [int] IDENTITY(1,1) NOT NULL,
	[minuto_entrada] [int] NULL,
	[minuto_salida] [int] NULL,
	[fecha] [date] NULL,
	[id_jugador] [int] NULL,
	[id_alineacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_alineacion_jugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Arbitro]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arbitro](
	[id_arbitro] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[email] [varchar](40) NULL,
	[direccion] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_arbitro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CambioEstado]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CambioEstado](
	[id_cambio_estado] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[id_estado_jugador] [int] NULL,
	[id_jugador] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cambio_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CiudadEstadio]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiudadEstadio](
	[id_ciudad_estadio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ciudad_estadio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClubFutbol]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClubFutbol](
	[id_club_futbol] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[logo] [varchar](200) NULL,
	[descripcion] [varchar](300) NULL,
	[fecha_creacion] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_club_futbol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designacion]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designacion](
	[id_entrenador] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[id_arbitro] [int] NULL,
	[id_rol] [int] NULL,
	[id_programa_partido] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_entrenador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleJugador]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleJugador](
	[id_detalle_jugador] [int] IDENTITY(1,1) NOT NULL,
	[tiempo_jugado] [int] NULL,
	[cantidad_pases] [int] NULL,
	[goles_anotados] [int] NULL,
	[id_jugador] [int] NULL,
	[id_programa_partido] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detalle_jugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dirigente]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dirigente](
	[id_dirigente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dirigente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipo](
	[id_equipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre_equipo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadisticaClub]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadisticaClub](
	[id_estadistica_club] [int] IDENTITY(1,1) NOT NULL,
	[partidos_jugados] [int] NULL,
	[tarjetas_rojas] [int] NULL,
	[tarjetas_amarillas] [int] NULL,
	[goles_marcados] [int] NULL,
	[id_club_futbol] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estadistica_club] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoJugador]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoJugador](
	[id_estado_jugador] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado_jugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoPartido]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoPartido](
	[id_estado_partido] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado_partido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Goleo]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goleo](
	[id_goleo] [int] IDENTITY(1,1) NOT NULL,
	[minuto] [int] NULL,
	[id_alineacion_jugador] [int] NULL,
	[id_programa_partido] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_goleo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripcion]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripcion](
	[id_inscripcion] [int] IDENTITY(1,1) NOT NULL,
	[monto] [int] NULL,
	[fecha_inscripcion] [date] NULL,
	[id_usuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_inscripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador](
	[id_jugador] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido_paterno] [varchar](50) NULL,
	[apellido_materno] [varchar](50) NULL,
	[email] [varchar](40) NULL,
	[direccion] [varchar](100) NULL,
	[fecha_nacimiento] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_jugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacionalidad]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacionalidad](
	[id_nacionalidad] [int] IDENTITY(1,1) NOT NULL,
	[pais] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nacionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NacionalidadJugador]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NacionalidadJugador](
	[id_nacionalidad_jugador] [int] IDENTITY(1,1) NOT NULL,
	[fecha_adquisicion] [date] NULL,
	[id_jugador] [int] NULL,
	[id_nacionalidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nacionalidad_jugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posicion]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posicion](
	[id_posicion] [int] IDENTITY(1,1) NOT NULL,
	[posicion_torneo] [varchar](50) NULL,
	[partidos_jugados] [varchar](50) NULL,
	[cantidad_puntos] [int] NULL,
	[goles_anotados] [int] NULL,
	[goles_encontra] [int] NULL,
	[diferencia_Goles] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_posicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PosicionEquipoTorneo]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PosicionEquipoTorneo](
	[id_posicion_equipo_torneo] [int] IDENTITY(1,1) NOT NULL,
	[id_equipo] [int] NULL,
	[id_posicion] [int] NULL,
	[id_torneo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_posicion_equipo_torneo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramaPartido]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramaPartido](
	[id_programa_partido] [int] IDENTITY(1,1) NOT NULL,
	[fecha_hora_programada] [date] NULL,
	[hora_programada] [time](7) NULL,
	[marcador_local] [int] NULL,
	[marcador_visitante] [int] NULL,
	[id_ganador] [int] NULL,
	[id_perdedor] [int] NULL,
	[id_torneo] [int] NULL,
	[id_alineacion_local] [int] NULL,
	[id_alineacion_visitante] [int] NULL,
	[id_estado_partido] [int] NULL,
	[id_ubicacion_estadio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_programa_partido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sancion]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sancion](
	[id_sancion] [int] IDENTITY(1,1) NOT NULL,
	[minuto] [int] NULL,
	[fecha_sancion] [date] NULL,
	[id_programa_partido] [int] NULL,
	[id_jugador] [int] NULL,
	[id_tarjeta] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sancion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarjeta]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarjeta](
	[id_tarjeta] [int] IDENTITY(1,1) NOT NULL,
	[color_tarjeta] [int] NULL,
	[id_estadistica_club] [int] NULL,
	[id_torneo_equipo_jugador] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tecnico]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tecnico](
	[id_tecnico] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido_paterno] [varchar](50) NULL,
	[apellido_materno] [varchar](50) NULL,
	[email] [varchar](40) NULL,
	[direccion] [varchar](70) NULL,
	[fecha_inicio_carrera] [date] NULL,
	[id_tipo_tecnico] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTecnico]    Script Date: 16/04/2023 23:21:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTecnico](
	[id_tipo_tecnico] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_tecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 16/04/2023 23:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[id_tipo_usuario] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Torneo]    Script Date: 16/04/2023 23:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Torneo](
	[id_torneo] [int] IDENTITY(1,1) NOT NULL,
	[nombre_torneo] [varchar](50) NULL,
	[fecha_inicio] [date] NULL,
	[fecha_finalizacion] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_torneo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TorneoEquipoJugador]    Script Date: 16/04/2023 23:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TorneoEquipoJugador](
	[id_torneo_equipo_jugador] [int] IDENTITY(1,1) NOT NULL,
	[id_jugador] [int] NULL,
	[id_torneo] [int] NULL,
	[id_equipo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_torneo_equipo_jugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UbicacionEstadio]    Script Date: 16/04/2023 23:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UbicacionEstadio](
	[id_ubicacion_estadio] [int] IDENTITY(1,1) NOT NULL,
	[nombre_ubicacion] [varchar](80) NULL,
	[direccion] [varchar](100) NULL,
	[telefono] [varchar](15) NULL,
	[id_ciudad_estadio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ubicacion_estadio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 16/04/2023 23:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[contraseña] [varchar](50) NULL,
	[id_tipo_usuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CiudadEstadio] ON 
GO
INSERT [dbo].[CiudadEstadio] ([id_ciudad_estadio], [nombre]) VALUES (1, N'Ciudad de México, México')
GO
INSERT [dbo].[CiudadEstadio] ([id_ciudad_estadio], [nombre]) VALUES (2, N'Río de Janeiro, Brasil')
GO
INSERT [dbo].[CiudadEstadio] ([id_ciudad_estadio], [nombre]) VALUES (3, N'Buenos Aires, Argentina')
GO
INSERT [dbo].[CiudadEstadio] ([id_ciudad_estadio], [nombre]) VALUES (4, N'Santiago, Chile')
GO
INSERT [dbo].[CiudadEstadio] ([id_ciudad_estadio], [nombre]) VALUES (5, N'Barranquilla, Colombia')
GO
INSERT [dbo].[CiudadEstadio] ([id_ciudad_estadio], [nombre]) VALUES (6, N'Montevideo, Uruguay')
GO
INSERT [dbo].[CiudadEstadio] ([id_ciudad_estadio], [nombre]) VALUES (7, N'Asunción, Paraguay')
GO
INSERT [dbo].[CiudadEstadio] ([id_ciudad_estadio], [nombre]) VALUES (8, N'Lima, Perú')
GO
INSERT [dbo].[CiudadEstadio] ([id_ciudad_estadio], [nombre]) VALUES (9, N'La Paz, Bolivia')
GO
INSERT [dbo].[CiudadEstadio] ([id_ciudad_estadio], [nombre]) VALUES (10, N'São Paulo, Brasil')
GO
INSERT [dbo].[CiudadEstadio] ([id_ciudad_estadio], [nombre]) VALUES (11, N'Ciudad de Panamá, Panamá')
GO
INSERT [dbo].[CiudadEstadio] ([id_ciudad_estadio], [nombre]) VALUES (12, N'San José, Costa Rica')
GO
INSERT [dbo].[CiudadEstadio] ([id_ciudad_estadio], [nombre]) VALUES (13, N'Bogotá, Colombia')
GO
SET IDENTITY_INSERT [dbo].[CiudadEstadio] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipo] ON 
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (1, N'Boca Juniors (Argentina)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (2, N'River Plate (Argentina)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (3, N'Flamengo (Brazil)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (4, N'Corinthians (Brazil)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (5, N'Santos FC (Brazil)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (6, N'São Paulo FC (Brazil)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (7, N'Club América (Mexico)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (8, N'Chivas de Guadalajara (Mexico)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (9, N'Cruz Azul (Mexico)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (10, N'Tigres UANL (Mexico)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (11, N'Club Atlético Nacional (Colombia)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (12, N'Independiente Santa Fe (Colombia)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (13, N'Club Olimpia (Paraguay)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (14, N'Cerro Porteño (Paraguay)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (15, N'Club Atlético Peñarol (Uruguay)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (16, N'Club Nacional de Football (Uruguay)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (17, N'Colo-Colo (Chile)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (18, N'Universidad de Chile (Chile)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (19, N'Alianza Lima (Peru)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (20, N'Sporting Cristal (Peru)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (21, N'Emelec (Ecuador)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (22, N'Barcelona SC (Ecuador)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (23, N'Club Libertad (Paraguay)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (24, N'Deportivo Toluca (Mexico)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (25, N'Club Atlético Huracán (Argentina)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (26, N'Club Atlético Lanús (Argentina)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (27, N'Club Atlético Vélez Sarsfield (Argentina)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (28, N'Club Deportivo Universidad San Martín (Peru)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (29, N'Club Bolívar (Bolivia)')
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo]) VALUES (30, N'Club The Strongest (Bolivia)')
GO
SET IDENTITY_INSERT [dbo].[Equipo] OFF
GO
SET IDENTITY_INSERT [dbo].[Jugador] ON 
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (1, N'Hugo', N'García', N'Vargas', N'hugogarcía@gmail.com', N'Calle 190, La Guardia, Santa Cruz, Bolivia', CAST(N'1998-05-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (2, N'Martín', N'Rodríguez', N'Flores', N'martínrodríguez@gmail.com', N'Calle 673, Portachuelo, Santa Cruz, Bolivia', CAST(N'1991-12-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (3, N'Lucas', N'López', N'Herrera', N'lucaslópez@gmail.com', N'Calle 910, El Torno, Santa Cruz, Bolivia', CAST(N'1994-02-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (4, N'Mateo', N'Martínez', N'Castro', N'mateomartínez@gmail.com', N'Calle 561, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1989-05-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (5, N'Leo', N'Pérez', N'Romero', N'leopérez@gmail.com', N'Calle 148, La Guardia, Santa Cruz, Bolivia', CAST(N'1980-05-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (6, N'Daniel', N'Sánchez', N'Gonzales', N'danielsánchez@gmail.com', N'Calle 859, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1996-10-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (7, N'Alejandro', N'González', N'Aguilar', N'alejandrogonzález@gmail.com', N'Calle 514, El Puente, Santa Cruz, Bolivia', CAST(N'1985-12-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (8, N'Pablo', N'Gómez', N'Mendoza', N'pablogómez@gmail.com', N'Calle 285, Warnes, Santa Cruz, Bolivia', CAST(N'1997-11-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (9, N'Manuel', N'Fernández', N'Herrera', N'manuelfernández@gmail.com', N'Calle 861, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1999-11-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (10, N'Álvaro', N'Díaz', N'Espinoza', N'álvarodíaz@gmail.com', N'Calle 51, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1989-05-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (11, N'Adrián', N'Torres', N'Gutiérrez', N'adriántorres@gmail.com', N'Calle 648, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1980-10-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (12, N'David', N'Moreno', N'Reyes', N'davidmoreno@gmail.com', N'Calle 9, El Puente, Santa Cruz, Bolivia', CAST(N'1992-11-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (13, N'Mario', N'Ortiz', N'Valdez', N'marioortiz@gmail.com', N'Calle 929, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1989-02-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (14, N'Enzo', N'Ramos', N'Guzmán', N'enzoramos@gmail.com', N'Calle 60, El Torno, Santa Cruz, Bolivia', CAST(N'1996-08-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (15, N'Diego', N'Ruiz', N'Ramírez', N'diegoruiz@gmail.com', N'Calle 389, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1976-05-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (16, N'Marcos', N'Vargas', N'Ríos', N'marcosvargas@gmail.com', N'Calle 259, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1985-03-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (17, N'Izan', N'Flores', N'Chávez', N'izanflores@gmail.com', N'Calle 5, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1983-03-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (18, N'Javier', N'Herrera', N'Morales', N'javierherrera@gmail.com', N'Calle 469, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1999-04-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (19, N'Marco', N'Castro', N'Núñez', N'marcocastro@gmail.com', N'Calle 417, La Guardia, Santa Cruz, Bolivia', CAST(N'1994-05-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (20, N'Álex', N'Romero', N'Salazar', N'álexromero@gmail.com', N'Calle 662, El Puente, Santa Cruz, Bolivia', CAST(N'1995-07-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (21, N'Bruno', N'Gonzales', N'Rivera', N'brunogonzales@gmail.com', N'Calle 71, El Torno, Santa Cruz, Bolivia', CAST(N'1999-07-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (22, N'Oliver', N'Aguilar', N'Castillo', N'oliveraguilar@gmail.com', N'Calle 19, El Puente, Santa Cruz, Bolivia', CAST(N'1999-03-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (23, N'Miguel', N'Mendoza', N'Jiménez', N'miguelmendoza@gmail.com', N'Calle 119, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1981-09-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (24, N'Thiago', N'Herrera', N'Vázquez', N'thiagoherrera@gmail.com', N'Calle 934, Portachuelo, Santa Cruz, Bolivia', CAST(N'1999-01-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (25, N'Antonio', N'Espinoza', N'Fuentes', N'antonioespinoza@gmail.com', N'Calle 468, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1987-08-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (26, N'Marc', N'Gutiérrez', N'Medina', N'marcgutiérrez@gmail.com', N'Calle 107, Montero, Santa Cruz, Bolivia', CAST(N'1980-03-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (27, N'Carlos', N'Reyes', N'Cortez', N'carlosreyes@gmail.com', N'Calle 347, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1983-04-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (28, N'Ángel', N'Valdez', N'Benítez', N'ángelvaldez@gmail.com', N'Calle 119, La Guardia, Santa Cruz, Bolivia', CAST(N'1983-01-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (29, N'Juan', N'Guzmán', N'Soto', N'juanguzmán@gmail.com', N'Calle 143, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1977-05-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (30, N'Gonzalo', N'Ramírez', N'León', N'gonzaloramírez@gmail.com', N'Calle 986, Portachuelo, Santa Cruz, Bolivia', CAST(N'1981-08-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (31, N'Gael', N'Ríos', N'Gallegos', N'gaelríos@gmail.com', N'Calle 434, La Guardia, Santa Cruz, Bolivia', CAST(N'1986-11-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (32, N'Sergio', N'Chávez', N'Rosales', N'sergiochávez@gmail.com', N'Calle 836, El Torno, Santa Cruz, Bolivia', CAST(N'1983-04-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (33, N'Nicolás', N'Morales', N'Carrillo', N'nicolásmorales@gmail.com', N'Calle 435, Portachuelo, Santa Cruz, Bolivia', CAST(N'1983-04-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (34, N'Dylan', N'Núñez', N'Acosta', N'dylannúñez@gmail.com', N'Calle 437, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1995-06-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (35, N'Gabriel', N'Salazar', N'Campos', N'gabrielsalazar@gmail.com', N'Calle 532, Montero, Santa Cruz, Bolivia', CAST(N'1988-03-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (36, N'Jorge', N'Rivera', N'Duarte', N'jorgerivera@gmail.com', N'Calle 776, La Guardia, Santa Cruz, Bolivia', CAST(N'1992-02-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (37, N'José', N'Castillo', N'Miranda', N'josécastillo@gmail.com', N'Calle 247, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1979-11-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (38, N'Adam', N'Jiménez', N'Bravo', N'adamjiménez@gmail.com', N'Calle 644, El Torno, Santa Cruz, Bolivia', CAST(N'1989-02-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (39, N'Liam', N'Vázquez', N'Meléndez', N'liamvázquez@gmail.com', N'Calle 607, El Torno, Santa Cruz, Bolivia', CAST(N'1998-07-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (40, N'Eric', N'Fuentes', N'Peña', N'ericfuentes@gmail.com', N'Calle 341, Warnes, Santa Cruz, Bolivia', CAST(N'1983-01-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (41, N'Samuel', N'Medina', N'Padilla', N'samuelmedina@gmail.com', N'Calle 367, Portachuelo, Santa Cruz, Bolivia', CAST(N'1985-01-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (42, N'Darío', N'Cortez', N'Cervantes', N'daríocortez@gmail.com', N'Calle 235, El Torno, Santa Cruz, Bolivia', CAST(N'1976-04-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (43, N'Héctor', N'Benítez', N'Rangel', N'héctorbenítez@gmail.com', N'Calle 20, El Puente, Santa Cruz, Bolivia', CAST(N'1977-12-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (44, N'Luca', N'Soto', N'Tapia', N'lucasoto@gmail.com', N'Calle 403, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1986-04-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (45, N'Iker', N'León', N'Solís', N'ikerleón@gmail.com', N'Calle 891, La Guardia, Santa Cruz, Bolivia', CAST(N'1995-05-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (46, N'Amir', N'Gallegos', N'Arellano', N'amirgallegos@gmail.com', N'Calle 191, El Puente, Santa Cruz, Bolivia', CAST(N'1994-03-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (47, N'Rodrigo', N'Rosales', N'Zavala', N'rodrigorosales@gmail.com', N'Calle 439, El Torno, Santa Cruz, Bolivia', CAST(N'1989-08-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (48, N'Saúl', N'Carrillo', N'Cárdenas', N'saúlcarrillo@gmail.com', N'Calle 926, El Puente, Santa Cruz, Bolivia', CAST(N'1996-05-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (49, N'Víctor', N'Acosta', N'Pacheco', N'víctoracosta@gmail.com', N'Calle 552, Montero, Santa Cruz, Bolivia', CAST(N'1996-06-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (50, N'Francisco', N'Campos', N'Villegas', N'franciscocampos@gmail.com', N'Calle 361, La Guardia, Santa Cruz, Bolivia', CAST(N'1995-04-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (51, N'Iván', N'Duarte', N'Pineda', N'ivánduarte@gmail.com', N'Calle 242, La Guardia, Santa Cruz, Bolivia', CAST(N'1974-05-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (52, N'Jesús', N'Miranda', N'Carrasco', N'jesúsmiranda@gmail.com', N'Calle 467, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1990-01-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (53, N'Jaime', N'Bravo', N'Robles', N'jaimebravo@gmail.com', N'Calle 595, La Guardia, Santa Cruz, Bolivia', CAST(N'1983-12-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (54, N'Aarón', N'Meléndez', N'Navarro', N'aarónmeléndez@gmail.com', N'Calle 350, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1994-06-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (55, N'Rubén', N'Peña', N'Escobar', N'rubénpeña@gmail.com', N'Calle 576, Montero, Santa Cruz, Bolivia', CAST(N'1976-11-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (56, N'Ian', N'Padilla', N'Palacios', N'ianpadilla@gmail.com', N'Calle 559, El Puente, Santa Cruz, Bolivia', CAST(N'1992-02-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (57, N'Guillermo', N'Cervantes', N'Valencia', N'guillermocervantes@gmail.com', N'Calle 634, Montero, Santa Cruz, Bolivia', CAST(N'1973-08-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (58, N'Erik', N'Rangel', N'Espinosa', N'erikrangel@gmail.com', N'Calle 151, El Torno, Santa Cruz, Bolivia', CAST(N'1976-07-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (59, N'Mohamed', N'Tapia', N'Gálvez', N'mohamedtapia@gmail.com', N'Calle 524, El Puente, Santa Cruz, Bolivia', CAST(N'1996-12-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (60, N'Julen', N'Solís', N'Bautista', N'julensolís@gmail.com', N'Calle 676, El Puente, Santa Cruz, Bolivia', CAST(N'1987-06-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (61, N'Luis', N'Arellano', N'Luna', N'luisarellano@gmail.com', N'Calle 359, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1975-12-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (62, N'Pau', N'Zavala', N'Montoya', N'pauzavala@gmail.com', N'Calle 483, Montero, Santa Cruz, Bolivia', CAST(N'1977-11-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (63, N'Unai', N'Cárdenas', N'Caballero', N'unaicárdenas@gmail.com', N'Calle 810, Warnes, Santa Cruz, Bolivia', CAST(N'1991-07-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (64, N'Rafael', N'Pacheco', N'Delgado', N'rafaelpacheco@gmail.com', N'Calle 115, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1996-10-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (65, N'Joel', N'Villegas', N'Aguayo', N'joelvillegas@gmail.com', N'Calle 293, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1974-02-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (66, N'Alberto', N'Pineda', N'Acuña', N'albertopineda@gmail.com', N'Calle 532, Portachuelo, Santa Cruz, Bolivia', CAST(N'1978-09-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (67, N'Pedro', N'Carrasco', N'Fierro', N'pedrocarrasco@gmail.com', N'Calle 198, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1996-12-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (68, N'Raúl', N'Robles', N'Beltrán', N'raúlrobles@gmail.com', N'Calle 107, Portachuelo, Santa Cruz, Bolivia', CAST(N'1977-10-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (69, N'Aitor', N'Navarro', N'Bustamante', N'aitornavarro@gmail.com', N'Calle 931, El Puente, Santa Cruz, Bolivia', CAST(N'1974-08-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (70, N'Santiago', N'Escobar', N'Ochoa', N'santiagoescobar@gmail.com', N'Calle 732, El Puente, Santa Cruz, Bolivia', CAST(N'1996-04-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (71, N'Rayan', N'Palacios', N'Vega', N'rayanpalacios@gmail.com', N'Calle 325, La Guardia, Santa Cruz, Bolivia', CAST(N'1985-07-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (72, N'Pol', N'Valencia', N'Zúñiga', N'polvalencia@gmail.com', N'Calle 592, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1984-08-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (73, N'Nil', N'Espinosa', N'Alvarado', N'nilespinosa@gmail.com', N'Calle 939, Warnes, Santa Cruz, Bolivia', CAST(N'1974-07-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (74, N'Noah', N'Gálvez', N'Medina', N'noahgálvez@gmail.com', N'Calle 404, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1994-08-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (75, N'Jan', N'Bautista', N'Bernal', N'janbautista@gmail.com', N'Calle 564, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1980-09-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (76, N'Asier', N'Luna', N'Miranda', N'asierluna@gmail.com', N'Calle 173, El Puente, Santa Cruz, Bolivia', CAST(N'1996-09-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (77, N'Fernando', N'Montoya', N'Durán', N'fernandomontoya@gmail.com', N'Calle 316, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1983-07-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (78, N'Alonso', N'Caballero', N'Vega', N'alonsocaballero@gmail.com', N'Calle 700, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1975-11-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (79, N'Matías', N'Delgado', N'Olvera', N'matíasdelgado@gmail.com', N'Calle 882, El Puente, Santa Cruz, Bolivia', CAST(N'1986-10-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (80, N'Biel', N'Aguayo', N'Méndez', N'bielaguayo@gmail.com', N'Calle 434, Portachuelo, Santa Cruz, Bolivia', CAST(N'1980-11-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (81, N'Andrés', N'Acuña', N'Quiroz', N'andrésacuña@gmail.com', N'Calle 401, La Guardia, Santa Cruz, Bolivia', CAST(N'1974-05-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (82, N'Axel', N'Fierro', N'Rivas', N'axelfierro@gmail.com', N'Calle 396, La Guardia, Santa Cruz, Bolivia', CAST(N'1991-06-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (83, N'Ismael', N'Beltrán', N'Fuentes', N'ismaelbeltrán@gmail.com', N'Calle 135, Montero, Santa Cruz, Bolivia', CAST(N'1990-06-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (84, N'Martí', N'Bustamante', N'Reyes', N'martíbustamante@gmail.com', N'Calle 512, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1982-07-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (85, N'Arnau', N'Ochoa', N'Osorio', N'arnauochoa@gmail.com', N'Calle 690, Portachuelo, Santa Cruz, Bolivia', CAST(N'1978-09-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (86, N'Imran', N'Vega', N'Esquivel', N'imranvega@gmail.com', N'Calle 301, Montero, Santa Cruz, Bolivia', CAST(N'1997-11-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (87, N'Luka', N'Zúñiga', N'Márquez', N'lukazúñiga@gmail.com', N'Calle 283, Portachuelo, Santa Cruz, Bolivia', CAST(N'1995-05-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (88, N'Ignacio', N'Alvarado', N'Delgado', N'ignacioalvarado@gmail.com', N'Calle 577, Portachuelo, Santa Cruz, Bolivia', CAST(N'1991-12-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (89, N'Aleix', N'Medina', N'Briones', N'aleixmedina@gmail.com', N'Calle 12, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1997-01-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (90, N'Alan', N'Bernal', N'Soria', N'alanbernal@gmail.com', N'Calle 627, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1984-10-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (91, N'Elías', N'Miranda', N'Nava', N'elíasmiranda@gmail.com', N'Calle 603, El Puente, Santa Cruz, Bolivia', CAST(N'1988-04-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (92, N'Omar', N'Durán', N'García', N'omardurán@gmail.com', N'Calle 490, Warnes, Santa Cruz, Bolivia', CAST(N'1988-02-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (93, N'Isaac', N'Vega', N'Granados', N'isaacvega@gmail.com', N'Calle 909, Montero, Santa Cruz, Bolivia', CAST(N'1984-07-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (94, N'Youssef', N'Olvera', N'Magaña', N'youssefolvera@gmail.com', N'Calle 854, Warnes, Santa Cruz, Bolivia', CAST(N'1983-07-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (95, N'Jon', N'Méndez', N'Valdés', N'jonméndez@gmail.com', N'Calle 337, Montero, Santa Cruz, Bolivia', CAST(N'2000-08-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (96, N'Teo', N'Quiroz', N'Ledezma', N'teoquiroz@gmail.com', N'Calle 746, El Puente, Santa Cruz, Bolivia', CAST(N'1974-07-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (97, N'Mauro', N'Rivas', N'Saucedo', N'maurorivas@gmail.com', N'Calle 181, Montero, Santa Cruz, Bolivia', CAST(N'1978-02-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (98, N'Óscar', N'Fuentes', N'Almanza', N'óscarfuentes@gmail.com', N'Calle 342, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1980-08-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (99, N'Cristian', N'Reyes', N'Favela', N'cristianreyes@gmail.com', N'Calle 293, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1978-10-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (100, N'Leonardo', N'Osorio', N'Leyva', N'leonardoosorio@gmail.com', N'Calle 490, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1991-03-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (101, N'Abel ', N'Esquivel', N'Aguirre', N'abel esquivel@gmail.com', N'Calle 108, Warnes, Santa Cruz, Bolivia', CAST(N'1994-04-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (102, N' Adrián ', N'Márquez', N'Madrigal', N' adrián márquez@gmail.com', N'Calle 553, Portachuelo, Santa Cruz, Bolivia', CAST(N'1976-08-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (103, N' Alejandro ', N'Delgado', N'Carranza', N' alejandro delgado@gmail.com', N'Calle 433, El Torno, Santa Cruz, Bolivia', CAST(N'1984-05-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (104, N' Ángel ', N'Briones', N'Villarreal', N' ángel briones@gmail.com', N'Calle 797, Montero, Santa Cruz, Bolivia', CAST(N'1976-11-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (105, N' Carlos ', N'Soria', N'Aguilar', N' carlos soria@gmail.com', N'Calle 914, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1992-04-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (106, N' César ', N'Nava', N'Tapia', N' césar nava@gmail.com', N'Calle 774, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1995-12-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (107, N' Bruno ', N'García', N'Hernández', N' bruno garcía@gmail.com', N'Calle 313, La Guardia, Santa Cruz, Bolivia', CAST(N'1993-06-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (108, N' Daniel ', N'Granados', N'Soria', N' daniel granados@gmail.com', N'Calle 85, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1974-10-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (109, N' Darío ', N'Magaña', N'Cabral', N' darío magaña@gmail.com', N'Calle 356, Montero, Santa Cruz, Bolivia', CAST(N'1976-02-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (110, N' David ', N'Valdés', N'Cedillo', N' david valdés@gmail.com', N'Calle 538, La Guardia, Santa Cruz, Bolivia', CAST(N'1996-10-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (111, N' Diego ', N'Ledezma', N'Serrano', N' diego ledezma@gmail.com', N'Calle 502, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1993-08-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (112, N' Emilio ', N'Saucedo', N'Escamilla', N' emilio saucedo@gmail.com', N'Calle 688, Montero, Santa Cruz, Bolivia', CAST(N'1986-01-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (113, N' Fabián ', N'Almanza', N'Salgado', N' fabián almanza@gmail.com', N'Calle 547, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1990-09-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (114, N' Felipe ', N'Favela', N'Mares', N' felipe favela@gmail.com', N'Calle 298, Warnes, Santa Cruz, Bolivia', CAST(N'1988-01-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (115, N' Gabriel ', N'Leyva', N'Castañeda', N' gabriel leyva@gmail.com', N'Calle 312, El Torno, Santa Cruz, Bolivia', CAST(N'1999-04-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (116, N' Héctor ', N'Aguirre', N'Carrillo', N' héctor aguirre@gmail.com', N'Calle 192, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1990-01-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (117, N' Hugo ', N'Madrigal', N'Figueroa', N' hugo madrigal@gmail.com', N'Calle 183, El Puente, Santa Cruz, Bolivia', CAST(N'1992-09-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (118, N' Jacobo ', N'Carranza', N'Rangel', N' jacobo carranza@gmail.com', N'Calle 710, Portachuelo, Santa Cruz, Bolivia', CAST(N'1976-06-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (119, N' Jaime ', N'Villarreal', N'Salinas', N' jaime villarreal@gmail.com', N'Calle 290, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1975-10-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (120, N' Joaquín ', N'Aguilar', N'Delarosa', N' joaquín aguilar@gmail.com', N'Calle 876, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1977-10-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (121, N' Juan ', N'Tapia', N'Armijo', N' juan tapia@gmail.com', N'Calle 197, Portachuelo, Santa Cruz, Bolivia', CAST(N'1981-08-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (122, N' Leonardo ', N'Hernández', N'Alonzo', N' leonardo hernández@gmail.com', N'Calle 973, Montero, Santa Cruz, Bolivia', CAST(N'1992-02-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (123, N' Leo ', N'Soria', N'Covarrubias', N' leo soria@gmail.com', N'Calle 911, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1999-09-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (124, N' Lucas ', N'Cabral', N'Valenzuela', N' lucas cabral@gmail.com', N'Calle 645, Montero, Santa Cruz, Bolivia', CAST(N'1999-09-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (125, N' Marcos ', N'Cedillo', N'Verdugo', N' marcos cedillo@gmail.com', N'Calle 265, Portachuelo, Santa Cruz, Bolivia', CAST(N'1987-02-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (126, N' Martín ', N'Serrano', N'Sosa', N' martín serrano@gmail.com', N'Calle 290, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1985-11-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (127, N' Mateo ', N'Escamilla', N'Zambrano', N' mateo escamilla@gmail.com', N'Calle 11, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1994-07-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (128, N' Matías ', N'Salgado', N'García', N' matías salgado@gmail.com', N'Calle 512, Montero, Santa Cruz, Bolivia', CAST(N'1975-09-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (129, N' Miguel ', N'Mares', N'Rodríguez', N' miguel mares@gmail.com', N'Calle 946, El Torno, Santa Cruz, Bolivia', CAST(N'1980-07-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (130, N' Nicolás ', N'Castañeda', N'López', N' nicolás castañeda@gmail.com', N'Calle 601, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1990-01-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (131, N' Pablo ', N'Carrillo', N'Martínez', N' pablo carrillo@gmail.com', N'Calle 36, Montero, Santa Cruz, Bolivia', CAST(N'2000-12-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (132, N' Raúl ', N'Figueroa', N'Pérez', N' raúl figueroa@gmail.com', N'Calle 106, El Puente, Santa Cruz, Bolivia', CAST(N'1989-01-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (133, N' Samuel ', N'Rangel', N'Sánchez', N' samuel rangel@gmail.com', N'Calle 441, Montero, Santa Cruz, Bolivia', CAST(N'1975-01-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (134, N' Santiago ', N'Salinas', N'González', N' santiago salinas@gmail.com', N'Calle 210, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1988-08-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (135, N' Sebastián ', N'Delarosa', N'Gómez', N' sebastián delarosa@gmail.com', N'Calle 882, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1997-09-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (136, N' Tomás ', N'Armijo', N'Fernández', N' tomás armijo@gmail.com', N'Calle 456, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1974-03-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (137, N' Tristán ', N'Alonzo', N'Díaz', N' tristán alonzo@gmail.com', N'Calle 121, Montero, Santa Cruz, Bolivia', CAST(N'1977-08-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (138, N' Joan ', N'Covarrubias', N'Torres', N' joan covarrubias@gmail.com', N'Calle 414, Montero, Santa Cruz, Bolivia', CAST(N'1991-07-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (139, N' Andrés ', N'Valenzuela', N'Moreno', N' andrés valenzuela@gmail.com', N'Calle 219, Portachuelo, Santa Cruz, Bolivia', CAST(N'1994-12-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (140, N' Ricardo ', N'Verdugo', N'Ortiz', N' ricardo verdugo@gmail.com', N'Calle 390, Warnes, Santa Cruz, Bolivia', CAST(N'1987-01-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (141, N' Manuel ', N'Sosa', N'Ramos', N' manuel sosa@gmail.com', N'Calle 553, Montero, Santa Cruz, Bolivia', CAST(N'1978-06-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (142, N' Ezequiel ', N'Zambrano', N'Ruiz', N' ezequiel zambrano@gmail.com', N'Calle 564, El Puente, Santa Cruz, Bolivia', CAST(N'1977-11-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (143, N' Francisco ', N'García', N'Vargas', N' francisco garcía@gmail.com', N'Calle 91, El Puente, Santa Cruz, Bolivia', CAST(N'1993-02-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (144, N' Elías ', N'Rodríguez', N'Flores', N' elías rodríguez@gmail.com', N'Calle 604, Warnes, Santa Cruz, Bolivia', CAST(N'1996-02-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (145, N' Blas ', N'López', N'Herrera', N' blas lópez@gmail.com', N'Calle 568, La Guardia, Santa Cruz, Bolivia', CAST(N'1977-10-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (146, N' Alfonso ', N'Martínez', N'Castro', N' alfonso martínez@gmail.com', N'Calle 149, Portachuelo, Santa Cruz, Bolivia', CAST(N'1974-04-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (147, N' Ulises ', N'Pérez', N'Romero', N' ulises pérez@gmail.com', N'Calle 802, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1975-11-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (148, N' Gerardo ', N'Sánchez', N'Gonzales', N' gerardo sánchez@gmail.com', N'Calle 413, La Guardia, Santa Cruz, Bolivia', CAST(N'1994-07-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (149, N' Alfredo ', N'González', N'Aguilar', N' alfredo gonzález@gmail.com', N'Calle 358, Montero, Santa Cruz, Bolivia', CAST(N'1993-03-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (150, N' Álvaro ', N'Gómez', N'Mendoza', N' álvaro gómez@gmail.com', N'Calle 548, Montero, Santa Cruz, Bolivia', CAST(N'1996-08-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (151, N' Amadeo ', N'Fernández', N'Herrera', N' amadeo fernández@gmail.com', N'Calle 138, Warnes, Santa Cruz, Bolivia', CAST(N'1998-05-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (152, N' Amancio ', N'Díaz', N'Espinoza', N' amancio díaz@gmail.com', N'Calle 611, Portachuelo, Santa Cruz, Bolivia', CAST(N'1981-03-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (153, N' Antonio ', N'Torres', N'Gutiérrez', N' antonio torres@gmail.com', N'Calle 339, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'2000-11-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (154, N' Baltasar ', N'Moreno', N'Reyes', N' baltasar moreno@gmail.com', N'Calle 364, Portachuelo, Santa Cruz, Bolivia', CAST(N'1992-09-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (155, N' Beltrán ', N'Ortiz', N'Valdez', N' beltrán ortiz@gmail.com', N'Calle 554, Portachuelo, Santa Cruz, Bolivia', CAST(N'1992-01-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (156, N' Benito ', N'Ramos', N'Guzmán', N' benito ramos@gmail.com', N'Calle 660, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1988-02-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (157, N' Rufino ', N'Ruiz', N'Ramírez', N' rufino ruiz@gmail.com', N'Calle 675, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1995-03-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (158, N' Boris ', N'Vargas', N'Ríos', N' boris vargas@gmail.com', N'Calle 635, El Puente, Santa Cruz, Bolivia', CAST(N'1996-03-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (159, N' Camilo ', N'Flores', N'Chávez', N' camilo flores@gmail.com', N'Calle 148, Montero, Santa Cruz, Bolivia', CAST(N'1974-03-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (160, N' Ciro ', N'Herrera', N'Morales', N' ciro herrera@gmail.com', N'Calle 750, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1975-12-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (161, N' Conrado ', N'Castro', N'Núñez', N' conrado castro@gmail.com', N'Calle 405, Portachuelo, Santa Cruz, Bolivia', CAST(N'1983-05-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (162, N' Donato', N'Romero', N'Salazar', N' donatoromero@gmail.com', N'Calle 232, El Puente, Santa Cruz, Bolivia', CAST(N'1981-10-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (163, N'Florentino ', N'Gonzales', N'Rivera', N'florentino gonzales@gmail.com', N'Calle 87, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1994-05-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (164, N' Saturnino ', N'Aguilar', N'Castillo', N' saturnino aguilar@gmail.com', N'Calle 50, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1993-04-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (165, N' Segundo ', N'Mendoza', N'Jiménez', N' segundo mendoza@gmail.com', N'Calle 49, Montero, Santa Cruz, Bolivia', CAST(N'1984-01-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (166, N' Anastasio ', N'Herrera', N'Vázquez', N' anastasio herrera@gmail.com', N'Calle 200, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1989-07-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (167, N' Cipriano ', N'Espinoza', N'Fuentes', N' cipriano espinoza@gmail.com', N'Calle 304, Warnes, Santa Cruz, Bolivia', CAST(N'1981-10-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (168, N' Teófilo ', N'Gutiérrez', N'Medina', N' teófilo gutiérrez@gmail.com', N'Calle 345, Montero, Santa Cruz, Bolivia', CAST(N'1993-09-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (169, N' Casimiro ', N'Reyes', N'Cortez', N' casimiro reyes@gmail.com', N'Calle 916, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'2000-09-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (170, N' Bonifacio ', N'Valdez', N'Benítez', N' bonifacio valdez@gmail.com', N'Calle 276, Montero, Santa Cruz, Bolivia', CAST(N'1987-12-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (171, N' Victorino ', N'Guzmán', N'Soto', N' victorino guzmán@gmail.com', N'Calle 163, Montero, Santa Cruz, Bolivia', CAST(N'1995-02-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (172, N' Eleuterio ', N'Ramírez', N'León', N' eleuterio ramírez@gmail.com', N'Calle 920, El Torno, Santa Cruz, Bolivia', CAST(N'1991-10-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (173, N' Urbano ', N'Ríos', N'Gallegos', N' urbano ríos@gmail.com', N'Calle 897, Warnes, Santa Cruz, Bolivia', CAST(N'1980-01-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (174, N' Severino ', N'Chávez', N'Rosales', N' severino chávez@gmail.com', N'Calle 639, El Torno, Santa Cruz, Bolivia', CAST(N'1996-05-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (175, N' Inocencio ', N'Morales', N'Carrillo', N' inocencio morales@gmail.com', N'Calle 201, Montero, Santa Cruz, Bolivia', CAST(N'1985-11-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (176, N' Primitivo ', N'Núñez', N'Acosta', N' primitivo núñez@gmail.com', N'Calle 192, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1983-08-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (177, N' Bautista ', N'Salazar', N'Campos', N' bautista salazar@gmail.com', N'Calle 454, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1988-06-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (178, N' Agapito ', N'Rivera', N'Duarte', N' agapito rivera@gmail.com', N'Calle 110, El Torno, Santa Cruz, Bolivia', CAST(N'1990-05-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (179, N' Benedicto ', N'Castillo', N'Miranda', N' benedicto castillo@gmail.com', N'Calle 441, Warnes, Santa Cruz, Bolivia', CAST(N'1981-10-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (180, N' Enrique ', N'Jiménez', N'Bravo', N' enrique jiménez@gmail.com', N'Calle 256, Montero, Santa Cruz, Bolivia', CAST(N'1999-08-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (181, N' Eugenio ', N'Vázquez', N'Meléndez', N' eugenio vázquez@gmail.com', N'Calle 155, Montero, Santa Cruz, Bolivia', CAST(N'1989-08-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (182, N' Estanislao ', N'Fuentes', N'Peña', N' estanislao fuentes@gmail.com', N'Calle 570, La Guardia, Santa Cruz, Bolivia', CAST(N'1992-01-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (183, N' Fausto ', N'Medina', N'Padilla', N' fausto medina@gmail.com', N'Calle 864, Portachuelo, Santa Cruz, Bolivia', CAST(N'1988-08-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (184, N' Faustino ', N'Cortez', N'Cervantes', N' faustino cortez@gmail.com', N'Calle 720, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1993-12-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (185, N' Felipe ', N'Benítez', N'Rangel', N' felipe benítez@gmail.com', N'Calle 962, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1990-10-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (186, N' Félix ', N'Soto', N'Tapia', N' félix soto@gmail.com', N'Calle 796, El Puente, Santa Cruz, Bolivia', CAST(N'1994-12-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (187, N' Fermín ', N'León', N'Solís', N' fermín león@gmail.com', N'Calle 801, Montero, Santa Cruz, Bolivia', CAST(N'1975-05-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (188, N' Francisco ', N'Gallegos', N'Arellano', N' francisco gallegos@gmail.com', N'Calle 843, Warnes, Santa Cruz, Bolivia', CAST(N'1989-01-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (189, N' Gaspar ', N'Rosales', N'Zavala', N' gaspar rosales@gmail.com', N'Calle 473, Montero, Santa Cruz, Bolivia', CAST(N'1996-05-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (190, N' Genaro ', N'Carrillo', N'Cárdenas', N' genaro carrillo@gmail.com', N'Calle 124, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1993-02-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (191, N' Hilario ', N'Acosta', N'Pacheco', N' hilario acosta@gmail.com', N'Calle 755, El Torno, Santa Cruz, Bolivia', CAST(N'1985-11-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (192, N' Hugo ', N'Campos', N'Villegas', N' hugo campos@gmail.com', N'Calle 33, Montero, Santa Cruz, Bolivia', CAST(N'1991-10-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (193, N' Ignacio ', N'Duarte', N'Pineda', N' ignacio duarte@gmail.com', N'Calle 399, Warnes, Santa Cruz, Bolivia', CAST(N'1982-04-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (194, N' Ireneo ', N'Miranda', N'Carrasco', N' ireneo miranda@gmail.com', N'Calle 533, Portachuelo, Santa Cruz, Bolivia', CAST(N'1992-09-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (195, N' Ismael ', N'Bravo', N'Robles', N' ismael bravo@gmail.com', N'Calle 891, Portachuelo, Santa Cruz, Bolivia', CAST(N'2000-02-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (196, N' Joaquín ', N'Meléndez', N'Navarro', N' joaquín meléndez@gmail.com', N'Calle 342, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1985-06-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (197, N' José ', N'Peña', N'Escobar', N' josé peña@gmail.com', N'Calle 611, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1985-11-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (198, N' Juan ', N'Padilla', N'Palacios', N' juan padilla@gmail.com', N'Calle 141, Warnes, Santa Cruz, Bolivia', CAST(N'1994-11-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (199, N' Julián ', N'Cervantes', N'Valencia', N' julián cervantes@gmail.com', N'Calle 571, Warnes, Santa Cruz, Bolivia', CAST(N'1986-08-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (200, N' Justo ', N'Rangel', N'Espinosa', N' justo rangel@gmail.com', N'Calle 427, El Torno, Santa Cruz, Bolivia', CAST(N'1989-11-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (201, N' Leopoldo ', N'Tapia', N'Gálvez', N' leopoldo tapia@gmail.com', N'Calle 720, Warnes, Santa Cruz, Bolivia', CAST(N'1975-04-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (202, N' León ', N'Solís', N'Bautista', N' león solís@gmail.com', N'Calle 840, La Guardia, Santa Cruz, Bolivia', CAST(N'1999-11-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (203, N' Lisandro ', N'Arellano', N'Luna', N' lisandro arellano@gmail.com', N'Calle 853, El Puente, Santa Cruz, Bolivia', CAST(N'1982-02-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (204, N' Lorenzo ', N'Zavala', N'Montoya', N' lorenzo zavala@gmail.com', N'Calle 562, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1993-08-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (205, N' Lucas ', N'Cárdenas', N'Caballero', N' lucas cárdenas@gmail.com', N'Calle 12, El Puente, Santa Cruz, Bolivia', CAST(N'1999-05-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (206, N' Manuel ', N'Pacheco', N'Delgado', N' manuel pacheco@gmail.com', N'Calle 55, El Puente, Santa Cruz, Bolivia', CAST(N'1995-11-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (207, N' Mateo ', N'Villegas', N'Aguayo', N' mateo villegas@gmail.com', N'Calle 728, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1988-05-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (208, N' Pedro ', N'Pineda', N'Acuña', N' pedro pineda@gmail.com', N'Calle 190, Warnes, Santa Cruz, Bolivia', CAST(N'1974-02-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (209, N' Pío ', N'Carrasco', N'Fierro', N' pío carrasco@gmail.com', N'Calle 343, Warnes, Santa Cruz, Bolivia', CAST(N'1996-07-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (210, N' Romeo ', N'Robles', N'Beltrán', N' romeo robles@gmail.com', N'Calle 293, El Puente, Santa Cruz, Bolivia', CAST(N'1979-03-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (211, N' Roque ', N'Navarro', N'Bustamante', N' roque navarro@gmail.com', N'Calle 228, El Puente, Santa Cruz, Bolivia', CAST(N'1989-07-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (212, N' Rufino ', N'Escobar', N'Ochoa', N' rufino escobar@gmail.com', N'Calle 575, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1991-05-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (213, N' Santiago ', N'Palacios', N'Vega', N' santiago palacios@gmail.com', N'Calle 680, Portachuelo, Santa Cruz, Bolivia', CAST(N'1985-06-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (214, N' Salvador ', N'Valencia', N'Zúñiga', N' salvador valencia@gmail.com', N'Calle 453, Portachuelo, Santa Cruz, Bolivia', CAST(N'1986-10-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (215, N' Simón ', N'Espinosa', N'Alvarado', N' simón espinosa@gmail.com', N'Calle 626, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1976-05-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (216, N' Valentín ', N'Gálvez', N'Medina', N' valentín gálvez@gmail.com', N'Calle 653, Portachuelo, Santa Cruz, Bolivia', CAST(N'2000-11-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (217, N' Valentino ', N'Bautista', N'Bernal', N' valentino bautista@gmail.com', N'Calle 425, Warnes, Santa Cruz, Bolivia', CAST(N'1998-06-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (218, N' Vicente ', N'Luna', N'Miranda', N' vicente luna@gmail.com', N'Calle 609, Warnes, Santa Cruz, Bolivia', CAST(N'1987-02-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (219, N' Víctor ', N'Montoya', N'Durán', N' víctor montoya@gmail.com', N'Calle 660, Montero, Santa Cruz, Bolivia', CAST(N'1981-08-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (220, N' Abundio ', N'Caballero', N'Vega', N' abundio caballero@gmail.com', N'Calle 653, Montero, Santa Cruz, Bolivia', CAST(N'1976-11-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (221, N' Ambrosio', N'Delgado', N'Olvera', N' ambrosiodelgado@gmail.com', N'Calle 41, El Torno, Santa Cruz, Bolivia', CAST(N'1981-11-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (222, N' Aniceto ', N'Aguayo', N'Méndez', N' aniceto aguayo@gmail.com', N'Calle 378, Montero, Santa Cruz, Bolivia', CAST(N'1991-05-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (223, N' Anselmo ', N'Acuña', N'Quiroz', N' anselmo acuña@gmail.com', N'Calle 33, Montero, Santa Cruz, Bolivia', CAST(N'1986-07-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (224, N' Apolonio ', N'Fierro', N'Rivas', N' apolonio fierro@gmail.com', N'Calle 586, Warnes, Santa Cruz, Bolivia', CAST(N'1979-02-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (225, N' Aquilino ', N'Beltrán', N'Fuentes', N' aquilino beltrán@gmail.com', N'Calle 166, Montero, Santa Cruz, Bolivia', CAST(N'1984-07-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (226, N' Arsenio ', N'Bustamante', N'Reyes', N' arsenio bustamante@gmail.com', N'Calle 526, Portachuelo, Santa Cruz, Bolivia', CAST(N'2000-07-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (227, N' Atanasio ', N'Ochoa', N'Osorio', N' atanasio ochoa@gmail.com', N'Calle 91, El Torno, Santa Cruz, Bolivia', CAST(N'1979-08-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (228, N' Atilano ', N'Vega', N'Esquivel', N' atilano vega@gmail.com', N'Calle 972, Portachuelo, Santa Cruz, Bolivia', CAST(N'1976-01-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (229, N' Avelino ', N'Zúñiga', N'Márquez', N' avelino zúñiga@gmail.com', N'Calle 104, Warnes, Santa Cruz, Bolivia', CAST(N'1976-04-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (230, N' Bartolo ', N'Alvarado', N'Delgado', N' bartolo alvarado@gmail.com', N'Calle 220, El Torno, Santa Cruz, Bolivia', CAST(N'1989-06-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (231, N' Basilio ', N'Medina', N'Briones', N' basilio medina@gmail.com', N'Calle 866, El Puente, Santa Cruz, Bolivia', CAST(N'1995-10-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (232, N' Baudilio ', N'Bernal', N'Soria', N' baudilio bernal@gmail.com', N'Calle 594, Portachuelo, Santa Cruz, Bolivia', CAST(N'1979-04-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (233, N' Benigno ', N'Miranda', N'Nava', N' benigno miranda@gmail.com', N'Calle 629, El Torno, Santa Cruz, Bolivia', CAST(N'1998-05-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (234, N' Buenaventura ', N'Durán', N'García', N' buenaventura durán@gmail.com', N'Calle 494, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1992-05-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (235, N' Calixto', N'Vega', N'Granados', N' calixtovega@gmail.com', N'Calle 845, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1975-05-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (236, N' Celedonio ', N'Olvera', N'Magaña', N' celedonio olvera@gmail.com', N'Calle 511, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1983-08-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (237, N' Cirilo ', N'Méndez', N'Valdés', N' cirilo méndez@gmail.com', N'Calle 514, Portachuelo, Santa Cruz, Bolivia', CAST(N'1977-01-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (238, N' Clemente ', N'Quiroz', N'Ledezma', N' clemente quiroz@gmail.com', N'Calle 315, Warnes, Santa Cruz, Bolivia', CAST(N'1995-07-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (239, N' Conrado ', N'Rivas', N'Saucedo', N' conrado rivas@gmail.com', N'Calle 631, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1975-10-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (240, N' Crisóstomo ', N'Fuentes', N'Almanza', N' crisóstomo fuentes@gmail.com', N'Calle 736, Warnes, Santa Cruz, Bolivia', CAST(N'1981-11-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (241, N' Crispín ', N'Reyes', N'Favela', N' crispín reyes@gmail.com', N'Calle 913, La Guardia, Santa Cruz, Bolivia', CAST(N'1998-03-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (242, N' Críspulo ', N'Osorio', N'Leyva', N' críspulo osorio@gmail.com', N'Calle 780, El Puente, Santa Cruz, Bolivia', CAST(N'1995-10-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (243, N' Dionisio ', N'Esquivel', N'Aguirre', N' dionisio esquivel@gmail.com', N'Calle 361, El Torno, Santa Cruz, Bolivia', CAST(N'1990-09-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (244, N' Eliodoro ', N'Márquez', N'Madrigal', N' eliodoro márquez@gmail.com', N'Calle 71, Montero, Santa Cruz, Bolivia', CAST(N'1974-06-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (245, N' Eliseo ', N'Delgado', N'Carranza', N' eliseo delgado@gmail.com', N'Calle 288, Warnes, Santa Cruz, Bolivia', CAST(N'1983-07-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (246, N' Emerico ', N'Briones', N'Villarreal', N' emerico briones@gmail.com', N'Calle 430, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1991-10-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (247, N' Emeterio ', N'Soria', N'Aguilar', N' emeterio soria@gmail.com', N'Calle 901, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1995-05-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (248, N' Epifanio ', N'Nava', N'Tapia', N' epifanio nava@gmail.com', N'Calle 853, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1981-04-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (249, N' Eufrasio ', N'García', N'Hernández', N' eufrasio garcía@gmail.com', N'Calle 197, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1995-12-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (250, N' Eulogio ', N'Granados', N'Soria', N' eulogio granados@gmail.com', N'Calle 412, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1991-04-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (251, N' Feliciano ', N'Magaña', N'Cabral', N' feliciano magaña@gmail.com', N'Calle 391, Portachuelo, Santa Cruz, Bolivia', CAST(N'1991-03-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (252, N' Florencio ', N'Valdés', N'Cedillo', N' florencio valdés@gmail.com', N'Calle 273, Portachuelo, Santa Cruz, Bolivia', CAST(N'1988-03-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (253, N' Froilán ', N'Ledezma', N'Serrano', N' froilán ledezma@gmail.com', N'Calle 398, Montero, Santa Cruz, Bolivia', CAST(N'1986-08-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (254, N' Fructuoso ', N'Saucedo', N'Escamilla', N' fructuoso saucedo@gmail.com', N'Calle 140, Portachuelo, Santa Cruz, Bolivia', CAST(N'1975-07-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (255, N' Frutos ', N'Almanza', N'Salgado', N' frutos almanza@gmail.com', N'Calle 283, La Guardia, Santa Cruz, Bolivia', CAST(N'1987-12-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (256, N' Gregorio ', N'Favela', N'Mares', N' gregorio favela@gmail.com', N'Calle 699, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1997-01-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (257, N' Gumersindo ', N'Leyva', N'Castañeda', N' gumersindo leyva@gmail.com', N'Calle 599, Montero, Santa Cruz, Bolivia', CAST(N'1977-03-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (258, N' Hermenegildo ', N'Aguirre', N'Carrillo', N' hermenegildo aguirre@gmail.com', N'Calle 910, Portachuelo, Santa Cruz, Bolivia', CAST(N'1994-12-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (259, N' Herminio ', N'Madrigal', N'Figueroa', N' herminio madrigal@gmail.com', N'Calle 567, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1974-12-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (260, N' Higinio ', N'Carranza', N'Rangel', N' higinio carranza@gmail.com', N'Calle 824, Montero, Santa Cruz, Bolivia', CAST(N'1981-12-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (261, N' Hipólito ', N'Villarreal', N'Salinas', N' hipólito villarreal@gmail.com', N'Calle 576, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1990-11-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (262, N' Indalecio ', N'Aguilar', N'Delarosa', N' indalecio aguilar@gmail.com', N'Calle 576, La Guardia, Santa Cruz, Bolivia', CAST(N'1994-05-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (263, N' Isidoro ', N'Tapia', N'Armijo', N' isidoro tapia@gmail.com', N'Calle 890, El Torno, Santa Cruz, Bolivia', CAST(N'1983-07-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (264, N' Laureano ', N'Hernández', N'Alonzo', N' laureano hernández@gmail.com', N'Calle 2, Portachuelo, Santa Cruz, Bolivia', CAST(N'1992-04-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (265, N' Leandro ', N'Soria', N'Covarrubias', N' leandro soria@gmail.com', N'Calle 68, Portachuelo, Santa Cruz, Bolivia', CAST(N'1986-03-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (266, N' Leocadio ', N'Cabral', N'Valenzuela', N' leocadio cabral@gmail.com', N'Calle 879, Montero, Santa Cruz, Bolivia', CAST(N'1995-06-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (267, N' Leovigildo ', N'Cedillo', N'Verdugo', N' leovigildo cedillo@gmail.com', N'Calle 886, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1983-01-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (268, N' Lope ', N'Serrano', N'Sosa', N' lope serrano@gmail.com', N'Calle 469, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1979-09-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (269, N' Macario ', N'Escamilla', N'Zambrano', N' macario escamilla@gmail.com', N'Calle 896, La Guardia, Santa Cruz, Bolivia', CAST(N'1985-09-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (270, N' Melitón ', N'Salgado', N'García', N' melitón salgado@gmail.com', N'Calle 496, Warnes, Santa Cruz, Bolivia', CAST(N'1999-07-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (271, N' Nemesio ', N'Mares', N'Rodríguez', N' nemesio mares@gmail.com', N'Calle 571, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1996-10-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (272, N' Nicanor ', N'Castañeda', N'López', N' nicanor castañeda@gmail.com', N'Calle 729, El Puente, Santa Cruz, Bolivia', CAST(N'2000-06-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (273, N' Niceto ', N'Carrillo', N'Martínez', N' niceto carrillo@gmail.com', N'Calle 176, El Torno, Santa Cruz, Bolivia', CAST(N'1990-05-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (274, N' Nicomedes ', N'Figueroa', N'Pérez', N' nicomedes figueroa@gmail.com', N'Calle 901, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1995-05-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (275, N' Odón ', N'Rangel', N'Sánchez', N' odón rangel@gmail.com', N'Calle 868, El Puente, Santa Cruz, Bolivia', CAST(N'1996-08-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (276, N' Orencio ', N'Salinas', N'González', N' orencio salinas@gmail.com', N'Calle 663, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1988-10-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (277, N' Pantaleón ', N'Delarosa', N'Gómez', N' pantaleón delarosa@gmail.com', N'Calle 25, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1984-12-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (278, N' Patricio ', N'Armijo', N'Fernández', N' patricio armijo@gmail.com', N'Calle 783, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1997-06-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (279, N' Perfecto ', N'Alonzo', N'Díaz', N' perfecto alonzo@gmail.com', N'Calle 38, Montero, Santa Cruz, Bolivia', CAST(N'1984-07-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (280, N' Petronilo ', N'Covarrubias', N'Torres', N' petronilo covarrubias@gmail.com', N'Calle 265, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1976-02-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (281, N' Policarpo ', N'Valenzuela', N'Moreno', N' policarpo valenzuela@gmail.com', N'Calle 558, Portachuelo, Santa Cruz, Bolivia', CAST(N'1990-07-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (282, N' Polonio ', N'Verdugo', N'Ortiz', N' polonio verdugo@gmail.com', N'Calle 625, El Puente, Santa Cruz, Bolivia', CAST(N'1988-09-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (283, N' Prudencio ', N'Sosa', N'Ramos', N' prudencio sosa@gmail.com', N'Calle 757, Warnes, Santa Cruz, Bolivia', CAST(N'1990-09-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (284, N' Regino ', N'Zambrano', N'Ruiz', N' regino zambrano@gmail.com', N'Calle 796, La Guardia, Santa Cruz, Bolivia', CAST(N'1998-02-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (285, N' Remigio ', N'García', N'Vargas', N' remigio garcía@gmail.com', N'Calle 391, El Torno, Santa Cruz, Bolivia', CAST(N'1985-07-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (286, N' Rómulo ', N'Rodríguez', N'Flores', N' rómulo rodríguez@gmail.com', N'Calle 677, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1994-04-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (287, N' Ruperto ', N'López', N'Herrera', N' ruperto lópez@gmail.com', N'Calle 246, El Puente, Santa Cruz, Bolivia', CAST(N'1983-07-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (288, N' Sandalio ', N'Martínez', N'Castro', N' sandalio martínez@gmail.com', N'Calle 545, Warnes, Santa Cruz, Bolivia', CAST(N'1977-10-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (289, N' Serapio ', N'Pérez', N'Romero', N' serapio pérez@gmail.com', N'Calle 247, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'2000-08-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (290, N' Servando ', N'Sánchez', N'Gonzales', N' servando sánchez@gmail.com', N'Calle 982, El Puente, Santa Cruz, Bolivia', CAST(N'1983-12-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (291, N' Silvestre ', N'González', N'Aguilar', N' silvestre gonzález@gmail.com', N'Calle 864, El Puente, Santa Cruz, Bolivia', CAST(N'1995-05-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (292, N' Sinforoso ', N'Gómez', N'Mendoza', N' sinforoso gómez@gmail.com', N'Calle 130, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1975-03-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (293, N' Sofronio ', N'Fernández', N'Herrera', N' sofronio fernández@gmail.com', N'Calle 516, Portachuelo, Santa Cruz, Bolivia', CAST(N'1977-09-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (294, N' Telesforo ', N'Díaz', N'Espinoza', N' telesforo díaz@gmail.com', N'Calle 260, La Guardia, Santa Cruz, Bolivia', CAST(N'1979-06-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (295, N' Tiburcio ', N'Torres', N'Gutiérrez', N' tiburcio torres@gmail.com', N'Calle 871, Portachuelo, Santa Cruz, Bolivia', CAST(N'1983-05-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (296, N' Toribio ', N'Moreno', N'Reyes', N' toribio moreno@gmail.com', N'Calle 739, Portachuelo, Santa Cruz, Bolivia', CAST(N'1998-04-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (297, N' Ulpiano ', N'Ortiz', N'Valdez', N' ulpiano ortiz@gmail.com', N'Calle 468, El Puente, Santa Cruz, Bolivia', CAST(N'1992-11-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (298, N' Valeriano ', N'Ramos', N'Guzmán', N' valeriano ramos@gmail.com', N'Calle 223, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1979-04-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (299, N' Venancio ', N'Ruiz', N'Ramírez', N' venancio ruiz@gmail.com', N'Calle 291, Portachuelo, Santa Cruz, Bolivia', CAST(N'1982-05-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (300, N' Victoriano ', N'Vargas', N'Ríos', N' victoriano vargas@gmail.com', N'Calle 513, Montero, Santa Cruz, Bolivia', CAST(N'1993-10-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (301, N' Zoilo ', N'Flores', N'Chávez', N' zoilo flores@gmail.com', N'Calle 522, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1989-10-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (302, N' Abdón ', N'Herrera', N'García', N' abdón herrera@gmail.com', N'Calle 893, La Guardia, Santa Cruz, Bolivia', CAST(N'1999-06-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (303, N' Abilio ', N'Castro', N'Rodríguez', N' abilio castro@gmail.com', N'Calle 971, Portachuelo, Santa Cruz, Bolivia', CAST(N'1983-02-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (304, N' Acacio ', N'Romero', N'López', N' acacio romero@gmail.com', N'Calle 72, La Guardia, Santa Cruz, Bolivia', CAST(N'1992-10-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (305, N' Adalberto ', N'Gonzales', N'Martínez', N' adalberto gonzales@gmail.com', N'Calle 467, La Guardia, Santa Cruz, Bolivia', CAST(N'1996-10-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (306, N' Adolfo ', N'Aguilar', N'Pérez', N' adolfo aguilar@gmail.com', N'Calle 877, Montero, Santa Cruz, Bolivia', CAST(N'1997-03-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (307, N' Afrodisio ', N'Mendoza', N'Sánchez', N' afrodisio mendoza@gmail.com', N'Calle 107, Montero, Santa Cruz, Bolivia', CAST(N'1984-06-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (308, N' Ágabo ', N'Herrera', N'González', N' ágabo herrera@gmail.com', N'Calle 669, El Puente, Santa Cruz, Bolivia', CAST(N'1995-09-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (309, N' Albino ', N'Espinoza', N'Gómez', N' albino espinoza@gmail.com', N'Calle 97, Montero, Santa Cruz, Bolivia', CAST(N'1992-11-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (310, N' Alcibíades ', N'Gutiérrez', N'Fernández', N' alcibíades gutiérrez@gmail.com', N'Calle 282, El Puente, Santa Cruz, Bolivia', CAST(N'1984-03-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (311, N' Amalio ', N'Reyes', N'Díaz', N' amalio reyes@gmail.com', N'Calle 170, Portachuelo, Santa Cruz, Bolivia', CAST(N'1991-04-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (312, N' Amasvindo ', N'Valdez', N'Torres', N' amasvindo valdez@gmail.com', N'Calle 36, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1996-12-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (313, N' Amelio ', N'Guzmán', N'Moreno', N' amelio guzmán@gmail.com', N'Calle 58, Portachuelo, Santa Cruz, Bolivia', CAST(N'1993-11-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (314, N' Amonario ', N'Ramírez', N'Ortiz', N' amonario ramírez@gmail.com', N'Calle 981, Montero, Santa Cruz, Bolivia', CAST(N'1977-09-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (315, N' Antelmo ', N'Ríos', N'Ramos', N' antelmo ríos@gmail.com', N'Calle 405, Montero, Santa Cruz, Bolivia', CAST(N'1980-12-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (316, N' Antíoco ', N'Chávez', N'Ruiz', N' antíoco chávez@gmail.com', N'Calle 621, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1980-10-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (317, N' Antenor ', N'Morales', N'Vargas', N' antenor morales@gmail.com', N'Calle 883, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1985-08-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (318, N' Argimiro ', N'Núñez', N'Flores', N' argimiro núñez@gmail.com', N'Calle 251, Montero, Santa Cruz, Bolivia', CAST(N'1991-06-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (319, N' Darek ', N'Salazar', N'Herrera', N' darek salazar@gmail.com', N'Calle 498, La Guardia, Santa Cruz, Bolivia', CAST(N'1998-09-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (320, N' Enrique ', N'Rivera', N'Castro', N' enrique rivera@gmail.com', N'Calle 732, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1986-03-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (321, N' Osiel ', N'Castillo', N'Romero', N' osiel castillo@gmail.com', N'Calle 202, El Torno, Santa Cruz, Bolivia', CAST(N'1984-11-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (322, N' Samuel ', N'Jiménez', N'Gonzales', N' samuel jiménez@gmail.com', N'Calle 70, La Guardia, Santa Cruz, Bolivia', CAST(N'1995-07-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (323, N' Adán ', N'Vázquez', N'Aguilar', N' adán vázquez@gmail.com', N'Calle 540, Montero, Santa Cruz, Bolivia', CAST(N'1974-04-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (324, N' Azarías ', N'Fuentes', N'Mendoza', N' azarías fuentes@gmail.com', N'Calle 299, La Guardia, Santa Cruz, Bolivia', CAST(N'1992-08-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (325, N' Gabriel ', N'Medina', N'Herrera', N' gabriel medina@gmail.com', N'Calle 536, El Torno, Santa Cruz, Bolivia', CAST(N'1980-09-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (326, N' Kerr ', N'Cortez', N'Espinoza', N' kerr cortez@gmail.com', N'Calle 290, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1975-11-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (327, N' Oliphant ', N'Benítez', N'Gutiérrez', N' oliphant benítez@gmail.com', N'Calle 387, Portachuelo, Santa Cruz, Bolivia', CAST(N'1989-04-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (328, N' Uzziel ', N'Soto', N'Reyes', N' uzziel soto@gmail.com', N'Calle 904, Warnes, Santa Cruz, Bolivia', CAST(N'1976-10-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (329, N' Noé ', N'León', N'Valdez', N' noé león@gmail.com', N'Calle 507, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1982-12-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (330, N' Abel ', N'Gallegos', N'Guzmán', N' abel gallegos@gmail.com', N'Calle 751, El Torno, Santa Cruz, Bolivia', CAST(N'1999-02-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (331, N' Abihail ', N'Rosales', N'Ramírez', N' abihail rosales@gmail.com', N'Calle 19, Warnes, Santa Cruz, Bolivia', CAST(N'1979-05-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (332, N' A-ki-til ', N'Carrillo', N'Ríos', N' a-ki-til carrillo@gmail.com', N'Calle 32, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1999-03-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (333, N' Alcibíades ', N'Acosta', N'Chávez', N' alcibíades acosta@gmail.com', N'Calle 490, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1983-05-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (334, N' Azai ', N'Campos', N'Morales', N' azai campos@gmail.com', N'Calle 630, La Guardia, Santa Cruz, Bolivia', CAST(N'1980-12-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (335, N' Azubuike ', N'Duarte', N'Núñez', N' azubuike duarte@gmail.com', N'Calle 460, La Guardia, Santa Cruz, Bolivia', CAST(N'1997-04-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (336, N' Baladeva ', N'Miranda', N'Salazar', N' baladeva miranda@gmail.com', N'Calle 17, El Puente, Santa Cruz, Bolivia', CAST(N'1990-02-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (337, N' Booz ', N'Bravo', N'Rivera', N' booz bravo@gmail.com', N'Calle 164, La Guardia, Santa Cruz, Bolivia', CAST(N'1994-07-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (338, N' Bricio ', N'Meléndez', N'Castillo', N' bricio meléndez@gmail.com', N'Calle 950, La Guardia, Santa Cruz, Bolivia', CAST(N'1980-11-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (339, N' Emery ', N'Peña', N'Jiménez', N' emery peña@gmail.com', N'Calle 989, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1974-03-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (340, N' Everaldo ', N'Padilla', N'Vázquez', N' everaldo padilla@gmail.com', N'Calle 141, El Puente, Santa Cruz, Bolivia', CAST(N'1993-02-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (341, N' Fergal ', N'Cervantes', N'Fuentes', N' fergal cervantes@gmail.com', N'Calle 968, La Guardia, Santa Cruz, Bolivia', CAST(N'1987-08-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (342, N' Hipócrates ', N'Rangel', N'Medina', N' hipócrates rangel@gmail.com', N'Calle 976, Portachuelo, Santa Cruz, Bolivia', CAST(N'1977-03-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (343, N' Kon ', N'Tapia', N'Cortez', N' kon tapia@gmail.com', N'Calle 950, Warnes, Santa Cruz, Bolivia', CAST(N'1989-09-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (344, N' Jaaziel ', N'Solís', N'Benítez', N' jaaziel solís@gmail.com', N'Calle 383, El Puente, Santa Cruz, Bolivia', CAST(N'1975-03-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (345, N' Jaret ', N'Arellano', N'Soto', N' jaret arellano@gmail.com', N'Calle 690, Warnes, Santa Cruz, Bolivia', CAST(N'1997-07-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (346, N' Meginhard', N'Zavala', N'León', N' meginhardzavala@gmail.com', N'Calle 676, La Guardia, Santa Cruz, Bolivia', CAST(N'1986-05-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (347, N' Michio ', N'Cárdenas', N'Gallegos', N' michio cárdenas@gmail.com', N'Calle 132, El Torno, Santa Cruz, Bolivia', CAST(N'1981-09-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (348, N' Obélix ', N'Pacheco', N'Rosales', N' obélix pacheco@gmail.com', N'Calle 563, La Guardia, Santa Cruz, Bolivia', CAST(N'1990-06-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (349, N' Oier ', N'Villegas', N'Carrillo', N' oier villegas@gmail.com', N'Calle 830, Warnes, Santa Cruz, Bolivia', CAST(N'1980-12-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (350, N' Olegario ', N'Pineda', N'Acosta', N' olegario pineda@gmail.com', N'Calle 853, El Torno, Santa Cruz, Bolivia', CAST(N'1975-01-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (351, N' Otoniel ', N'Carrasco', N'Campos', N' otoniel carrasco@gmail.com', N'Calle 344, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1984-09-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (352, N' Ozías ', N'Robles', N'Duarte', N' ozías robles@gmail.com', N'Calle 920, Portachuelo, Santa Cruz, Bolivia', CAST(N'1981-10-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (353, N' Oziel ', N'Navarro', N'Miranda', N' oziel navarro@gmail.com', N'Calle 556, Warnes, Santa Cruz, Bolivia', CAST(N'1982-01-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (354, N' Qiang ', N'Escobar', N'Bravo', N' qiang escobar@gmail.com', N'Calle 850, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1997-04-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (355, N' Tyre ', N'Palacios', N'Meléndez', N' tyre palacios@gmail.com', N'Calle 908, Portachuelo, Santa Cruz, Bolivia', CAST(N'1976-08-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (356, N' Aubrey ', N'Valencia', N'Peña', N' aubrey valencia@gmail.com', N'Calle 831, La Guardia, Santa Cruz, Bolivia', CAST(N'1996-03-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (357, N' Chelem ', N'Espinosa', N'Padilla', N' chelem espinosa@gmail.com', N'Calle 851, Portachuelo, Santa Cruz, Bolivia', CAST(N'1995-04-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (358, N' Chinweike ', N'Gálvez', N'Cervantes', N' chinweike gálvez@gmail.com', N'Calle 279, La Guardia, Santa Cruz, Bolivia', CAST(N'1976-03-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (359, N' Iyad ', N'Bautista', N'Rangel', N' iyad bautista@gmail.com', N'Calle 529, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1988-05-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (360, N' Jigme ', N'Luna', N'Tapia', N' jigme luna@gmail.com', N'Calle 420, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1983-10-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (361, N' Kanda ', N'Montoya', N'Solís', N' kanda montoya@gmail.com', N'Calle 853, Warnes, Santa Cruz, Bolivia', CAST(N'1977-01-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (362, N' Meinardo ', N'Caballero', N'Arellano', N' meinardo caballero@gmail.com', N'Calle 986, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1993-11-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (363, N' Osvaldo ', N'Delgado', N'Zavala', N' osvaldo delgado@gmail.com', N'Calle 989, Montero, Santa Cruz, Bolivia', CAST(N'1992-01-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (364, N' Sócrates ', N'Aguayo', N'Cárdenas', N' sócrates aguayo@gmail.com', N'Calle 330, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1986-06-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (365, N' Thilo ', N'Acuña', N'Pacheco', N' thilo acuña@gmail.com', N'Calle 894, Montero, Santa Cruz, Bolivia', CAST(N'1976-02-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (366, N' Walter ', N'Fierro', N'Villegas', N' walter fierro@gmail.com', N'Calle 822, Warnes, Santa Cruz, Bolivia', CAST(N'1994-02-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (367, N' Armando ', N'Beltrán', N'Pineda', N' armando beltrán@gmail.com', N'Calle 766, Portachuelo, Santa Cruz, Bolivia', CAST(N'1981-06-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (368, N' Hariman ', N'Bustamante', N'Carrasco', N' hariman bustamante@gmail.com', N'Calle 317, El Puente, Santa Cruz, Bolivia', CAST(N'1974-06-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (369, N' Fynn ', N'Ochoa', N'Robles', N' fynn ochoa@gmail.com', N'Calle 458, El Torno, Santa Cruz, Bolivia', CAST(N'1996-08-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (370, N' Ricardo ', N'Vega', N'Navarro', N' ricardo vega@gmail.com', N'Calle 113, El Torno, Santa Cruz, Bolivia', CAST(N'1983-07-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (371, N' Bernardo ', N'Zúñiga', N'Escobar', N' bernardo zúñiga@gmail.com', N'Calle 421, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1992-07-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (372, N' Duncan ', N'Alvarado', N'Palacios', N' duncan alvarado@gmail.com', N'Calle 17, Montero, Santa Cruz, Bolivia', CAST(N'1988-11-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (373, N' Gunther ', N'Medina', N'Valencia', N' gunther medina@gmail.com', N'Calle 411, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1980-09-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (374, N' Leo ', N'Bernal', N'Espinosa', N' leo bernal@gmail.com', N'Calle 263, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1993-04-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (375, N' Olegario ', N'Miranda', N'Gálvez', N' olegario miranda@gmail.com', N'Calle 253, El Torno, Santa Cruz, Bolivia', CAST(N'1987-07-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (376, N' Odín ', N'Durán', N'Bautista', N' odín durán@gmail.com', N'Calle 564, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1989-03-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (377, N' Ivar ', N'Vega', N'Luna', N' ivar vega@gmail.com', N'Calle 850, Montero, Santa Cruz, Bolivia', CAST(N'1987-08-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (378, N' Archie ', N'Olvera', N'Montoya', N' archie olvera@gmail.com', N'Calle 637, El Puente, Santa Cruz, Bolivia', CAST(N'1996-11-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (379, N' Alejandro ', N'Méndez', N'Caballero', N' alejandro méndez@gmail.com', N'Calle 525, El Torno, Santa Cruz, Bolivia', CAST(N'1974-06-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (380, N' Gerardo ', N'Quiroz', N'Delgado', N' gerardo quiroz@gmail.com', N'Calle 603, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1993-01-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (381, N' Humberto ', N'Rivas', N'Aguayo', N' humberto rivas@gmail.com', N'Calle 539, El Puente, Santa Cruz, Bolivia', CAST(N'1996-01-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (382, N' Alan ', N'Fuentes', N'Acuña', N' alan fuentes@gmail.com', N'Calle 558, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1981-10-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (383, N' Alano ', N'Reyes', N'Fierro', N' alano reyes@gmail.com', N'Calle 665, La Guardia, Santa Cruz, Bolivia', CAST(N'1981-12-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (384, N' Albano ', N'Osorio', N'Beltrán', N' albano osorio@gmail.com', N'Calle 34, Montero, Santa Cruz, Bolivia', CAST(N'1986-01-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (385, N' Aldahir', N'Esquivel', N'Bustamante', N' aldahiresquivel@gmail.com', N'Calle 378, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1999-12-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (386, N' Allen ', N'Márquez', N'Ochoa', N' allen márquez@gmail.com', N'Calle 58, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1979-05-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (387, N' Alucio ', N'Delgado', N'Vega', N' alucio delgado@gmail.com', N'Calle 851, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1981-07-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (388, N' Ambiórix ', N'Briones', N'Zúñiga', N' ambiórix briones@gmail.com', N'Calle 518, El Torno, Santa Cruz, Bolivia', CAST(N'1993-07-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (389, N' Arlen ', N'Soria', N'Alvarado', N' arlen soria@gmail.com', N'Calle 650, El Torno, Santa Cruz, Bolivia', CAST(N'1976-07-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (390, N' Artai ', N'Nava', N'Medina', N' artai nava@gmail.com', N'Calle 386, Montero, Santa Cruz, Bolivia', CAST(N'1977-12-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (391, N' Arturo ', N'García', N'Bernal', N' arturo garcía@gmail.com', N'Calle 959, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1987-01-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (392, N' Artús ', N'Granados', N'Miranda', N' artús granados@gmail.com', N'Calle 392, El Torno, Santa Cruz, Bolivia', CAST(N'1994-09-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (393, N' Avon ', N'Magaña', N'Durán', N' avon magaña@gmail.com', N'Calle 935, Portachuelo, Santa Cruz, Bolivia', CAST(N'1980-05-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (394, N' Bardo ', N'Valdés', N'Vega', N' bardo valdés@gmail.com', N'Calle 253, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1986-02-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (395, N' Belenos', N'Ledezma', N'Olvera', N' belenosledezma@gmail.com', N'Calle 821, El Puente, Santa Cruz, Bolivia', CAST(N'2000-08-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (396, N' Belenus ', N'Saucedo', N'Méndez', N' belenus saucedo@gmail.com', N'Calle 230, El Puente, Santa Cruz, Bolivia', CAST(N'1998-12-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (397, N' Beloveso ', N'Almanza', N'Quiroz', N' beloveso almanza@gmail.com', N'Calle 8, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1985-01-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (398, N' Brayan ', N'Favela', N'Rivas', N' brayan favela@gmail.com', N'Calle 786, El Puente, Santa Cruz, Bolivia', CAST(N'1986-09-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (399, N' Brian ', N'Leyva', N'Fuentes', N' brian leyva@gmail.com', N'Calle 139, Warnes, Santa Cruz, Bolivia', CAST(N'1997-09-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (400, N' Brenan ', N'Aguirre', N'Reyes', N' brenan aguirre@gmail.com', N'Calle 863, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1990-09-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (401, N' Brent ', N'Madrigal', N'Osorio', N' brent madrigal@gmail.com', N'Calle 15, El Puente, Santa Cruz, Bolivia', CAST(N'1995-07-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (402, N' Breogán ', N'Carranza', N'Esquivel', N' breogán carranza@gmail.com', N'Calle 63, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1973-10-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (403, N' Briccio ', N'Villarreal', N'Márquez', N' briccio villarreal@gmail.com', N'Calle 89, El Torno, Santa Cruz, Bolivia', CAST(N'1977-07-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (404, N' Carataco ', N'Aguilar', N'Delgado', N' carataco aguilar@gmail.com', N'Calle 851, La Guardia, Santa Cruz, Bolivia', CAST(N'1997-09-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (405, N' Casey ', N'Tapia', N'Briones', N' casey tapia@gmail.com', N'Calle 798, El Torno, Santa Cruz, Bolivia', CAST(N'2000-03-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (406, N' Cearbhall ', N'Hernández', N'Soria', N' cearbhall hernández@gmail.com', N'Calle 484, La Guardia, Santa Cruz, Bolivia', CAST(N'1986-09-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (407, N' Cedrick ', N'Soria', N'Nava', N' cedrick soria@gmail.com', N'Calle 41, Portachuelo, Santa Cruz, Bolivia', CAST(N'1982-06-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (408, N' Sedrik ', N'Cabral', N'García', N' sedrik cabral@gmail.com', N'Calle 205, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1985-11-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (409, N' Cernunnos ', N'Cedillo', N'Granados', N' cernunnos cedillo@gmail.com', N'Calle 826, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1974-12-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (410, N' Cuchulain ', N'Serrano', N'Magaña', N' cuchulain serrano@gmail.com', N'Calle 348, El Puente, Santa Cruz, Bolivia', CAST(N'1984-01-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (411, N' Dagda ', N'Escamilla', N'Valdés', N' dagda escamilla@gmail.com', N'Calle 31, El Torno, Santa Cruz, Bolivia', CAST(N'1975-06-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (412, N' Dailin ', N'Salgado', N'Ledezma', N' dailin salgado@gmail.com', N'Calle 717, Montero, Santa Cruz, Bolivia', CAST(N'1996-12-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (413, N' Daly ', N'Mares', N'Saucedo', N' daly mares@gmail.com', N'Calle 580, El Puente, Santa Cruz, Bolivia', CAST(N'1996-11-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (414, N' Declan ', N'Castañeda', N'Almanza', N' declan castañeda@gmail.com', N'Calle 545, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1981-01-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (415, N' Dilan ', N'Carrillo', N'Favela', N' dilan carrillo@gmail.com', N'Calle 794, Portachuelo, Santa Cruz, Bolivia', CAST(N'1986-12-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (416, N' Diviciaco ', N'Figueroa', N'Leyva', N' diviciaco figueroa@gmail.com', N'Calle 796, Montero, Santa Cruz, Bolivia', CAST(N'1992-01-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (417, N' Donaldo ', N'Rangel', N'Aguirre', N' donaldo rangel@gmail.com', N'Calle 652, La Guardia, Santa Cruz, Bolivia', CAST(N'1993-12-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (418, N' Donardo ', N'Salinas', N'Madrigal', N' donardo salinas@gmail.com', N'Calle 284, El Torno, Santa Cruz, Bolivia', CAST(N'1983-02-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (419, N' Douglas ', N'Delarosa', N'Carranza', N' douglas delarosa@gmail.com', N'Calle 810, Warnes, Santa Cruz, Bolivia', CAST(N'1987-10-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (420, N' Druso ', N'Armijo', N'Villarreal', N' druso armijo@gmail.com', N'Calle 593, Montero, Santa Cruz, Bolivia', CAST(N'1990-07-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (421, N' Dugan ', N'Alonzo', N'Aguilar', N' dugan alonzo@gmail.com', N'Calle 691, La Guardia, Santa Cruz, Bolivia', CAST(N'1978-04-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (422, N' Eamon', N'Covarrubias', N'Tapia', N' eamoncovarrubias@gmail.com', N'Calle 55, El Puente, Santa Cruz, Bolivia', CAST(N'1992-12-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (423, N' Eirian ', N'Valenzuela', N'Hernández', N' eirian valenzuela@gmail.com', N'Calle 38, Warnes, Santa Cruz, Bolivia', CAST(N'1985-10-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (424, N' Elbio ', N'Verdugo', N'Soria', N' elbio verdugo@gmail.com', N'Calle 15, La Guardia, Santa Cruz, Bolivia', CAST(N'1980-06-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (425, N' Erwin ', N'Sosa', N'Cabral', N' erwin sosa@gmail.com', N'Calle 201, Montero, Santa Cruz, Bolivia', CAST(N'1974-01-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (426, N' Esus ', N'Zambrano', N'Cedillo', N' esus zambrano@gmail.com', N'Calle 534, La Guardia, Santa Cruz, Bolivia', CAST(N'1986-01-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (427, N' Fergie ', N'García', N'Serrano', N' fergie garcía@gmail.com', N'Calle 511, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1984-10-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (428, N' Finn ', N'Rodríguez', N'Escamilla', N' finn rodríguez@gmail.com', N'Calle 236, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1983-01-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (429, N' Flocelo ', N'López', N'Salgado', N' flocelo lópez@gmail.com', N'Calle 684, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1997-12-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (430, N' Floyd ', N'Martínez', N'Mares', N' floyd martínez@gmail.com', N'Calle 118, Portachuelo, Santa Cruz, Bolivia', CAST(N'1988-03-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (431, N' Gaela ', N'Pérez', N'Castañeda', N' gaela pérez@gmail.com', N'Calle 60, Portachuelo, Santa Cruz, Bolivia', CAST(N'1989-02-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (432, N' Gallagher ', N'Sánchez', N'Carrillo', N' gallagher sánchez@gmail.com', N'Calle 191, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1988-11-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (433, N' Galván ', N'González', N'Figueroa', N' galván gonzález@gmail.com', N'Calle 811, La Guardia, Santa Cruz, Bolivia', CAST(N'1974-11-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (434, N' Gannicus ', N'Gómez', N'Rangel', N' gannicus gómez@gmail.com', N'Calle 522, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1977-03-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (435, N' Garnik ', N'Fernández', N'Salinas', N' garnik fernández@gmail.com', N'Calle 491, La Guardia, Santa Cruz, Bolivia', CAST(N'1977-09-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (436, N' Glen ', N'Díaz', N'Delarosa', N' glen díaz@gmail.com', N'Calle 207, El Puente, Santa Cruz, Bolivia', CAST(N'1992-08-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (437, N' Gordon ', N'Torres', N'Armijo', N' gordon torres@gmail.com', N'Calle 315, El Torno, Santa Cruz, Bolivia', CAST(N'1993-10-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (438, N' Gwyddyon ', N'Moreno', N'Alonzo', N' gwyddyon moreno@gmail.com', N'Calle 52, Montero, Santa Cruz, Bolivia', CAST(N'1988-12-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (439, N' Hervé ', N'Ortiz', N'Covarrubias', N' hervé ortiz@gmail.com', N'Calle 179, Montero, Santa Cruz, Bolivia', CAST(N'1974-01-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (440, N' Idris ', N'Ramos', N'Valenzuela', N' idris ramos@gmail.com', N'Calle 106, El Puente, Santa Cruz, Bolivia', CAST(N'1992-05-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (441, N' Íñigo ', N'Ruiz', N'Verdugo', N' íñigo ruiz@gmail.com', N'Calle 488, Portachuelo, Santa Cruz, Bolivia', CAST(N'1977-02-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (442, N' Kalen ', N'Vargas', N'Sosa', N' kalen vargas@gmail.com', N'Calle 874, Portachuelo, Santa Cruz, Bolivia', CAST(N'1991-04-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (443, N' Kellan ', N'Flores', N'Zambrano', N' kellan flores@gmail.com', N'Calle 966, La Guardia, Santa Cruz, Bolivia', CAST(N'1974-01-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (444, N' Kelvin ', N'Herrera', N'García', N' kelvin herrera@gmail.com', N'Calle 227, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1982-08-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (445, N' Kendall ', N'Castro', N'Rodríguez', N' kendall castro@gmail.com', N'Calle 227, Montero, Santa Cruz, Bolivia', CAST(N'1997-09-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (446, N' Kenneth ', N'Romero', N'López', N' kenneth romero@gmail.com', N'Calle 550, Warnes, Santa Cruz, Bolivia', CAST(N'1986-06-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (447, N' Kenny ', N'Gonzales', N'Martínez', N' kenny gonzales@gmail.com', N'Calle 635, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1994-12-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (448, N' Kerman ', N'Aguilar', N'Pérez', N' kerman aguilar@gmail.com', N'Calle 899, El Torno, Santa Cruz, Bolivia', CAST(N'1981-06-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (449, N' Kevin ', N'Mendoza', N'Sánchez', N' kevin mendoza@gmail.com', N'Calle 577, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1974-03-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (450, N' Kilian ', N'Herrera', N'González', N' kilian herrera@gmail.com', N'Calle 63, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1993-08-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (451, N' Lennox ', N'Espinoza', N'Gómez', N' lennox espinoza@gmail.com', N'Calle 437, El Torno, Santa Cruz, Bolivia', CAST(N'1978-04-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (452, N' Lug ', N'Gutiérrez', N'Fernández', N' lug gutiérrez@gmail.com', N'Calle 512, Portachuelo, Santa Cruz, Bolivia', CAST(N'1994-12-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (453, N' Maddox ', N'Reyes', N'Díaz', N' maddox reyes@gmail.com', N'Calle 354, El Puente, Santa Cruz, Bolivia', CAST(N'1990-12-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (454, N' Mael ', N'Valdez', N'Torres', N' mael valdez@gmail.com', N'Calle 852, La Guardia, Santa Cruz, Bolivia', CAST(N'1997-12-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (455, N' Manannan ', N'Guzmán', N'Moreno', N' manannan guzmán@gmail.com', N'Calle 462, Montero, Santa Cruz, Bolivia', CAST(N'1980-07-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (456, N' Marvin ', N'Ramírez', N'Ortiz', N' marvin ramírez@gmail.com', N'Calle 628, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1980-11-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (457, N' Melvin ', N'Ríos', N'Ramos', N' melvin ríos@gmail.com', N'Calle 650, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1978-06-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (458, N' Merlín ', N'Chávez', N'Ruiz', N' merlín chávez@gmail.com', N'Calle 849, Portachuelo, Santa Cruz, Bolivia', CAST(N'1976-08-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (459, N' Morgan ', N'Morales', N'Vargas', N' morgan morales@gmail.com', N'Calle 938, El Puente, Santa Cruz, Bolivia', CAST(N'1984-07-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (460, N' Neil ', N'Núñez', N'Flores', N' neil núñez@gmail.com', N'Calle 702, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1998-07-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (461, N' Niall ', N'Salazar', N'Herrera', N' niall salazar@gmail.com', N'Calle 341, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1995-07-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (462, N' Nelson ', N'Rivera', N'Castro', N' nelson rivera@gmail.com', N'Calle 37, El Torno, Santa Cruz, Bolivia', CAST(N'1983-08-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (463, N' Nuada ', N'Castillo', N'Romero', N' nuada castillo@gmail.com', N'Calle 471, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1999-09-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (464, N' Ogmios ', N'Jiménez', N'Gonzales', N' ogmios jiménez@gmail.com', N'Calle 791, El Puente, Santa Cruz, Bolivia', CAST(N'1975-05-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (465, N' Óscar ', N'Vázquez', N'Aguilar', N' óscar vázquez@gmail.com', N'Calle 184, Warnes, Santa Cruz, Bolivia', CAST(N'1984-06-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (466, N' Ossian ', N'Fuentes', N'Mendoza', N' ossian fuentes@gmail.com', N'Calle 384, Portachuelo, Santa Cruz, Bolivia', CAST(N'1993-05-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (467, N' Owen ', N'Medina', N'Herrera', N' owen medina@gmail.com', N'Calle 204, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1999-05-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (468, N' Quillan ', N'Cortez', N'Espinoza', N' quillan cortez@gmail.com', N'Calle 876, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1981-11-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (469, N' Quinn ', N'Benítez', N'Gutiérrez', N' quinn benítez@gmail.com', N'Calle 81, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1982-07-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (470, N' Rafferty ', N'Soto', N'Reyes', N' rafferty soto@gmail.com', N'Calle 661, El Torno, Santa Cruz, Bolivia', CAST(N'1973-12-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (471, N' Ronan ', N'León', N'Valdez', N' ronan león@gmail.com', N'Calle 598, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1984-05-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (472, N' Sayer ', N'Gallegos', N'Guzmán', N' sayer gallegos@gmail.com', N'Calle 648, Montero, Santa Cruz, Bolivia', CAST(N'1987-02-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (473, N' Serbal ', N'Rosales', N'Ramírez', N' serbal rosales@gmail.com', N'Calle 987, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1983-02-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (474, N' Sucellos ', N'Carrillo', N'Ríos', N' sucellos carrillo@gmail.com', N'Calle 614, La Guardia, Santa Cruz, Bolivia', CAST(N'1985-03-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (475, N' Taranis ', N'Acosta', N'Chávez', N' taranis acosta@gmail.com', N'Calle 822, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1979-09-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (476, N' Tristán ', N'Campos', N'Morales', N' tristán campos@gmail.com', N'Calle 241, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1985-08-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (477, N' Viriato ', N'Duarte', N'Núñez', N' viriato duarte@gmail.com', N'Calle 84, Warnes, Santa Cruz, Bolivia', CAST(N'1975-07-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (478, N' Vicente ', N'Miranda', N'Salazar', N' vicente miranda@gmail.com', N'Calle 162, Montero, Santa Cruz, Bolivia', CAST(N'1989-08-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (479, N' Rodrigo ', N'Bravo', N'Rivera', N' rodrigo bravo@gmail.com', N'Calle 122, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1982-08-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (480, N' Marcos ', N'Meléndez', N'Castillo', N' marcos meléndez@gmail.com', N'Calle 988, Portachuelo, Santa Cruz, Bolivia', CAST(N'1989-03-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (481, N' Fernando ', N'Peña', N'Jiménez', N' fernando peña@gmail.com', N'Calle 271, El Puente, Santa Cruz, Bolivia', CAST(N'1981-01-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (482, N' Roberto ', N'Padilla', N'Vázquez', N' roberto padilla@gmail.com', N'Calle 741, Montero, Santa Cruz, Bolivia', CAST(N'1989-03-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (483, N' Carlos ', N'Cervantes', N'Fuentes', N' carlos cervantes@gmail.com', N'Calle 737, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1974-05-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (484, N' Raúl ', N'Rangel', N'Medina', N' raúl rangel@gmail.com', N'Calle 177, Portachuelo, Santa Cruz, Bolivia', CAST(N'1996-10-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (485, N' Marcelo ', N'Tapia', N'Cortez', N' marcelo tapia@gmail.com', N'Calle 697, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1980-05-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (486, N' Fermín ', N'Solís', N'Benítez', N' fermín solís@gmail.com', N'Calle 191, La Guardia, Santa Cruz, Bolivia', CAST(N'1979-06-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (487, N' César ', N'Arellano', N'Soto', N' césar arellano@gmail.com', N'Calle 788, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1997-11-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (488, N' Ernesto ', N'Zavala', N'León', N' ernesto zavala@gmail.com', N'Calle 47, Warnes, Santa Cruz, Bolivia', CAST(N'1988-04-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (489, N' Alexander ', N'Cárdenas', N'Gallegos', N' alexander cárdenas@gmail.com', N'Calle 918, El Puente, Santa Cruz, Bolivia', CAST(N'1982-04-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (490, N' Mateo ', N'Pacheco', N'Rosales', N' mateo pacheco@gmail.com', N'Calle 983, El Torno, Santa Cruz, Bolivia', CAST(N'1975-12-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (491, N' Daniel ', N'Villegas', N'Carrillo', N' daniel villegas@gmail.com', N'Calle 608, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1992-09-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (492, N' Pablo ', N'Pineda', N'Acosta', N' pablo pineda@gmail.com', N'Calle 79, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1975-04-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (493, N' Álvaro ', N'Carrasco', N'Campos', N' álvaro carrasco@gmail.com', N'Calle 818, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1996-11-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (494, N' Adrián ', N'Robles', N'Duarte', N' adrián robles@gmail.com', N'Calle 374, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1977-05-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (495, N' David ', N'Navarro', N'Miranda', N' david navarro@gmail.com', N'Calle 824, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1977-12-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (496, N' Diego ', N'Escobar', N'Bravo', N' diego escobar@gmail.com', N'Calle 433, El Torno, Santa Cruz, Bolivia', CAST(N'1975-08-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (497, N' Javier ', N'Palacios', N'Meléndez', N' javier palacios@gmail.com', N'Calle 782, La Guardia, Santa Cruz, Bolivia', CAST(N'1994-10-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (498, N' Mario ', N'Valencia', N'Peña', N' mario valencia@gmail.com', N'Calle 958, Portachuelo, Santa Cruz, Bolivia', CAST(N'1989-05-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (499, N' Sergio ', N'Espinosa', N'Padilla', N' sergio espinosa@gmail.com', N'Calle 613, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1998-08-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (500, N' Marcos ', N'Gálvez', N'Cervantes', N' marcos gálvez@gmail.com', N'Calle 51, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1973-10-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (501, N' Manuel ', N'Bautista', N'Rangel', N' manuel bautista@gmail.com', N'Calle 733, El Torno, Santa Cruz, Bolivia', CAST(N'1978-08-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (502, N' Martín ', N'Luna', N'Tapia', N' martín luna@gmail.com', N'Calle 666, El Puente, Santa Cruz, Bolivia', CAST(N'1998-04-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (503, N' Jorge ', N'Montoya', N'Solís', N' jorge montoya@gmail.com', N'Calle 519, Portachuelo, Santa Cruz, Bolivia', CAST(N'1978-06-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (504, N' Iván ', N'Caballero', N'Arellano', N' iván caballero@gmail.com', N'Calle 979, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1985-08-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (505, N' Carlos ', N'Delgado', N'Zavala', N' carlos delgado@gmail.com', N'Calle 59, El Torno, Santa Cruz, Bolivia', CAST(N'1991-03-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (506, N' Miguel ', N'Aguayo', N'Cárdenas', N' miguel aguayo@gmail.com', N'Calle 602, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1991-01-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (507, N' Lucas ', N'Acuña', N'Pacheco', N' lucas acuña@gmail.com', N'Calle 871, Portachuelo, Santa Cruz, Bolivia', CAST(N'1985-08-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (508, N' Santiago ', N'Fierro', N'Villegas', N' santiago fierro@gmail.com', N'Calle 934, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1989-03-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (509, N' Matías ', N'Beltrán', N'Pineda', N' matías beltrán@gmail.com', N'Calle 427, Warnes, Santa Cruz, Bolivia', CAST(N'1996-01-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (510, N' Ángel ', N'Bustamante', N'Carrasco', N' ángel bustamante@gmail.com', N'Calle 614, Warnes, Santa Cruz, Bolivia', CAST(N'1991-11-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (511, N' Gabriel ', N'Ochoa', N'Robles', N' gabriel ochoa@gmail.com', N'Calle 903, El Torno, Santa Cruz, Bolivia', CAST(N'1975-02-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (512, N' Simón ', N'Vega', N'Navarro', N' simón vega@gmail.com', N'Calle 970, Portachuelo, Santa Cruz, Bolivia', CAST(N'1984-12-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (513, N' Thiago ', N'Zúñiga', N'Escobar', N' thiago zúñiga@gmail.com', N'Calle 964, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1993-08-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (514, N' Valentín ', N'Alvarado', N'Palacios', N' valentín alvarado@gmail.com', N'Calle 44, Portachuelo, Santa Cruz, Bolivia', CAST(N'1974-06-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (515, N' Julián ', N'Medina', N'Valencia', N' julián medina@gmail.com', N'Calle 774, La Guardia, Santa Cruz, Bolivia', CAST(N'1992-04-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (516, N' Benjamín ', N'Bernal', N'Espinosa', N' benjamín bernal@gmail.com', N'Calle 6, Portachuelo, Santa Cruz, Bolivia', CAST(N'1997-01-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (517, N' Erick ', N'Miranda', N'Gálvez', N' erick miranda@gmail.com', N'Calle 605, Montero, Santa Cruz, Bolivia', CAST(N'1988-06-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (518, N' Sasha ', N'Durán', N'Bautista', N' sasha durán@gmail.com', N'Calle 119, La Guardia, Santa Cruz, Bolivia', CAST(N'1991-02-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (519, N' Dante ', N'Vega', N'Luna', N' dante vega@gmail.com', N'Calle 499, Montero, Santa Cruz, Bolivia', CAST(N'1988-01-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (520, N' Enzo ', N'Olvera', N'Montoya', N' enzo olvera@gmail.com', N'Calle 5, El Puente, Santa Cruz, Bolivia', CAST(N'1976-11-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (521, N' Silas ', N'Méndez', N'Caballero', N' silas méndez@gmail.com', N'Calle 714, La Guardia, Santa Cruz, Bolivia', CAST(N'2001-01-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (522, N' Marco ', N'Quiroz', N'Delgado', N' marco quiroz@gmail.com', N'Calle 353, Warnes, Santa Cruz, Bolivia', CAST(N'1974-07-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (523, N' Andrea ', N'Rivas', N'Aguayo', N' andrea rivas@gmail.com', N'Calle 580, El Torno, Santa Cruz, Bolivia', CAST(N'1987-07-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (524, N' Ariel ', N'Fuentes', N'Acuña', N' ariel fuentes@gmail.com', N'Calle 751, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1982-12-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (525, N' Orfeo ', N'Reyes', N'Fierro', N' orfeo reyes@gmail.com', N'Calle 559, El Torno, Santa Cruz, Bolivia', CAST(N'1984-03-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (526, N' Jasón ', N'Osorio', N'Beltrán', N' jasón osorio@gmail.com', N'Calle 449, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1989-02-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (527, N' Héctor', N'Esquivel', N'Bustamante', N' héctoresquivel@gmail.com', N'Calle 834, La Guardia, Santa Cruz, Bolivia', CAST(N'1995-12-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (528, N' Aquiles ', N'Márquez', N'Ochoa', N' aquiles márquez@gmail.com', N'Calle 927, El Torno, Santa Cruz, Bolivia', CAST(N'1981-10-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (529, N' Adonis ', N'Delgado', N'Vega', N' adonis delgado@gmail.com', N'Calle 113, La Guardia, Santa Cruz, Bolivia', CAST(N'1979-06-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (530, N' Apolo ', N'Briones', N'Zúñiga', N' apolo briones@gmail.com', N'Calle 786, La Guardia, Santa Cruz, Bolivia', CAST(N'2000-03-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (531, N' Dionisio ', N'Soria', N'Alvarado', N' dionisio soria@gmail.com', N'Calle 712, Portachuelo, Santa Cruz, Bolivia', CAST(N'1994-04-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (532, N' Ulises ', N'Nava', N'Medina', N' ulises nava@gmail.com', N'Calle 775, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1997-04-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (533, N' Hércules ', N'García', N'Bernal', N' hércules garcía@gmail.com', N'Calle 600, Montero, Santa Cruz, Bolivia', CAST(N'1981-08-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (534, N' Hipólito ', N'Granados', N'Miranda', N' hipólito granados@gmail.com', N'Calle 198, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1979-11-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (535, N' Tristán ', N'Magaña', N'Durán', N' tristán magaña@gmail.com', N'Calle 626, Warnes, Santa Cruz, Bolivia', CAST(N'1997-02-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (536, N' Zeus ', N'Valdés', N'Vega', N' zeus valdés@gmail.com', N'Calle 402, Warnes, Santa Cruz, Bolivia', CAST(N'1990-12-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (537, N' Adal ', N'Ledezma', N'Olvera', N' adal ledezma@gmail.com', N'Calle 745, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1995-05-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (538, N' Adel ', N'Saucedo', N'Méndez', N' adel saucedo@gmail.com', N'Calle 701, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1985-06-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (539, N' Adriel', N'Almanza', N'Quiroz', N' adrielalmanza@gmail.com', N'Calle 258, Warnes, Santa Cruz, Bolivia', CAST(N'1990-06-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (540, N' Alonso ', N'Favela', N'Rivas', N' alonso favela@gmail.com', N'Calle 47, Warnes, Santa Cruz, Bolivia', CAST(N'1977-08-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (541, N' Amaru ', N'Leyva', N'Fuentes', N' amaru leyva@gmail.com', N'Calle 462, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1985-03-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (542, N' Asher ', N'Aguirre', N'Reyes', N' asher aguirre@gmail.com', N'Calle 338, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1977-11-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (543, N' Azai ', N'Madrigal', N'Osorio', N' azai madrigal@gmail.com', N'Calle 132, La Guardia, Santa Cruz, Bolivia', CAST(N'1989-07-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (544, N' Basil ', N'Carranza', N'Esquivel', N' basil carranza@gmail.com', N'Calle 312, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1985-05-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (545, N' Bastian ', N'Villarreal', N'Márquez', N' bastian villarreal@gmail.com', N'Calle 97, Montero, Santa Cruz, Bolivia', CAST(N'1996-10-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (546, N' Ciro ', N'Aguilar', N'Delgado', N' ciro aguilar@gmail.com', N'Calle 932, El Torno, Santa Cruz, Bolivia', CAST(N'1995-03-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (547, N' Corban ', N'Tapia', N'Briones', N' corban tapia@gmail.com', N'Calle 583, El Torno, Santa Cruz, Bolivia', CAST(N'1988-03-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (548, N' Dáire ', N'Hernández', N'Soria', N' dáire hernández@gmail.com', N'Calle 230, Montero, Santa Cruz, Bolivia', CAST(N'1993-07-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (549, N' Dante ', N'Soria', N'Nava', N' dante soria@gmail.com', N'Calle 223, Warnes, Santa Cruz, Bolivia', CAST(N'1980-09-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (550, N' Dorian ', N'Cabral', N'García', N' dorian cabral@gmail.com', N'Calle 774, Portachuelo, Santa Cruz, Bolivia', CAST(N'1995-02-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (551, N' Duncan ', N'Cedillo', N'Granados', N' duncan cedillo@gmail.com', N'Calle 904, El Torno, Santa Cruz, Bolivia', CAST(N'1976-10-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (552, N' Egan ', N'Serrano', N'Magaña', N' egan serrano@gmail.com', N'Calle 771, El Puente, Santa Cruz, Bolivia', CAST(N'1994-04-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (553, N' Einar ', N'Escamilla', N'Valdés', N' einar escamilla@gmail.com', N'Calle 82, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1982-06-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (554, N' Elián ', N'Salgado', N'Ledezma', N' elián salgado@gmail.com', N'Calle 923, El Puente, Santa Cruz, Bolivia', CAST(N'1986-07-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (555, N' Émile ', N'Mares', N'Saucedo', N' émile mares@gmail.com', N'Calle 447, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1980-04-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (556, N' Endor ', N'Castañeda', N'Almanza', N' endor castañeda@gmail.com', N'Calle 35, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1980-01-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (557, N' Ezra ', N'Carrillo', N'Favela', N' ezra carrillo@gmail.com', N'Calle 754, La Guardia, Santa Cruz, Bolivia', CAST(N'1978-11-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (558, N' Farid ', N'Figueroa', N'Leyva', N' farid figueroa@gmail.com', N'Calle 721, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1990-02-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (559, N' Fionn ', N'Rangel', N'Aguirre', N' fionn rangel@gmail.com', N'Calle 685, Warnes, Santa Cruz, Bolivia', CAST(N'1999-03-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (560, N' Gadiel ', N'Salinas', N'Madrigal', N' gadiel salinas@gmail.com', N'Calle 892, Warnes, Santa Cruz, Bolivia', CAST(N'1978-12-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (561, N' Gael ', N'Delarosa', N'Carranza', N' gael delarosa@gmail.com', N'Calle 142, El Torno, Santa Cruz, Bolivia', CAST(N'1978-04-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (562, N' Goran ', N'Armijo', N'Villarreal', N' goran armijo@gmail.com', N'Calle 3, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1984-08-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (563, N' Guido ', N'Alonzo', N'Aguilar', N' guido alonzo@gmail.com', N'Calle 375, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'2000-10-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (564, N' Hasani ', N'Covarrubias', N'Tapia', N' hasani covarrubias@gmail.com', N'Calle 310, Montero, Santa Cruz, Bolivia', CAST(N'1980-05-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (565, N' Ian ', N'Valenzuela', N'Hernández', N' ian valenzuela@gmail.com', N'Calle 181, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1984-05-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (566, N' Ilán ', N'Verdugo', N'Soria', N' ilán verdugo@gmail.com', N'Calle 811, Montero, Santa Cruz, Bolivia', CAST(N'1979-07-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (567, N' Ivar ', N'Sosa', N'Cabral', N' ivar sosa@gmail.com', N'Calle 491, El Torno, Santa Cruz, Bolivia', CAST(N'1988-10-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (568, N' Joel ', N'Zambrano', N'Cedillo', N' joel zambrano@gmail.com', N'Calle 925, Montero, Santa Cruz, Bolivia', CAST(N'1984-05-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (569, N' Julián ', N'García', N'Serrano', N' julián garcía@gmail.com', N'Calle 625, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1981-08-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (570, N' Kadet ', N'Rodríguez', N'Escamilla', N' kadet rodríguez@gmail.com', N'Calle 373, Warnes, Santa Cruz, Bolivia', CAST(N'1999-07-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (571, N' Kai ', N'López', N'Salgado', N' kai lópez@gmail.com', N'Calle 675, Portachuelo, Santa Cruz, Bolivia', CAST(N'1996-08-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (572, N' Karim ', N'Martínez', N'Mares', N' karim martínez@gmail.com', N'Calle 702, El Torno, Santa Cruz, Bolivia', CAST(N'1987-11-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (573, N' Kilian ', N'Pérez', N'Castañeda', N' kilian pérez@gmail.com', N'Calle 975, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1980-12-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (574, N' Kuno ', N'Sánchez', N'Carrillo', N' kuno sánchez@gmail.com', N'Calle 519, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1999-07-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (575, N' Lars ', N'González', N'Figueroa', N' lars gonzález@gmail.com', N'Calle 68, Montero, Santa Cruz, Bolivia', CAST(N'1979-11-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (576, N' Lavi ', N'Gómez', N'Rangel', N' lavi gómez@gmail.com', N'Calle 263, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1986-04-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (577, N' Leonel ', N'Fernández', N'Salinas', N' leonel fernández@gmail.com', N'Calle 35, Montero, Santa Cruz, Bolivia', CAST(N'1975-08-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (578, N' Lisandro ', N'Díaz', N'Delarosa', N' lisandro díaz@gmail.com', N'Calle 53, La Guardia, Santa Cruz, Bolivia', CAST(N'1982-08-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (579, N' Luc ', N'Torres', N'Armijo', N' luc torres@gmail.com', N'Calle 608, La Guardia, Santa Cruz, Bolivia', CAST(N'1996-05-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (580, N' Malik ', N'Moreno', N'Alonzo', N' malik moreno@gmail.com', N'Calle 427, El Puente, Santa Cruz, Bolivia', CAST(N'1994-01-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (581, N' Marius', N'Ortiz', N'Covarrubias', N' mariusortiz@gmail.com', N'Calle 703, Portachuelo, Santa Cruz, Bolivia', CAST(N'1990-01-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (582, N' Milos ', N'Ramos', N'Valenzuela', N' milos ramos@gmail.com', N'Calle 160, Montero, Santa Cruz, Bolivia', CAST(N'2000-03-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (583, N' Mosi ', N'Ruiz', N'Verdugo', N' mosi ruiz@gmail.com', N'Calle 936, Warnes, Santa Cruz, Bolivia', CAST(N'1988-04-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (584, N' Nadir ', N'Vargas', N'Sosa', N' nadir vargas@gmail.com', N'Calle 725, La Guardia, Santa Cruz, Bolivia', CAST(N'1991-06-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (585, N' Naim ', N'Flores', N'Zambrano', N' naim flores@gmail.com', N'Calle 389, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'2000-07-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (586, N' Normand ', N'Herrera', N'García', N' normand herrera@gmail.com', N'Calle 889, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1991-09-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (587, N' Oliver ', N'Castro', N'Rodríguez', N' oliver castro@gmail.com', N'Calle 781, La Guardia, Santa Cruz, Bolivia', CAST(N'1995-04-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (588, N' Oriel ', N'Romero', N'López', N' oriel romero@gmail.com', N'Calle 573, Warnes, Santa Cruz, Bolivia', CAST(N'1978-11-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (589, N' Otto ', N'Gonzales', N'Martínez', N' otto gonzales@gmail.com', N'Calle 735, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1975-01-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (590, N' Pavel ', N'Aguilar', N'Pérez', N' pavel aguilar@gmail.com', N'Calle 141, El Puente, Santa Cruz, Bolivia', CAST(N'1976-10-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (591, N' Pax ', N'Mendoza', N'Sánchez', N' pax mendoza@gmail.com', N'Calle 569, Portachuelo, Santa Cruz, Bolivia', CAST(N'1975-06-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (592, N' Piero ', N'Herrera', N'González', N' piero herrera@gmail.com', N'Calle 828, Portachuelo, Santa Cruz, Bolivia', CAST(N'1978-11-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (593, N' Raziel ', N'Espinoza', N'Gómez', N' raziel espinoza@gmail.com', N'Calle 82, Warnes, Santa Cruz, Bolivia', CAST(N'1991-07-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (594, N' Rune ', N'Gutiérrez', N'Fernández', N' rune gutiérrez@gmail.com', N'Calle 47, Montero, Santa Cruz, Bolivia', CAST(N'1999-01-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (595, N' Sander ', N'Reyes', N'Díaz', N' sander reyes@gmail.com', N'Calle 237, El Puente, Santa Cruz, Bolivia', CAST(N'1977-10-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (596, N' Sinhué ', N'Valdez', N'Torres', N' sinhué valdez@gmail.com', N'Calle 302, Portachuelo, Santa Cruz, Bolivia', CAST(N'2000-05-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (597, N' Tadeo ', N'Guzmán', N'Moreno', N' tadeo guzmán@gmail.com', N'Calle 309, La Guardia, Santa Cruz, Bolivia', CAST(N'1983-08-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (598, N' Teo ', N'Ramírez', N'Ortiz', N' teo ramírez@gmail.com', N'Calle 461, Warnes, Santa Cruz, Bolivia', CAST(N'1977-08-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (599, N' Tristán ', N'Ríos', N'Ramos', N' tristán ríos@gmail.com', N'Calle 767, Portachuelo, Santa Cruz, Bolivia', CAST(N'2000-06-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (600, N' Umi ', N'Chávez', N'Ruiz', N' umi chávez@gmail.com', N'Calle 364, Portachuelo, Santa Cruz, Bolivia', CAST(N'1988-07-01' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Jugador] OFF
GO
SET IDENTITY_INSERT [dbo].[Tecnico] ON 
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (1, N' Dante ', N'Medina', N'Magaña', N' dante medina@gmail.com', N'Calle 533, El Torno, Santa Cruz, Bolivia', CAST(N'1985-05-16' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (2, N' Enzo ', N'Bernal', N'Valdés', N' enzo bernal@gmail.com', N'Calle 612, La Guardia, Santa Cruz, Bolivia', CAST(N'1994-06-26' AS Date), 2)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (3, N' Silas ', N'Miranda', N'Ledezma', N' silas miranda@gmail.com', N'Calle 939, El Torno, Santa Cruz, Bolivia', CAST(N'1982-04-02' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (4, N' Marco ', N'Durán', N'Saucedo', N' marco durán@gmail.com', N'Calle 709, Portachuelo, Santa Cruz, Bolivia', CAST(N'1988-07-07' AS Date), 3)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (5, N' Andrea ', N'Vega', N'Almanza', N' andrea vega@gmail.com', N'Calle 342, Warnes, Santa Cruz, Bolivia', CAST(N'1989-12-09' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (6, N' Ariel ', N'Olvera', N'Favela', N' ariel olvera@gmail.com', N'Calle 83, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1987-06-26' AS Date), 3)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (7, N' Orfeo ', N'Méndez', N'Leyva', N' orfeo méndez@gmail.com', N'Calle 51, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1983-11-15' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (8, N' Jasón ', N'Quiroz', N'Aguirre', N' jasón quiroz@gmail.com', N'Calle 340, Portachuelo, Santa Cruz, Bolivia', CAST(N'1976-12-14' AS Date), 2)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (9, N' Tristán ', N'Rivas', N'Madrigal', N' tristán rivas@gmail.com', N'Calle 567, Portachuelo, Santa Cruz, Bolivia', CAST(N'1992-05-01' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (10, N' Zeus ', N'Fuentes', N'Carranza', N' zeus fuentes@gmail.com', N'Calle 124, La Guardia, Santa Cruz, Bolivia', CAST(N'1992-08-27' AS Date), 4)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (11, N' Adal ', N'Reyes', N'Villarreal', N' adal reyes@gmail.com', N'Calle 941, Warnes, Santa Cruz, Bolivia', CAST(N'1988-04-13' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (12, N' Adel ', N'Osorio', N'Cedillo', N' adel osorio@gmail.com', N'Calle 100, Portachuelo, Santa Cruz, Bolivia', CAST(N'1999-04-05' AS Date), 5)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (13, N' Alonso ', N'Esquivel', N'Serrano', N' alonso esquivel@gmail.com', N'Calle 64, Montero, Santa Cruz, Bolivia', CAST(N'1976-12-23' AS Date), 6)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (14, N' Elián ', N'Márquez', N'Escamilla', N' elián márquez@gmail.com', N'Calle 728, La Guardia, Santa Cruz, Bolivia', CAST(N'1983-10-01' AS Date), 4)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (15, N' Endor ', N'Delgado', N'Salgado', N' endor delgado@gmail.com', N'Calle 366, El Puente, Santa Cruz, Bolivia', CAST(N'1995-04-25' AS Date), 5)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (16, N' Ezra ', N'Briones', N'Mares', N' ezra briones@gmail.com', N'Calle 300, Montero, Santa Cruz, Bolivia', CAST(N'1994-09-30' AS Date), 6)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (17, N' Farid ', N'Soria', N'Castañeda', N' farid soria@gmail.com', N'Calle 345, Portachuelo, Santa Cruz, Bolivia', CAST(N'1986-02-08' AS Date), 4)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (18, N' Fionn ', N'Nava', N'Carrillo', N' fionn nava@gmail.com', N'Calle 191, El Puente, Santa Cruz, Bolivia', CAST(N'1988-12-19' AS Date), 3)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (19, N' Gadiel ', N'García', N'Figueroa', N' gadiel garcía@gmail.com', N'Calle 219, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1980-06-14' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (20, N' Gael ', N'Granados', N'Rangel', N' gael granados@gmail.com', N'Calle 383, El Puente, Santa Cruz, Bolivia', CAST(N'1978-02-18' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[Tecnico] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoTecnico] ON 
GO
INSERT [dbo].[TipoTecnico] ([id_tipo_tecnico], [tipo]) VALUES (1, N'Entrenador Principal')
GO
INSERT [dbo].[TipoTecnico] ([id_tipo_tecnico], [tipo]) VALUES (2, N'Asistente Técnico')
GO
INSERT [dbo].[TipoTecnico] ([id_tipo_tecnico], [tipo]) VALUES (3, N'Entrenador de Porteros')
GO
INSERT [dbo].[TipoTecnico] ([id_tipo_tecnico], [tipo]) VALUES (4, N'Preparador Físico')
GO
INSERT [dbo].[TipoTecnico] ([id_tipo_tecnico], [tipo]) VALUES (5, N'Analista Táctico')
GO
INSERT [dbo].[TipoTecnico] ([id_tipo_tecnico], [tipo]) VALUES (6, N'Scout')
GO
SET IDENTITY_INSERT [dbo].[TipoTecnico] OFF
GO
SET IDENTITY_INSERT [dbo].[UbicacionEstadio] ON 
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (1, N'Estadio Azteca', N'Calzada de Tlalpan 3465, Sta. Úrsula Coapa, Coyoacán, 04650 Ciudad de México, CDMX, México', N'(55) 6274-8698', 1)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (2, N'Estadio Maracaná', N'Av. Pres. Castelo Branco, s/n - Maracanã, Rio de Janeiro - RJ, 20271-130, Brasil', N'(21) 7233-8648', 2)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (3, N'Estadio Monumental', N'Av. Pres. Figueroa Alcorta 7597, C1428BNC CABA, Argentina', N'(11) 9374-2644', 3)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (4, N'Estadio Nacional', N'Av. Grecia 2001, Ñuñoa, Santiago, Región Metropolitana, Chile', N'(2) 9334-9348', 4)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (5, N'Estadio Metropolitano Roberto Meléndez', N'Cl. 45 #30-95, Barranquilla, Atlántico, Colombia', N'(5) 2944837', 5)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (6, N'Estadio Centenario', N'Av. Dr. Americo Ricaldoni, Montevideo, Uruguay', N'(2) 943-4927', 6)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (7, N'Estadio Defensores del Chaco', N'Av. Artigas, Asunción, Paraguay', N' (21) 984-306', 7)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (8, N'Estadio Alejandro Villanueva', N'Calle Fray Martín, Lima 15046, Perú', N'(01) 748-91747', 8)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (9, N'Estadio Azul', N'Calz. de Tlalpan 3465, Sta. Úrsula Coapa, Coyoacán, 04650 Ciudad de México, CDMX, México', N'(55) 6184-6628', 1)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (10, N'Estadio Hernando Siles', N'Plaza Venezuela, La Paz, Bolivia', N'(2) 253-7637', 9)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (11, N'Estadio Morumbi', N'Av. Jules Rimet, 500 - Morumbi, São Paulo - SP, 05618-000, Brasil', N'(11) 8224-9328', 10)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (12, N'Estadio Rommel Fernández', N'Avenida Ricardo J. Alfaro, Panamá, Panamá', N'(507) 934-8427', 11)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (13, N'Estadio Nacional de Costa Rica', N'Parque Metropolitano La Sabana, San José, Costa Rica', N'(506) 2222-5474', 12)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (14, N'Estadio Nemesio Camacho "El Campín"', N'Cra. 30 #57-61, Bogotá, Colombia', N'(1) 9348362', 13)
GO
INSERT [dbo].[UbicacionEstadio] ([id_ubicacion_estadio], [nombre_ubicacion], [direccion], [telefono], [id_ciudad_estadio]) VALUES (15, N'Estadio Monumental de la U', N'Av. Marathon 5300, Macul, Región Metropolitana, Chile', N'(2) 8224-2893', 4)
GO
SET IDENTITY_INSERT [dbo].[UbicacionEstadio] OFF
GO
ALTER TABLE [dbo].[Alineacion]  WITH CHECK ADD FOREIGN KEY([id_dirigente])
REFERENCES [dbo].[Dirigente] ([id_dirigente])
GO
ALTER TABLE [dbo].[Alineacion]  WITH CHECK ADD FOREIGN KEY([id_equipo])
REFERENCES [dbo].[Equipo] ([id_equipo])
GO
ALTER TABLE [dbo].[Alineacion]  WITH CHECK ADD FOREIGN KEY([id_tecnico])
REFERENCES [dbo].[Tecnico] ([id_tecnico])
GO
ALTER TABLE [dbo].[AlineacionJugador]  WITH CHECK ADD FOREIGN KEY([id_alineacion])
REFERENCES [dbo].[Alineacion] ([id_alineacion])
GO
ALTER TABLE [dbo].[AlineacionJugador]  WITH CHECK ADD FOREIGN KEY([id_jugador])
REFERENCES [dbo].[Jugador] ([id_jugador])
GO
ALTER TABLE [dbo].[CambioEstado]  WITH CHECK ADD FOREIGN KEY([id_estado_jugador])
REFERENCES [dbo].[EstadoJugador] ([id_estado_jugador])
GO
ALTER TABLE [dbo].[CambioEstado]  WITH CHECK ADD FOREIGN KEY([id_jugador])
REFERENCES [dbo].[Jugador] ([id_jugador])
GO
ALTER TABLE [dbo].[Designacion]  WITH CHECK ADD FOREIGN KEY([id_arbitro])
REFERENCES [dbo].[Arbitro] ([id_arbitro])
GO
ALTER TABLE [dbo].[Designacion]  WITH CHECK ADD FOREIGN KEY([id_programa_partido])
REFERENCES [dbo].[ProgramaPartido] ([id_programa_partido])
GO
ALTER TABLE [dbo].[Designacion]  WITH CHECK ADD FOREIGN KEY([id_rol])
REFERENCES [dbo].[Rol] ([id_rol])
GO
ALTER TABLE [dbo].[DetalleJugador]  WITH CHECK ADD FOREIGN KEY([id_jugador])
REFERENCES [dbo].[Jugador] ([id_jugador])
GO
ALTER TABLE [dbo].[DetalleJugador]  WITH CHECK ADD FOREIGN KEY([id_programa_partido])
REFERENCES [dbo].[ProgramaPartido] ([id_programa_partido])
GO
ALTER TABLE [dbo].[EstadisticaClub]  WITH CHECK ADD FOREIGN KEY([id_club_futbol])
REFERENCES [dbo].[ClubFutbol] ([id_club_futbol])
GO
ALTER TABLE [dbo].[Goleo]  WITH CHECK ADD FOREIGN KEY([id_alineacion_jugador])
REFERENCES [dbo].[AlineacionJugador] ([id_alineacion_jugador])
GO
ALTER TABLE [dbo].[Goleo]  WITH CHECK ADD FOREIGN KEY([id_programa_partido])
REFERENCES [dbo].[ProgramaPartido] ([id_programa_partido])
GO
ALTER TABLE [dbo].[Inscripcion]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[NacionalidadJugador]  WITH CHECK ADD FOREIGN KEY([id_jugador])
REFERENCES [dbo].[Jugador] ([id_jugador])
GO
ALTER TABLE [dbo].[NacionalidadJugador]  WITH CHECK ADD FOREIGN KEY([id_nacionalidad])
REFERENCES [dbo].[Nacionalidad] ([id_nacionalidad])
GO
ALTER TABLE [dbo].[PosicionEquipoTorneo]  WITH CHECK ADD FOREIGN KEY([id_equipo])
REFERENCES [dbo].[Equipo] ([id_equipo])
GO
ALTER TABLE [dbo].[PosicionEquipoTorneo]  WITH CHECK ADD FOREIGN KEY([id_posicion])
REFERENCES [dbo].[Posicion] ([id_posicion])
GO
ALTER TABLE [dbo].[PosicionEquipoTorneo]  WITH CHECK ADD FOREIGN KEY([id_torneo])
REFERENCES [dbo].[Torneo] ([id_torneo])
GO
ALTER TABLE [dbo].[ProgramaPartido]  WITH CHECK ADD FOREIGN KEY([id_alineacion_local])
REFERENCES [dbo].[Alineacion] ([id_alineacion])
GO
ALTER TABLE [dbo].[ProgramaPartido]  WITH CHECK ADD FOREIGN KEY([id_alineacion_visitante])
REFERENCES [dbo].[Alineacion] ([id_alineacion])
GO
ALTER TABLE [dbo].[ProgramaPartido]  WITH CHECK ADD FOREIGN KEY([id_estado_partido])
REFERENCES [dbo].[EstadoPartido] ([id_estado_partido])
GO
ALTER TABLE [dbo].[ProgramaPartido]  WITH CHECK ADD FOREIGN KEY([id_ganador])
REFERENCES [dbo].[Equipo] ([id_equipo])
GO
ALTER TABLE [dbo].[ProgramaPartido]  WITH CHECK ADD FOREIGN KEY([id_perdedor])
REFERENCES [dbo].[Equipo] ([id_equipo])
GO
ALTER TABLE [dbo].[ProgramaPartido]  WITH CHECK ADD FOREIGN KEY([id_torneo])
REFERENCES [dbo].[Torneo] ([id_torneo])
GO
ALTER TABLE [dbo].[ProgramaPartido]  WITH CHECK ADD FOREIGN KEY([id_ubicacion_estadio])
REFERENCES [dbo].[UbicacionEstadio] ([id_ubicacion_estadio])
GO
ALTER TABLE [dbo].[Sancion]  WITH CHECK ADD FOREIGN KEY([id_jugador])
REFERENCES [dbo].[Jugador] ([id_jugador])
GO
ALTER TABLE [dbo].[Sancion]  WITH CHECK ADD FOREIGN KEY([id_programa_partido])
REFERENCES [dbo].[ProgramaPartido] ([id_programa_partido])
GO
ALTER TABLE [dbo].[Sancion]  WITH CHECK ADD FOREIGN KEY([id_tarjeta])
REFERENCES [dbo].[Tarjeta] ([id_tarjeta])
GO
ALTER TABLE [dbo].[Tarjeta]  WITH CHECK ADD FOREIGN KEY([id_estadistica_club])
REFERENCES [dbo].[EstadisticaClub] ([id_estadistica_club])
GO
ALTER TABLE [dbo].[Tarjeta]  WITH CHECK ADD FOREIGN KEY([id_torneo_equipo_jugador])
REFERENCES [dbo].[TorneoEquipoJugador] ([id_torneo_equipo_jugador])
GO
ALTER TABLE [dbo].[Tecnico]  WITH CHECK ADD FOREIGN KEY([id_tipo_tecnico])
REFERENCES [dbo].[TipoTecnico] ([id_tipo_tecnico])
GO
ALTER TABLE [dbo].[TorneoEquipoJugador]  WITH CHECK ADD FOREIGN KEY([id_equipo])
REFERENCES [dbo].[Equipo] ([id_equipo])
GO
ALTER TABLE [dbo].[TorneoEquipoJugador]  WITH CHECK ADD FOREIGN KEY([id_jugador])
REFERENCES [dbo].[Jugador] ([id_jugador])
GO
ALTER TABLE [dbo].[TorneoEquipoJugador]  WITH CHECK ADD FOREIGN KEY([id_torneo])
REFERENCES [dbo].[Torneo] ([id_torneo])
GO
ALTER TABLE [dbo].[UbicacionEstadio]  WITH CHECK ADD FOREIGN KEY([id_ciudad_estadio])
REFERENCES [dbo].[CiudadEstadio] ([id_ciudad_estadio])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([id_tipo_usuario])
REFERENCES [dbo].[TipoUsuario] ([id_tipo_usuario])
GO

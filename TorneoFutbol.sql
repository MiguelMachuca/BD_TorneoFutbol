
--USE [master];
--DROP DATABASE [TorneoFutbol];
----------------------------------
CREATE DATABASE [TorneoFutbol]
GO
USE [TorneoFutbol]
GO
/****** Object:  Table [dbo].[Alineacion]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alineacion](
	[id_alineacion] [int] IDENTITY(1,1) NOT NULL,
	[id_dirigente] [int] NULL,
	[id_equipo] [int] NULL,
	[fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_alineacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlineacionTecnico]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlineacionTecnico](
	[id_alineacion_tecnico] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[id_alineacion] [int] NULL,
	[id_tecnico] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_alineacion_tecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Arbitro]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[CambioEstado]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[CambioJugador]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CambioJugador](
	[id_cambio_juagador] [int] IDENTITY(1,1) NOT NULL,
	[minuto_cambio] [int] NULL,
	[id_jugador_entrada] [int] NULL,
	[id_jugador_salida] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cambio_juagador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CiudadEstadio]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[ClubFutbol]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[Designacion]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designacion](
	[id_designacion] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[id_arbitro] [int] NULL,
	[id_rol] [int] NULL,
	[id_programa_partido] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_designacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleAlineacion]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleAlineacion](
	[id_detalle_alineacion] [int] IDENTITY(1,1) NOT NULL,
	[posicion] [varchar](70) NULL,
	[id_jugador] [int] NULL,
	[id_alineacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detalle_alineacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dirigente]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dirigente](
	[id_dirigente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido_paterno] [varchar](50) NULL,
	[apellido_materno] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dirigente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipo](
	[id_equipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre_equipo] [varchar](50) NULL,
	[id_club_futbol] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadisticaClub]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[EstadoJugador]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoJugador](
	[id_estado_jugador] [int] IDENTITY(1,1) NOT NULL,
	[tipo_estado] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado_jugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoPartido]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[Evento]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento](
	[id_evento] [int] IDENTITY(1,1) NOT NULL,
	[tiempo_jugado] [int] NULL,
	[cantidad_pases] [int] NULL,
	[id_detalle_alineacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Falta]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Falta](
	[id_falta] [int] IDENTITY(1,1) NOT NULL,
	[minuto] [int] NULL,
	[id_tipo_falta] [int] NULL,
	[id_tarjeta] [int] NULL,
	[id_detalle_alineacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_falta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Goleo]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goleo](
	[id_goleo] [int] IDENTITY(1,1) NOT NULL,
	[minuto] [int] NULL,
	[id_detalle_alineacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_goleo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[Nacionalidad]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[NacionalidadJugador]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[PlanillaEquipo]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanillaEquipo](
	[id_planilla_equipo] [int] IDENTITY(1,1) NOT NULL,
	[forma_pago] [varchar](50) NULL,
	[fecha_inscrito] [date] NULL,
	[id_equipo] [int] NULL,
	[id_usuario] [int] NULL,
	[id_torneo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_planilla_equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posicion]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posicion](
	[id_posicion] [int] IDENTITY(1,1) NOT NULL,
	[posicion_torneo] [int] NULL,
	[partidos_jugados] [int] NULL,
	[cantidad_puntos] [int] NULL,
	[partidos_ganados] [int] NULL,
	[partidos_empatados] [int] NULL,
	[goles_anotados] [int] NULL,
	[goles_encontra] [int] NULL,
	[diferencia_goles] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_posicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PosicionEquipoTorneo]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[ProgramaPartido]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramaPartido](
	[id_programa_partido] [int] IDENTITY(1,1) NOT NULL,
	[fecha_programada] [date] NULL,
	[hora_programada] [time](7) NULL,
	[marcador_local] [int] NULL,
	[marcador_visitante] [int] NULL,
	[equipo_ganador] [varchar](50) NULL,
	[equipo_perdedor] [varchar](50) NULL,
	[tarjetas_amarillas] [int] NULL,
	[tarjetas_rojas] [int] NULL,
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
/****** Object:  Table [dbo].[Rol]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[nombre_rol] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarjeta]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarjeta](
	[id_tarjeta] [int] IDENTITY(1,1) NOT NULL,
	[color_tarjeta] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tecnico]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[TipoFalta]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFalta](
	[id_tipo_falta] [int] IDENTITY(1,1) NOT NULL,
	[tip_falta] [varchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_falta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTecnico]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[Torneo]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Torneo](
	[id_torneo] [int] IDENTITY(1,1) NOT NULL,
	[nombre_torneo] [varchar](50) NULL,
	[fecha_inicio_torneo] [date] NULL,
	[fecha_fin_torneo] [date] NULL,
	[monto_inscripcion] [int] NULL,
	[fecha_inicio_inscripcion] [date] NULL,
	[fecha_fin_inscripcion] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_torneo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TorneoEquipoJugador]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[UbicacionEstadio]    Script Date: 28/04/2023 7:17:21 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 28/04/2023 7:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre_usuario] [varchar](50) NULL,
	[contraseña] [varchar](50) NULL,
	[id_tipo_usuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Arbitro] ON 
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (1, N'Ericka', N'ericka@gmail.com', N'Avenida Siempre Viva')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (2, N'Miguel', N'miguel@gmail.com', N'Calle morroso')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (3, N'Mark', N'Mark@gmail.com', N'Pailon')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (4, N'jose', N'jose@gmail.com', N'Santa Cruz de la sierra')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (5, N'Vicenta', N'vicenta@gmail.com', N'las misiones')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (6, N'Sergio', N'sergio@gmail.com', N'27 de mayo')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (7, N'Marco', N'Marco@gmail.com', N'central fatima')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (8, N'Juan', N'juan@gmail.com', N'Avenida Siempre Viva')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (9, N'sara', N'sara@gmail.com', N'villa nueva')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (10, N'la trece', N'trece@gmail.com', N'seattle')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (11, N'house', N'house@gmail.com', N'seatle')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (12, N'foreman', N'foreman@gmail.com', N'silicon valley')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (13, N'chase', N'chase@gmail.com', N'nueva yersey')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (14, N'jorge', N'jorge@gmail.com', N'plan 3000')
GO
INSERT [dbo].[Arbitro] ([id_arbitro], [nombre], [email], [direccion]) VALUES (15, N'jose rivero', N'rivero@gmail.com', N'la cuchilla')
GO
SET IDENTITY_INSERT [dbo].[Arbitro] OFF
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
SET IDENTITY_INSERT [dbo].[ClubFutbol] ON 
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (1, N'club Boca Juniors ', N'tigre', N'la mejor''', CAST(N'1904-04-04' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (2, N'club River Plate', N'gato', N'''la mejor''', CAST(N'1904-04-05' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (3, N'club Flamengo', N'perro', N'''la mejor''', CAST(N'1904-04-06' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (4, N'club Corinthians', N'loro', N'''la mejor''', CAST(N'1910-09-01' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (5, N'club Santos FC', N'escudito', N'''la mejor''', CAST(N'1912-04-14' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (6, N'club São Paulo FC', N'bandera', N'''la mejor''', CAST(N'1930-01-25' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (7, N'club América', N'pelota', N'''la mejor''', CAST(N'1916-10-12' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (8, N'club Chivas de Guadalajara', N'moto', N'''la mejor''', CAST(N'1906-05-08' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (9, N'club Cruz Azul', N'pescadito', N'''la mejor''', CAST(N'1927-05-22' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (10, N'club Tigres UANL', N'diablo', N'''la mejor''', CAST(N'1960-03-07' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (11, N'club Atlético Nacional', N'angel', N'''la mejor''', CAST(N'1947-03-07' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (12, N'club Independiente Santa Fe', N'aguila', N'''la mejor''', CAST(N'1941-02-28' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (13, N'club Olimpia', N'corona', N'''la mejor''', CAST(N'1902-07-25' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (14, N'club Cerro Porteño', N'rugiente', N'''la mejor''', CAST(N'1912-10-01' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (15, N'club Atlético Peñarol', N'calavera', N'''la mejor''', CAST(N'1991-09-28' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (16, N'club Nacional de Football', N'arma', N'''la mejor''', CAST(N'1999-05-14' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (17, N'club Colo-Colo', N'bolivar', N'''la mejor''', CAST(N'1925-04-19' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (18, N'club Universidad de Chile', N'gallina', N'''la mejor''', CAST(N'1919-04-01' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (19, N'club Alianza Lima', N'espada', N'''la mejor''', CAST(N'1901-02-15' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (20, N'club Sporting Cristal', N'murcielago', N'''la mejor''', CAST(N'1955-12-13' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (21, N'club Emelec', N'fitness', N'''la mejor''', CAST(N'1929-04-28' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (22, N'club Barcelona SC', N'oso', N'''la mejor''', CAST(N'1925-05-01' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (23, N'club Libertad', N'panda', N'''la mejor''', CAST(N'1905-07-30' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (24, N'club Deportivo Toluca', N'tejon', N'''la mejor''', CAST(N'1917-02-12' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (25, N'Club Atlético Huracán', N'raton', N'''la mejor''', CAST(N'1915-01-03' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (26, N'Club Atlético Lanús ', N'humamno', N'''la mejor''', CAST(N'1908-09-01' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (27, N'Club Atlético Vélez Sarsfield', N'silla', N'''la mejor''', CAST(N'1910-01-01' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (28, N'Club Deportivo Universidad San Martín', N'celular', N'''la mejor''', CAST(N'2004-01-21' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (29, N'Club Bolívar', N'reloj', N'''la mejor''', CAST(N'1925-04-12' AS Date))
GO
INSERT [dbo].[ClubFutbol] ([id_club_futbol], [nombre], [logo], [descripcion], [fecha_creacion]) VALUES (30, N'Club The Strongest', N'caballo', N'''la mejor''', CAST(N'1908-04-08' AS Date))
GO
SET IDENTITY_INSERT [dbo].[ClubFutbol] OFF
GO
SET IDENTITY_INSERT [dbo].[Dirigente] ON 
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (1, N'Eric', N'Fernández', N'Cervantes')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (2, N'Samuel', N'Díaz', N'Rangel')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (3, N'Darío', N'Torres', N'Tapia')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (4, N'Héctor', N'Moreno', N'Solís')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (5, N'Luca', N'Ortiz', N'Arellano')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (6, N'Iker', N'Ramos', N'Zavala')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (7, N'Amir', N'Ruiz', N'Cárdenas')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (8, N'Rodrigo', N'Vargas', N'Pacheco')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (9, N'Saúl', N'Flores', N'Villegas')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (10, N'Víctor', N'Herrera', N'Pineda')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (11, N'Francisco', N'Castro', N'Carrasco')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (12, N'Iván', N'Romero', N'Robles')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (13, N'Jesús', N'Gonzales', N'Navarro')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (14, N'Jaime', N'Aguilar', N'Escobar')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (15, N'Aarón', N'Mendoza', N'Palacios')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (16, N'Rubén', N'Herrera', N'Valencia')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (17, N'Ian', N'Espinoza', N'Espinosa')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (18, N'Guillermo', N'Gutiérrez', N'Gálvez')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (19, N'Erik', N'Reyes', N'Bautista')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (20, N'Mohamed', N'Valdez', N'Luna')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (21, N'Julen', N'Guzmán', N'Montoya')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (22, N'Asier', N'Ramírez', N'Caballero')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (23, N'Fernando', N'Ríos', N'Delgado')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (24, N'Alonso', N'Chávez', N'Aguayo')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (25, N'Matías', N'Morales', N'Acuña')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (26, N'Biel', N'Núñez', N'Fierro')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (27, N'Andrés', N'Salazar', N'Beltrán')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (28, N'Axel', N'Rivera', N'Bustamante')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (29, N'Ismael', N'Castillo', N'Ochoa')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (30, N'Martí', N'Jiménez', N'Vega')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (31, N' Darío ', N'Vázquez', N'Zúñiga')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (32, N' David ', N'Fuentes', N'Alvarado')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (33, N' Diego ', N'Medina', N'Medina')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (34, N' Emilio ', N'Carrillo', N'Bernal')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (35, N' Fabián ', N'Acosta', N'Miranda')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (36, N' Felipe ', N'Campos', N'Durán')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (37, N' Gabriel ', N'Duarte', N'Vega')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (38, N' Héctor ', N'Miranda', N'Olvera')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (39, N' Hugo ', N'Bravo', N'Méndez')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (40, N' Jacobo ', N'Meléndez', N'Quiroz')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (41, N' Jaime ', N'Peña', N'Rivas')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (42, N' Joaquín ', N'Padilla', N'Fuentes')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (43, N' Juan ', N'Cervantes', N'Reyes')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (44, N' Leonardo ', N'Rangel', N'Osorio')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (45, N' Leo ', N'Tapia', N'Esquivel')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (46, N' Lucas ', N'Solís', N'Márquez')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (47, N' Marcos ', N'Arellano', N'Delgado')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (48, N' Martín ', N'Zavala', N'Briones')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (49, N' Mateo ', N'Cárdenas', N'Soria')
GO
INSERT [dbo].[Dirigente] ([id_dirigente], [nombre], [apellido_paterno], [apellido_materno]) VALUES (50, N' Matías ', N'Pacheco', N'Nava')
GO
SET IDENTITY_INSERT [dbo].[Dirigente] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipo] ON 
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (1, N'Boca Juniors (Argentina)', 1)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (2, N'River Plate (Argentina)', 2)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (3, N'Flamengo (Brazil)', 3)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (4, N'Corinthians (Brazil)', 4)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (5, N'Santos FC (Brazil)', 5)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (6, N'São Paulo FC (Brazil)', 6)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (7, N'América (Mexico)', 7)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (8, N'Chivas de Guadalajara (Mexico)', 8)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (9, N'Cruz Azul (Mexico)', 9)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (10, N'Tigres UANL (Mexico)', 10)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (11, N'Atlético Nacional (Colombia)', 11)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (12, N'Independiente Santa Fe (Colombia)', 12)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (13, N'Olimpia (Paraguay)', 13)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (14, N'Cerro Porteño (Paraguay)', 14)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (15, N'Atlético Peñarol (Uruguay)', 15)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (16, N'Nacional de Football (Uruguay)', 16)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (17, N'Colo-Colo (Chile)', 17)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (18, N'Universidad de Chile (Chile)', 18)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (19, N'Alianza Lima (Peru)', 19)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (20, N'Sporting Cristal (Peru)', 20)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (21, N'Emelec (Ecuador)', 21)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (22, N'Barcelona SC (Ecuador)', 22)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (23, N'Libertad (Paraguay)', 23)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (24, N'Deportivo Toluca (Mexico)', 24)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (25, N'Atlético Huracán (Argentina)', 25)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (26, N'Atlético Lanús (Argentina)', 26)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (27, N'Atlético Vélez Sarsfield (Argentina)', 27)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (28, N'Deportivo Universidad San Martín (Peru)', 28)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (29, N'Bolívar (Bolivia)', 29)
GO
INSERT [dbo].[Equipo] ([id_equipo], [nombre_equipo], [id_club_futbol]) VALUES (30, N'The Strongest (Bolivia)', 30)
GO
SET IDENTITY_INSERT [dbo].[Equipo] OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoJugador] ON 
GO
INSERT [dbo].[EstadoJugador] ([id_estado_jugador], [tipo_estado]) VALUES (1, N'ACTIVO')
GO
INSERT [dbo].[EstadoJugador] ([id_estado_jugador], [tipo_estado]) VALUES (2, N'RETIRADO')
GO
INSERT [dbo].[EstadoJugador] ([id_estado_jugador], [tipo_estado]) VALUES (3, N'LESIONADO')
GO
INSERT [dbo].[EstadoJugador] ([id_estado_jugador], [tipo_estado]) VALUES (4, N'SUSPENDIDO')
GO
INSERT [dbo].[EstadoJugador] ([id_estado_jugador], [tipo_estado]) VALUES (5, N'TRANSFERIBLE')
GO
INSERT [dbo].[EstadoJugador] ([id_estado_jugador], [tipo_estado]) VALUES (6, N'AGENTE LIBRE')
GO
INSERT [dbo].[EstadoJugador] ([id_estado_jugador], [tipo_estado]) VALUES (7, N'EN NEGOCIACIONES')
GO
INSERT [dbo].[EstadoJugador] ([id_estado_jugador], [tipo_estado]) VALUES (8, N'EN FORMACION')
GO
SET IDENTITY_INSERT [dbo].[EstadoJugador] OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoPartido] ON 
GO
INSERT [dbo].[EstadoPartido] ([id_estado_partido], [descripcion]) VALUES (1, N'Victoria')
GO
INSERT [dbo].[EstadoPartido] ([id_estado_partido], [descripcion]) VALUES (2, N'Empate')
GO
INSERT [dbo].[EstadoPartido] ([id_estado_partido], [descripcion]) VALUES (3, N'Abandono')
GO
INSERT [dbo].[EstadoPartido] ([id_estado_partido], [descripcion]) VALUES (4, N'Decisión Administrativa')
GO
SET IDENTITY_INSERT [dbo].[EstadoPartido] OFF
GO
SET IDENTITY_INSERT [dbo].[Jugador] ON 
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (1, N'Hugo', N'García', N'Vargas', N'hugogarcía@gmail.com', N'Calle 275, Montero, Santa Cruz, Bolivia', CAST(N'1999-08-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (2, N'Martín', N'Rodríguez', N'Flores', N'martínrodríguez@gmail.com', N'Calle 116, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1992-10-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (3, N'Lucas', N'López', N'Herrera', N'lucaslópez@gmail.com', N'Calle 417, La Guardia, Santa Cruz, Bolivia', CAST(N'1992-04-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (4, N'Mateo', N'Martínez', N'Castro', N'mateomartínez@gmail.com', N'Calle 46, El Puente, Santa Cruz, Bolivia', CAST(N'1975-04-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (5, N'Leo', N'Pérez', N'Romero', N'leopérez@gmail.com', N'Calle 247, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1981-06-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (6, N'Daniel', N'Sánchez', N'Gonzales', N'danielsánchez@gmail.com', N'Calle 860, Warnes, Santa Cruz, Bolivia', CAST(N'1979-02-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (7, N'Alejandro', N'González', N'Aguilar', N'alejandrogonzález@gmail.com', N'Calle 745, Portachuelo, Santa Cruz, Bolivia', CAST(N'1998-08-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (8, N'Pablo', N'Gómez', N'Mendoza', N'pablogómez@gmail.com', N'Calle 838, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1978-08-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (9, N'Manuel', N'Fernández', N'Herrera', N'manuelfernández@gmail.com', N'Calle 654, Warnes, Santa Cruz, Bolivia', CAST(N'1983-05-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (10, N'Álvaro', N'Díaz', N'Espinoza', N'álvarodíaz@gmail.com', N'Calle 993, El Torno, Santa Cruz, Bolivia', CAST(N'1999-12-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (11, N'Adrián', N'Torres', N'Gutiérrez', N'adriántorres@gmail.com', N'Calle 916, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1983-04-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (12, N'David', N'Moreno', N'Reyes', N'davidmoreno@gmail.com', N'Calle 984, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1999-12-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (13, N'Mario', N'Ortiz', N'Valdez', N'marioortiz@gmail.com', N'Calle 201, El Torno, Santa Cruz, Bolivia', CAST(N'1975-11-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (14, N'Enzo', N'Ramos', N'Guzmán', N'enzoramos@gmail.com', N'Calle 36, El Puente, Santa Cruz, Bolivia', CAST(N'1986-01-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (15, N'Diego', N'Ruiz', N'Ramírez', N'diegoruiz@gmail.com', N'Calle 888, La Guardia, Santa Cruz, Bolivia', CAST(N'1977-07-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (16, N'Marcos', N'Vargas', N'Ríos', N'marcosvargas@gmail.com', N'Calle 614, Portachuelo, Santa Cruz, Bolivia', CAST(N'1996-03-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (17, N'Izan', N'Flores', N'Chávez', N'izanflores@gmail.com', N'Calle 509, El Puente, Santa Cruz, Bolivia', CAST(N'1991-06-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (18, N'Javier', N'Herrera', N'Morales', N'javierherrera@gmail.com', N'Calle 791, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1996-06-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (19, N'Marco', N'Castro', N'Núñez', N'marcocastro@gmail.com', N'Calle 234, La Guardia, Santa Cruz, Bolivia', CAST(N'1993-07-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (20, N'Álex', N'Romero', N'Salazar', N'álexromero@gmail.com', N'Calle 709, El Puente, Santa Cruz, Bolivia', CAST(N'1975-07-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (21, N'Bruno', N'Gonzales', N'Rivera', N'brunogonzales@gmail.com', N'Calle 434, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1999-04-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (22, N'Oliver', N'Aguilar', N'Castillo', N'oliveraguilar@gmail.com', N'Calle 82, La Guardia, Santa Cruz, Bolivia', CAST(N'1997-09-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (23, N'Miguel', N'Mendoza', N'Jiménez', N'miguelmendoza@gmail.com', N'Calle 838, Warnes, Santa Cruz, Bolivia', CAST(N'1995-03-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (24, N'Thiago', N'Herrera', N'Vázquez', N'thiagoherrera@gmail.com', N'Calle 154, Montero, Santa Cruz, Bolivia', CAST(N'1986-03-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (25, N'Antonio', N'Espinoza', N'Fuentes', N'antonioespinoza@gmail.com', N'Calle 130, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1984-06-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (26, N'Marc', N'Gutiérrez', N'Medina', N'marcgutiérrez@gmail.com', N'Calle 853, Montero, Santa Cruz, Bolivia', CAST(N'1985-05-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (27, N'Carlos', N'Reyes', N'Cortez', N'carlosreyes@gmail.com', N'Calle 821, La Guardia, Santa Cruz, Bolivia', CAST(N'1991-10-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (28, N'Ángel', N'Valdez', N'Benítez', N'ángelvaldez@gmail.com', N'Calle 151, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1991-01-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (29, N'Juan', N'Guzmán', N'Soto', N'juanguzmán@gmail.com', N'Calle 812, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1981-06-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (30, N'Gonzalo', N'Ramírez', N'León', N'gonzaloramírez@gmail.com', N'Calle 744, Montero, Santa Cruz, Bolivia', CAST(N'1987-05-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (31, N'Gael', N'Ríos', N'Gallegos', N'gaelríos@gmail.com', N'Calle 157, Warnes, Santa Cruz, Bolivia', CAST(N'1990-09-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (32, N'Sergio', N'Chávez', N'Rosales', N'sergiochávez@gmail.com', N'Calle 406, La Guardia, Santa Cruz, Bolivia', CAST(N'1993-07-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (33, N'Nicolás', N'Morales', N'Carrillo', N'nicolásmorales@gmail.com', N'Calle 656, El Torno, Santa Cruz, Bolivia', CAST(N'1986-11-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (34, N'Dylan', N'Núñez', N'Acosta', N'dylannúñez@gmail.com', N'Calle 124, El Torno, Santa Cruz, Bolivia', CAST(N'1991-09-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (35, N'Gabriel', N'Salazar', N'Campos', N'gabrielsalazar@gmail.com', N'Calle 296, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1992-09-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (36, N'Jorge', N'Rivera', N'Duarte', N'jorgerivera@gmail.com', N'Calle 908, El Torno, Santa Cruz, Bolivia', CAST(N'1981-04-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (37, N'José', N'Castillo', N'Miranda', N'josécastillo@gmail.com', N'Calle 564, El Puente, Santa Cruz, Bolivia', CAST(N'1978-01-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (38, N'Adam', N'Jiménez', N'Bravo', N'adamjiménez@gmail.com', N'Calle 561, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1996-09-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (39, N'Liam', N'Vázquez', N'Meléndez', N'liamvázquez@gmail.com', N'Calle 550, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1987-03-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (40, N'Eric', N'Fuentes', N'Peña', N'ericfuentes@gmail.com', N'Calle 140, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1995-12-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (41, N'Samuel', N'Medina', N'Padilla', N'samuelmedina@gmail.com', N'Calle 177, Montero, Santa Cruz, Bolivia', CAST(N'1992-04-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (42, N'Darío', N'Cortez', N'Cervantes', N'daríocortez@gmail.com', N'Calle 728, El Puente, Santa Cruz, Bolivia', CAST(N'1987-12-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (43, N'Héctor', N'Benítez', N'Rangel', N'héctorbenítez@gmail.com', N'Calle 342, Portachuelo, Santa Cruz, Bolivia', CAST(N'1988-12-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (44, N'Luca', N'Soto', N'Tapia', N'lucasoto@gmail.com', N'Calle 82, Warnes, Santa Cruz, Bolivia', CAST(N'2000-03-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (45, N'Iker', N'León', N'Solís', N'ikerleón@gmail.com', N'Calle 739, El Torno, Santa Cruz, Bolivia', CAST(N'1990-01-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (46, N'Amir', N'Gallegos', N'Arellano', N'amirgallegos@gmail.com', N'Calle 268, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1982-08-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (47, N'Rodrigo', N'Rosales', N'Zavala', N'rodrigorosales@gmail.com', N'Calle 578, La Guardia, Santa Cruz, Bolivia', CAST(N'1986-11-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (48, N'Saúl', N'Carrillo', N'Cárdenas', N'saúlcarrillo@gmail.com', N'Calle 229, El Torno, Santa Cruz, Bolivia', CAST(N'1997-07-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (49, N'Víctor', N'Acosta', N'Pacheco', N'víctoracosta@gmail.com', N'Calle 386, Warnes, Santa Cruz, Bolivia', CAST(N'1979-08-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (50, N'Francisco', N'Campos', N'Villegas', N'franciscocampos@gmail.com', N'Calle 487, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1985-07-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (51, N'Iván', N'Duarte', N'Pineda', N'ivánduarte@gmail.com', N'Calle 89, El Puente, Santa Cruz, Bolivia', CAST(N'1979-06-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (52, N'Jesús', N'Miranda', N'Carrasco', N'jesúsmiranda@gmail.com', N'Calle 415, El Torno, Santa Cruz, Bolivia', CAST(N'1975-03-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (53, N'Jaime', N'Bravo', N'Robles', N'jaimebravo@gmail.com', N'Calle 990, Montero, Santa Cruz, Bolivia', CAST(N'2000-12-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (54, N'Aarón', N'Meléndez', N'Navarro', N'aarónmeléndez@gmail.com', N'Calle 12, Portachuelo, Santa Cruz, Bolivia', CAST(N'1995-11-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (55, N'Rubén', N'Peña', N'Escobar', N'rubénpeña@gmail.com', N'Calle 443, Montero, Santa Cruz, Bolivia', CAST(N'1991-08-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (56, N'Ian', N'Padilla', N'Palacios', N'ianpadilla@gmail.com', N'Calle 756, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1989-07-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (57, N'Guillermo', N'Cervantes', N'Valencia', N'guillermocervantes@gmail.com', N'Calle 610, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1977-02-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (58, N'Erik', N'Rangel', N'Espinosa', N'erikrangel@gmail.com', N'Calle 410, Portachuelo, Santa Cruz, Bolivia', CAST(N'1983-09-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (59, N'Mohamed', N'Tapia', N'Gálvez', N'mohamedtapia@gmail.com', N'Calle 362, La Guardia, Santa Cruz, Bolivia', CAST(N'1976-11-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (60, N'Julen', N'Solís', N'Bautista', N'julensolís@gmail.com', N'Calle 56, Portachuelo, Santa Cruz, Bolivia', CAST(N'1985-02-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (61, N'Luis', N'Arellano', N'Luna', N'luisarellano@gmail.com', N'Calle 15, Portachuelo, Santa Cruz, Bolivia', CAST(N'1982-04-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (62, N'Pau', N'Zavala', N'Montoya', N'pauzavala@gmail.com', N'Calle 338, Warnes, Santa Cruz, Bolivia', CAST(N'2000-08-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (63, N'Unai', N'Cárdenas', N'Caballero', N'unaicárdenas@gmail.com', N'Calle 393, La Guardia, Santa Cruz, Bolivia', CAST(N'1977-01-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (64, N'Rafael', N'Pacheco', N'Delgado', N'rafaelpacheco@gmail.com', N'Calle 851, La Guardia, Santa Cruz, Bolivia', CAST(N'1979-11-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (65, N'Joel', N'Villegas', N'Aguayo', N'joelvillegas@gmail.com', N'Calle 610, Montero, Santa Cruz, Bolivia', CAST(N'1990-12-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (66, N'Alberto', N'Pineda', N'Acuña', N'albertopineda@gmail.com', N'Calle 111, Portachuelo, Santa Cruz, Bolivia', CAST(N'1993-12-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (67, N'Pedro', N'Carrasco', N'Fierro', N'pedrocarrasco@gmail.com', N'Calle 118, La Guardia, Santa Cruz, Bolivia', CAST(N'1987-02-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (68, N'Raúl', N'Robles', N'Beltrán', N'raúlrobles@gmail.com', N'Calle 1, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1978-04-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (69, N'Aitor', N'Navarro', N'Bustamante', N'aitornavarro@gmail.com', N'Calle 981, Warnes, Santa Cruz, Bolivia', CAST(N'1986-02-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (70, N'Santiago', N'Escobar', N'Ochoa', N'santiagoescobar@gmail.com', N'Calle 71, Montero, Santa Cruz, Bolivia', CAST(N'1994-07-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (71, N'Rayan', N'Palacios', N'Vega', N'rayanpalacios@gmail.com', N'Calle 299, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1979-01-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (72, N'Pol', N'Valencia', N'Zúñiga', N'polvalencia@gmail.com', N'Calle 324, Montero, Santa Cruz, Bolivia', CAST(N'1986-03-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (73, N'Nil', N'Espinosa', N'Alvarado', N'nilespinosa@gmail.com', N'Calle 963, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1981-09-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (74, N'Noah', N'Gálvez', N'Medina', N'noahgálvez@gmail.com', N'Calle 28, La Guardia, Santa Cruz, Bolivia', CAST(N'1998-05-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (75, N'Jan', N'Bautista', N'Bernal', N'janbautista@gmail.com', N'Calle 93, Portachuelo, Santa Cruz, Bolivia', CAST(N'1975-08-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (76, N'Asier', N'Luna', N'Miranda', N'asierluna@gmail.com', N'Calle 321, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1988-05-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (77, N'Fernando', N'Montoya', N'Durán', N'fernandomontoya@gmail.com', N'Calle 882, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1975-12-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (78, N'Alonso', N'Caballero', N'Vega', N'alonsocaballero@gmail.com', N'Calle 173, Warnes, Santa Cruz, Bolivia', CAST(N'1985-03-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (79, N'Matías', N'Delgado', N'Olvera', N'matíasdelgado@gmail.com', N'Calle 783, Montero, Santa Cruz, Bolivia', CAST(N'1989-03-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (80, N'Biel', N'Aguayo', N'Méndez', N'bielaguayo@gmail.com', N'Calle 860, Warnes, Santa Cruz, Bolivia', CAST(N'1996-07-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (81, N'Andrés', N'Acuña', N'Quiroz', N'andrésacuña@gmail.com', N'Calle 240, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1987-11-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (82, N'Axel', N'Fierro', N'Rivas', N'axelfierro@gmail.com', N'Calle 297, Montero, Santa Cruz, Bolivia', CAST(N'1997-10-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (83, N'Ismael', N'Beltrán', N'Fuentes', N'ismaelbeltrán@gmail.com', N'Calle 319, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1993-01-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (84, N'Martí', N'Bustamante', N'Reyes', N'martíbustamante@gmail.com', N'Calle 412, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1975-09-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (85, N'Arnau', N'Ochoa', N'Osorio', N'arnauochoa@gmail.com', N'Calle 218, Warnes, Santa Cruz, Bolivia', CAST(N'1978-06-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (86, N'Imran', N'Vega', N'Esquivel', N'imranvega@gmail.com', N'Calle 781, Warnes, Santa Cruz, Bolivia', CAST(N'1975-01-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (87, N'Luka', N'Zúñiga', N'Márquez', N'lukazúñiga@gmail.com', N'Calle 565, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1978-03-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (88, N'Ignacio', N'Alvarado', N'Delgado', N'ignacioalvarado@gmail.com', N'Calle 664, Montero, Santa Cruz, Bolivia', CAST(N'1980-11-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (89, N'Aleix', N'Medina', N'Briones', N'aleixmedina@gmail.com', N'Calle 351, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1993-06-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (90, N'Alan', N'Bernal', N'Soria', N'alanbernal@gmail.com', N'Calle 358, El Puente, Santa Cruz, Bolivia', CAST(N'1998-11-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (91, N'Elías', N'Miranda', N'Nava', N'elíasmiranda@gmail.com', N'Calle 934, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1995-04-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (92, N'Omar', N'Durán', N'García', N'omardurán@gmail.com', N'Calle 72, Warnes, Santa Cruz, Bolivia', CAST(N'1981-10-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (93, N'Isaac', N'Vega', N'Granados', N'isaacvega@gmail.com', N'Calle 835, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1988-06-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (94, N'Youssef', N'Olvera', N'Magaña', N'youssefolvera@gmail.com', N'Calle 237, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'2000-01-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (95, N'Jon', N'Méndez', N'Valdés', N'jonméndez@gmail.com', N'Calle 245, La Guardia, Santa Cruz, Bolivia', CAST(N'1994-04-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (96, N'Teo', N'Quiroz', N'Ledezma', N'teoquiroz@gmail.com', N'Calle 176, Montero, Santa Cruz, Bolivia', CAST(N'1975-04-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (97, N'Mauro', N'Rivas', N'Saucedo', N'maurorivas@gmail.com', N'Calle 130, El Torno, Santa Cruz, Bolivia', CAST(N'1991-02-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (98, N'Óscar', N'Fuentes', N'Almanza', N'óscarfuentes@gmail.com', N'Calle 154, El Puente, Santa Cruz, Bolivia', CAST(N'1999-05-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (99, N'Cristian', N'Reyes', N'Favela', N'cristianreyes@gmail.com', N'Calle 792, Portachuelo, Santa Cruz, Bolivia', CAST(N'1980-01-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (100, N'Leonardo', N'Osorio', N'Leyva', N'leonardoosorio@gmail.com', N'Calle 805, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1974-04-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (101, N'Abel ', N'Esquivel', N'Aguirre', N'abel esquivel@gmail.com', N'Calle 20, La Guardia, Santa Cruz, Bolivia', CAST(N'1980-10-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (102, N' Adrián ', N'Márquez', N'Madrigal', N' adrián márquez@gmail.com', N'Calle 256, La Guardia, Santa Cruz, Bolivia', CAST(N'1998-08-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (103, N' Alejandro ', N'Delgado', N'Carranza', N' alejandro delgado@gmail.com', N'Calle 92, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1997-01-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (104, N' Ángel ', N'Briones', N'Villarreal', N' ángel briones@gmail.com', N'Calle 993, Portachuelo, Santa Cruz, Bolivia', CAST(N'1993-04-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (105, N' Carlos ', N'Soria', N'Aguilar', N' carlos soria@gmail.com', N'Calle 712, La Guardia, Santa Cruz, Bolivia', CAST(N'1996-01-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (106, N' César ', N'Nava', N'Tapia', N' césar nava@gmail.com', N'Calle 421, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1983-01-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (107, N' Bruno ', N'García', N'Hernández', N' bruno garcía@gmail.com', N'Calle 185, Portachuelo, Santa Cruz, Bolivia', CAST(N'1994-12-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (108, N' Daniel ', N'Granados', N'Soria', N' daniel granados@gmail.com', N'Calle 971, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1996-08-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (109, N' Darío ', N'Magaña', N'Cabral', N' darío magaña@gmail.com', N'Calle 268, Warnes, Santa Cruz, Bolivia', CAST(N'1986-01-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (110, N' David ', N'Valdés', N'Cedillo', N' david valdés@gmail.com', N'Calle 18, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1980-04-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (111, N' Diego ', N'Ledezma', N'Serrano', N' diego ledezma@gmail.com', N'Calle 679, La Guardia, Santa Cruz, Bolivia', CAST(N'1986-01-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (112, N' Emilio ', N'Saucedo', N'Escamilla', N' emilio saucedo@gmail.com', N'Calle 120, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1979-08-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (113, N' Fabián ', N'Almanza', N'Salgado', N' fabián almanza@gmail.com', N'Calle 991, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1990-01-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (114, N' Felipe ', N'Favela', N'Mares', N' felipe favela@gmail.com', N'Calle 498, La Guardia, Santa Cruz, Bolivia', CAST(N'1989-07-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (115, N' Gabriel ', N'Leyva', N'Castañeda', N' gabriel leyva@gmail.com', N'Calle 691, Montero, Santa Cruz, Bolivia', CAST(N'1992-04-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (116, N' Héctor ', N'Aguirre', N'Carrillo', N' héctor aguirre@gmail.com', N'Calle 825, Montero, Santa Cruz, Bolivia', CAST(N'1990-10-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (117, N' Hugo ', N'Madrigal', N'Figueroa', N' hugo madrigal@gmail.com', N'Calle 777, Warnes, Santa Cruz, Bolivia', CAST(N'1974-01-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (118, N' Jacobo ', N'Carranza', N'Rangel', N' jacobo carranza@gmail.com', N'Calle 169, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1973-12-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (119, N' Jaime ', N'Villarreal', N'Salinas', N' jaime villarreal@gmail.com', N'Calle 543, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1999-08-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (120, N' Joaquín ', N'Aguilar', N'Delarosa', N' joaquín aguilar@gmail.com', N'Calle 370, La Guardia, Santa Cruz, Bolivia', CAST(N'1985-12-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (121, N' Juan ', N'Tapia', N'Armijo', N' juan tapia@gmail.com', N'Calle 380, La Guardia, Santa Cruz, Bolivia', CAST(N'1997-05-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (122, N' Leonardo ', N'Hernández', N'Alonzo', N' leonardo hernández@gmail.com', N'Calle 882, El Puente, Santa Cruz, Bolivia', CAST(N'1993-08-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (123, N' Leo ', N'Soria', N'Covarrubias', N' leo soria@gmail.com', N'Calle 602, La Guardia, Santa Cruz, Bolivia', CAST(N'1999-04-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (124, N' Lucas ', N'Cabral', N'Valenzuela', N' lucas cabral@gmail.com', N'Calle 363, Warnes, Santa Cruz, Bolivia', CAST(N'1990-09-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (125, N' Marcos ', N'Cedillo', N'Verdugo', N' marcos cedillo@gmail.com', N'Calle 885, Warnes, Santa Cruz, Bolivia', CAST(N'1978-12-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (126, N' Martín ', N'Serrano', N'Sosa', N' martín serrano@gmail.com', N'Calle 417, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1996-03-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (127, N' Mateo ', N'Escamilla', N'Zambrano', N' mateo escamilla@gmail.com', N'Calle 114, El Torno, Santa Cruz, Bolivia', CAST(N'1982-04-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (128, N' Matías ', N'Salgado', N'García', N' matías salgado@gmail.com', N'Calle 433, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1984-06-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (129, N' Miguel ', N'Mares', N'Rodríguez', N' miguel mares@gmail.com', N'Calle 733, Montero, Santa Cruz, Bolivia', CAST(N'1987-09-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (130, N' Nicolás ', N'Castañeda', N'López', N' nicolás castañeda@gmail.com', N'Calle 793, El Puente, Santa Cruz, Bolivia', CAST(N'1995-05-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (131, N' Pablo ', N'Carrillo', N'Martínez', N' pablo carrillo@gmail.com', N'Calle 93, La Guardia, Santa Cruz, Bolivia', CAST(N'1983-09-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (132, N' Raúl ', N'Figueroa', N'Pérez', N' raúl figueroa@gmail.com', N'Calle 477, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1977-01-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (133, N' Samuel ', N'Rangel', N'Sánchez', N' samuel rangel@gmail.com', N'Calle 470, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1997-04-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (134, N' Santiago ', N'Salinas', N'González', N' santiago salinas@gmail.com', N'Calle 563, Warnes, Santa Cruz, Bolivia', CAST(N'1990-10-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (135, N' Sebastián ', N'Delarosa', N'Gómez', N' sebastián delarosa@gmail.com', N'Calle 738, El Puente, Santa Cruz, Bolivia', CAST(N'1993-02-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (136, N' Tomás ', N'Armijo', N'Fernández', N' tomás armijo@gmail.com', N'Calle 37, El Puente, Santa Cruz, Bolivia', CAST(N'1985-02-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (137, N' Tristán ', N'Alonzo', N'Díaz', N' tristán alonzo@gmail.com', N'Calle 665, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1993-12-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (138, N' Joan ', N'Covarrubias', N'Torres', N' joan covarrubias@gmail.com', N'Calle 74, Warnes, Santa Cruz, Bolivia', CAST(N'1980-06-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (139, N' Andrés ', N'Valenzuela', N'Moreno', N' andrés valenzuela@gmail.com', N'Calle 794, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1986-02-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (140, N' Ricardo ', N'Verdugo', N'Ortiz', N' ricardo verdugo@gmail.com', N'Calle 203, El Torno, Santa Cruz, Bolivia', CAST(N'1991-12-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (141, N' Manuel ', N'Sosa', N'Ramos', N' manuel sosa@gmail.com', N'Calle 992, Portachuelo, Santa Cruz, Bolivia', CAST(N'1988-07-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (142, N' Ezequiel ', N'Zambrano', N'Ruiz', N' ezequiel zambrano@gmail.com', N'Calle 838, Portachuelo, Santa Cruz, Bolivia', CAST(N'1997-07-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (143, N' Francisco ', N'García', N'Vargas', N' francisco garcía@gmail.com', N'Calle 6, El Torno, Santa Cruz, Bolivia', CAST(N'1991-08-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (144, N' Elías ', N'Rodríguez', N'Flores', N' elías rodríguez@gmail.com', N'Calle 570, Portachuelo, Santa Cruz, Bolivia', CAST(N'1993-01-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (145, N' Blas ', N'López', N'Herrera', N' blas lópez@gmail.com', N'Calle 39, El Torno, Santa Cruz, Bolivia', CAST(N'1975-03-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (146, N' Alfonso ', N'Martínez', N'Castro', N' alfonso martínez@gmail.com', N'Calle 633, El Torno, Santa Cruz, Bolivia', CAST(N'1974-12-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (147, N' Ulises ', N'Pérez', N'Romero', N' ulises pérez@gmail.com', N'Calle 859, Warnes, Santa Cruz, Bolivia', CAST(N'1977-10-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (148, N' Gerardo ', N'Sánchez', N'Gonzales', N' gerardo sánchez@gmail.com', N'Calle 92, Montero, Santa Cruz, Bolivia', CAST(N'1981-10-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (149, N' Alfredo ', N'González', N'Aguilar', N' alfredo gonzález@gmail.com', N'Calle 556, Portachuelo, Santa Cruz, Bolivia', CAST(N'1983-06-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (150, N' Álvaro ', N'Gómez', N'Mendoza', N' álvaro gómez@gmail.com', N'Calle 284, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1979-04-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (151, N' Amadeo ', N'Fernández', N'Herrera', N' amadeo fernández@gmail.com', N'Calle 369, El Torno, Santa Cruz, Bolivia', CAST(N'1992-10-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (152, N' Amancio ', N'Díaz', N'Espinoza', N' amancio díaz@gmail.com', N'Calle 188, El Puente, Santa Cruz, Bolivia', CAST(N'1996-11-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (153, N' Antonio ', N'Torres', N'Gutiérrez', N' antonio torres@gmail.com', N'Calle 546, La Guardia, Santa Cruz, Bolivia', CAST(N'1999-05-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (154, N' Baltasar ', N'Moreno', N'Reyes', N' baltasar moreno@gmail.com', N'Calle 219, Montero, Santa Cruz, Bolivia', CAST(N'1999-06-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (155, N' Beltrán ', N'Ortiz', N'Valdez', N' beltrán ortiz@gmail.com', N'Calle 216, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1998-02-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (156, N' Benito ', N'Ramos', N'Guzmán', N' benito ramos@gmail.com', N'Calle 885, Portachuelo, Santa Cruz, Bolivia', CAST(N'1993-03-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (157, N' Rufino ', N'Ruiz', N'Ramírez', N' rufino ruiz@gmail.com', N'Calle 89, El Puente, Santa Cruz, Bolivia', CAST(N'1988-08-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (158, N' Boris ', N'Vargas', N'Ríos', N' boris vargas@gmail.com', N'Calle 729, Warnes, Santa Cruz, Bolivia', CAST(N'1975-08-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (159, N' Camilo ', N'Flores', N'Chávez', N' camilo flores@gmail.com', N'Calle 547, Montero, Santa Cruz, Bolivia', CAST(N'1981-03-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (160, N' Ciro ', N'Herrera', N'Morales', N' ciro herrera@gmail.com', N'Calle 93, La Guardia, Santa Cruz, Bolivia', CAST(N'1975-11-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (161, N' Conrado ', N'Castro', N'Núñez', N' conrado castro@gmail.com', N'Calle 1, La Guardia, Santa Cruz, Bolivia', CAST(N'1985-01-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (162, N' Donato', N'Romero', N'Salazar', N' donatoromero@gmail.com', N'Calle 449, Warnes, Santa Cruz, Bolivia', CAST(N'1981-09-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (163, N'Florentino ', N'Gonzales', N'Rivera', N'florentino gonzales@gmail.com', N'Calle 501, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1983-04-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (164, N' Saturnino ', N'Aguilar', N'Castillo', N' saturnino aguilar@gmail.com', N'Calle 579, El Torno, Santa Cruz, Bolivia', CAST(N'1994-03-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (165, N' Segundo ', N'Mendoza', N'Jiménez', N' segundo mendoza@gmail.com', N'Calle 894, Warnes, Santa Cruz, Bolivia', CAST(N'1981-01-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (166, N' Anastasio ', N'Herrera', N'Vázquez', N' anastasio herrera@gmail.com', N'Calle 597, Warnes, Santa Cruz, Bolivia', CAST(N'1977-05-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (167, N' Cipriano ', N'Espinoza', N'Fuentes', N' cipriano espinoza@gmail.com', N'Calle 175, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1995-08-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (168, N' Teófilo ', N'Gutiérrez', N'Medina', N' teófilo gutiérrez@gmail.com', N'Calle 293, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1987-12-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (169, N' Casimiro ', N'Reyes', N'Cortez', N' casimiro reyes@gmail.com', N'Calle 611, La Guardia, Santa Cruz, Bolivia', CAST(N'1994-12-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (170, N' Bonifacio ', N'Valdez', N'Benítez', N' bonifacio valdez@gmail.com', N'Calle 570, El Torno, Santa Cruz, Bolivia', CAST(N'1984-01-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (171, N' Victorino ', N'Guzmán', N'Soto', N' victorino guzmán@gmail.com', N'Calle 761, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1999-03-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (172, N' Eleuterio ', N'Ramírez', N'León', N' eleuterio ramírez@gmail.com', N'Calle 269, Warnes, Santa Cruz, Bolivia', CAST(N'1992-11-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (173, N' Urbano ', N'Ríos', N'Gallegos', N' urbano ríos@gmail.com', N'Calle 636, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1999-07-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (174, N' Severino ', N'Chávez', N'Rosales', N' severino chávez@gmail.com', N'Calle 949, Montero, Santa Cruz, Bolivia', CAST(N'1975-02-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (175, N' Inocencio ', N'Morales', N'Carrillo', N' inocencio morales@gmail.com', N'Calle 475, Portachuelo, Santa Cruz, Bolivia', CAST(N'2000-12-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (176, N' Primitivo ', N'Núñez', N'Acosta', N' primitivo núñez@gmail.com', N'Calle 236, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1998-02-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (177, N' Bautista ', N'Salazar', N'Campos', N' bautista salazar@gmail.com', N'Calle 121, El Torno, Santa Cruz, Bolivia', CAST(N'1973-12-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (178, N' Agapito ', N'Rivera', N'Duarte', N' agapito rivera@gmail.com', N'Calle 450, El Torno, Santa Cruz, Bolivia', CAST(N'1993-08-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (179, N' Benedicto ', N'Castillo', N'Miranda', N' benedicto castillo@gmail.com', N'Calle 49, La Guardia, Santa Cruz, Bolivia', CAST(N'1987-09-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (180, N' Enrique ', N'Jiménez', N'Bravo', N' enrique jiménez@gmail.com', N'Calle 620, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1988-06-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (181, N' Eugenio ', N'Vázquez', N'Meléndez', N' eugenio vázquez@gmail.com', N'Calle 870, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1974-04-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (182, N' Estanislao ', N'Fuentes', N'Peña', N' estanislao fuentes@gmail.com', N'Calle 542, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1980-10-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (183, N' Fausto ', N'Medina', N'Padilla', N' fausto medina@gmail.com', N'Calle 715, El Torno, Santa Cruz, Bolivia', CAST(N'1996-01-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (184, N' Faustino ', N'Cortez', N'Cervantes', N' faustino cortez@gmail.com', N'Calle 433, El Torno, Santa Cruz, Bolivia', CAST(N'1999-12-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (185, N' Felipe ', N'Benítez', N'Rangel', N' felipe benítez@gmail.com', N'Calle 229, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1991-09-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (186, N' Félix ', N'Soto', N'Tapia', N' félix soto@gmail.com', N'Calle 409, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1997-01-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (187, N' Fermín ', N'León', N'Solís', N' fermín león@gmail.com', N'Calle 980, El Torno, Santa Cruz, Bolivia', CAST(N'1985-12-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (188, N' Francisco ', N'Gallegos', N'Arellano', N' francisco gallegos@gmail.com', N'Calle 131, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1988-08-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (189, N' Gaspar ', N'Rosales', N'Zavala', N' gaspar rosales@gmail.com', N'Calle 803, El Torno, Santa Cruz, Bolivia', CAST(N'1981-05-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (190, N' Genaro ', N'Carrillo', N'Cárdenas', N' genaro carrillo@gmail.com', N'Calle 368, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1994-12-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (191, N' Hilario ', N'Acosta', N'Pacheco', N' hilario acosta@gmail.com', N'Calle 864, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1993-07-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (192, N' Hugo ', N'Campos', N'Villegas', N' hugo campos@gmail.com', N'Calle 406, Montero, Santa Cruz, Bolivia', CAST(N'1988-05-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (193, N' Ignacio ', N'Duarte', N'Pineda', N' ignacio duarte@gmail.com', N'Calle 482, El Puente, Santa Cruz, Bolivia', CAST(N'1979-08-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (194, N' Ireneo ', N'Miranda', N'Carrasco', N' ireneo miranda@gmail.com', N'Calle 679, La Guardia, Santa Cruz, Bolivia', CAST(N'1992-03-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (195, N' Ismael ', N'Bravo', N'Robles', N' ismael bravo@gmail.com', N'Calle 28, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1978-03-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (196, N' Joaquín ', N'Meléndez', N'Navarro', N' joaquín meléndez@gmail.com', N'Calle 391, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1996-01-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (197, N' José ', N'Peña', N'Escobar', N' josé peña@gmail.com', N'Calle 992, El Puente, Santa Cruz, Bolivia', CAST(N'2000-12-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (198, N' Juan ', N'Padilla', N'Palacios', N' juan padilla@gmail.com', N'Calle 335, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1973-10-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (199, N' Julián ', N'Cervantes', N'Valencia', N' julián cervantes@gmail.com', N'Calle 81, Warnes, Santa Cruz, Bolivia', CAST(N'1981-03-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (200, N' Justo ', N'Rangel', N'Espinosa', N' justo rangel@gmail.com', N'Calle 683, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1990-07-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (201, N' Leopoldo ', N'Tapia', N'Gálvez', N' leopoldo tapia@gmail.com', N'Calle 904, La Guardia, Santa Cruz, Bolivia', CAST(N'1990-07-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (202, N' León ', N'Solís', N'Bautista', N' león solís@gmail.com', N'Calle 700, Warnes, Santa Cruz, Bolivia', CAST(N'1981-07-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (203, N' Lisandro ', N'Arellano', N'Luna', N' lisandro arellano@gmail.com', N'Calle 90, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1978-09-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (204, N' Lorenzo ', N'Zavala', N'Montoya', N' lorenzo zavala@gmail.com', N'Calle 458, Montero, Santa Cruz, Bolivia', CAST(N'1977-07-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (205, N' Lucas ', N'Cárdenas', N'Caballero', N' lucas cárdenas@gmail.com', N'Calle 866, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1983-05-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (206, N' Manuel ', N'Pacheco', N'Delgado', N' manuel pacheco@gmail.com', N'Calle 910, Portachuelo, Santa Cruz, Bolivia', CAST(N'1991-06-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (207, N' Mateo ', N'Villegas', N'Aguayo', N' mateo villegas@gmail.com', N'Calle 726, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1994-02-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (208, N' Pedro ', N'Pineda', N'Acuña', N' pedro pineda@gmail.com', N'Calle 241, Warnes, Santa Cruz, Bolivia', CAST(N'1999-01-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (209, N' Pío ', N'Carrasco', N'Fierro', N' pío carrasco@gmail.com', N'Calle 381, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1989-02-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (210, N' Romeo ', N'Robles', N'Beltrán', N' romeo robles@gmail.com', N'Calle 676, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1976-09-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (211, N' Roque ', N'Navarro', N'Bustamante', N' roque navarro@gmail.com', N'Calle 232, La Guardia, Santa Cruz, Bolivia', CAST(N'1985-04-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (212, N' Rufino ', N'Escobar', N'Ochoa', N' rufino escobar@gmail.com', N'Calle 750, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1991-08-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (213, N' Santiago ', N'Palacios', N'Vega', N' santiago palacios@gmail.com', N'Calle 268, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1973-08-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (214, N' Salvador ', N'Valencia', N'Zúñiga', N' salvador valencia@gmail.com', N'Calle 928, El Puente, Santa Cruz, Bolivia', CAST(N'1977-04-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (215, N' Simón ', N'Espinosa', N'Alvarado', N' simón espinosa@gmail.com', N'Calle 978, Portachuelo, Santa Cruz, Bolivia', CAST(N'2000-04-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (216, N' Valentín ', N'Gálvez', N'Medina', N' valentín gálvez@gmail.com', N'Calle 157, El Puente, Santa Cruz, Bolivia', CAST(N'1986-06-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (217, N' Valentino ', N'Bautista', N'Bernal', N' valentino bautista@gmail.com', N'Calle 770, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1989-10-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (218, N' Vicente ', N'Luna', N'Miranda', N' vicente luna@gmail.com', N'Calle 857, El Puente, Santa Cruz, Bolivia', CAST(N'1977-06-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (219, N' Víctor ', N'Montoya', N'Durán', N' víctor montoya@gmail.com', N'Calle 905, El Torno, Santa Cruz, Bolivia', CAST(N'1999-12-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (220, N' Abundio ', N'Caballero', N'Vega', N' abundio caballero@gmail.com', N'Calle 96, La Guardia, Santa Cruz, Bolivia', CAST(N'1990-09-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (221, N' Ambrosio', N'Delgado', N'Olvera', N' ambrosiodelgado@gmail.com', N'Calle 936, Portachuelo, Santa Cruz, Bolivia', CAST(N'1999-05-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (222, N' Aniceto ', N'Aguayo', N'Méndez', N' aniceto aguayo@gmail.com', N'Calle 150, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1981-12-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (223, N' Anselmo ', N'Acuña', N'Quiroz', N' anselmo acuña@gmail.com', N'Calle 543, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1986-10-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (224, N' Apolonio ', N'Fierro', N'Rivas', N' apolonio fierro@gmail.com', N'Calle 566, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'2000-04-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (225, N' Aquilino ', N'Beltrán', N'Fuentes', N' aquilino beltrán@gmail.com', N'Calle 789, El Torno, Santa Cruz, Bolivia', CAST(N'2000-07-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (226, N' Arsenio ', N'Bustamante', N'Reyes', N' arsenio bustamante@gmail.com', N'Calle 349, Montero, Santa Cruz, Bolivia', CAST(N'1983-04-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (227, N' Atanasio ', N'Ochoa', N'Osorio', N' atanasio ochoa@gmail.com', N'Calle 882, Portachuelo, Santa Cruz, Bolivia', CAST(N'1998-02-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (228, N' Atilano ', N'Vega', N'Esquivel', N' atilano vega@gmail.com', N'Calle 802, Portachuelo, Santa Cruz, Bolivia', CAST(N'1993-11-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (229, N' Avelino ', N'Zúñiga', N'Márquez', N' avelino zúñiga@gmail.com', N'Calle 478, Montero, Santa Cruz, Bolivia', CAST(N'1989-12-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (230, N' Bartolo ', N'Alvarado', N'Delgado', N' bartolo alvarado@gmail.com', N'Calle 979, Portachuelo, Santa Cruz, Bolivia', CAST(N'1980-04-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (231, N' Basilio ', N'Medina', N'Briones', N' basilio medina@gmail.com', N'Calle 425, Warnes, Santa Cruz, Bolivia', CAST(N'1983-10-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (232, N' Baudilio ', N'Bernal', N'Soria', N' baudilio bernal@gmail.com', N'Calle 309, El Torno, Santa Cruz, Bolivia', CAST(N'1995-03-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (233, N' Benigno ', N'Miranda', N'Nava', N' benigno miranda@gmail.com', N'Calle 328, La Guardia, Santa Cruz, Bolivia', CAST(N'1998-02-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (234, N' Buenaventura ', N'Durán', N'García', N' buenaventura durán@gmail.com', N'Calle 577, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1985-12-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (235, N' Calixto', N'Vega', N'Granados', N' calixtovega@gmail.com', N'Calle 417, El Torno, Santa Cruz, Bolivia', CAST(N'1998-01-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (236, N' Celedonio ', N'Olvera', N'Magaña', N' celedonio olvera@gmail.com', N'Calle 301, Warnes, Santa Cruz, Bolivia', CAST(N'1990-04-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (237, N' Cirilo ', N'Méndez', N'Valdés', N' cirilo méndez@gmail.com', N'Calle 814, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1986-07-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (238, N' Clemente ', N'Quiroz', N'Ledezma', N' clemente quiroz@gmail.com', N'Calle 470, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1990-02-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (239, N' Conrado ', N'Rivas', N'Saucedo', N' conrado rivas@gmail.com', N'Calle 934, Portachuelo, Santa Cruz, Bolivia', CAST(N'1987-11-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (240, N' Crisóstomo ', N'Fuentes', N'Almanza', N' crisóstomo fuentes@gmail.com', N'Calle 881, Portachuelo, Santa Cruz, Bolivia', CAST(N'1980-09-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (241, N' Crispín ', N'Reyes', N'Favela', N' crispín reyes@gmail.com', N'Calle 408, Montero, Santa Cruz, Bolivia', CAST(N'1998-04-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (242, N' Críspulo ', N'Osorio', N'Leyva', N' críspulo osorio@gmail.com', N'Calle 913, Montero, Santa Cruz, Bolivia', CAST(N'1989-10-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (243, N' Dionisio ', N'Esquivel', N'Aguirre', N' dionisio esquivel@gmail.com', N'Calle 268, El Torno, Santa Cruz, Bolivia', CAST(N'1988-09-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (244, N' Eliodoro ', N'Márquez', N'Madrigal', N' eliodoro márquez@gmail.com', N'Calle 992, La Guardia, Santa Cruz, Bolivia', CAST(N'1990-06-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (245, N' Eliseo ', N'Delgado', N'Carranza', N' eliseo delgado@gmail.com', N'Calle 538, La Guardia, Santa Cruz, Bolivia', CAST(N'1976-08-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (246, N' Emerico ', N'Briones', N'Villarreal', N' emerico briones@gmail.com', N'Calle 291, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1985-11-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (247, N' Emeterio ', N'Soria', N'Aguilar', N' emeterio soria@gmail.com', N'Calle 111, El Torno, Santa Cruz, Bolivia', CAST(N'1986-07-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (248, N' Epifanio ', N'Nava', N'Tapia', N' epifanio nava@gmail.com', N'Calle 351, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1976-11-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (249, N' Eufrasio ', N'García', N'Hernández', N' eufrasio garcía@gmail.com', N'Calle 303, La Guardia, Santa Cruz, Bolivia', CAST(N'1976-06-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (250, N' Eulogio ', N'Granados', N'Soria', N' eulogio granados@gmail.com', N'Calle 408, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1979-03-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (251, N' Feliciano ', N'Magaña', N'Cabral', N' feliciano magaña@gmail.com', N'Calle 26, Warnes, Santa Cruz, Bolivia', CAST(N'1989-07-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (252, N' Florencio ', N'Valdés', N'Cedillo', N' florencio valdés@gmail.com', N'Calle 542, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1997-10-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (253, N' Froilán ', N'Ledezma', N'Serrano', N' froilán ledezma@gmail.com', N'Calle 573, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1978-01-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (254, N' Fructuoso ', N'Saucedo', N'Escamilla', N' fructuoso saucedo@gmail.com', N'Calle 663, Montero, Santa Cruz, Bolivia', CAST(N'1975-08-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (255, N' Frutos ', N'Almanza', N'Salgado', N' frutos almanza@gmail.com', N'Calle 167, Montero, Santa Cruz, Bolivia', CAST(N'1993-02-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (256, N' Gregorio ', N'Favela', N'Mares', N' gregorio favela@gmail.com', N'Calle 886, Warnes, Santa Cruz, Bolivia', CAST(N'1981-09-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (257, N' Gumersindo ', N'Leyva', N'Castañeda', N' gumersindo leyva@gmail.com', N'Calle 730, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1975-01-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (258, N' Hermenegildo ', N'Aguirre', N'Carrillo', N' hermenegildo aguirre@gmail.com', N'Calle 814, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1985-01-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (259, N' Herminio ', N'Madrigal', N'Figueroa', N' herminio madrigal@gmail.com', N'Calle 407, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1984-09-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (260, N' Higinio ', N'Carranza', N'Rangel', N' higinio carranza@gmail.com', N'Calle 49, Portachuelo, Santa Cruz, Bolivia', CAST(N'1979-11-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (261, N' Hipólito ', N'Villarreal', N'Salinas', N' hipólito villarreal@gmail.com', N'Calle 840, El Puente, Santa Cruz, Bolivia', CAST(N'1975-09-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (262, N' Indalecio ', N'Aguilar', N'Delarosa', N' indalecio aguilar@gmail.com', N'Calle 865, El Puente, Santa Cruz, Bolivia', CAST(N'1993-11-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (263, N' Isidoro ', N'Tapia', N'Armijo', N' isidoro tapia@gmail.com', N'Calle 415, Montero, Santa Cruz, Bolivia', CAST(N'1975-12-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (264, N' Laureano ', N'Hernández', N'Alonzo', N' laureano hernández@gmail.com', N'Calle 537, El Torno, Santa Cruz, Bolivia', CAST(N'1989-03-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (265, N' Leandro ', N'Soria', N'Covarrubias', N' leandro soria@gmail.com', N'Calle 271, Montero, Santa Cruz, Bolivia', CAST(N'1999-12-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (266, N' Leocadio ', N'Cabral', N'Valenzuela', N' leocadio cabral@gmail.com', N'Calle 172, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1975-02-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (267, N' Leovigildo ', N'Cedillo', N'Verdugo', N' leovigildo cedillo@gmail.com', N'Calle 48, El Torno, Santa Cruz, Bolivia', CAST(N'1986-05-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (268, N' Lope ', N'Serrano', N'Sosa', N' lope serrano@gmail.com', N'Calle 823, El Puente, Santa Cruz, Bolivia', CAST(N'1981-07-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (269, N' Macario ', N'Escamilla', N'Zambrano', N' macario escamilla@gmail.com', N'Calle 877, Warnes, Santa Cruz, Bolivia', CAST(N'1978-09-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (270, N' Melitón ', N'Salgado', N'García', N' melitón salgado@gmail.com', N'Calle 963, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1999-01-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (271, N' Nemesio ', N'Mares', N'Rodríguez', N' nemesio mares@gmail.com', N'Calle 954, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1980-06-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (272, N' Nicanor ', N'Castañeda', N'López', N' nicanor castañeda@gmail.com', N'Calle 242, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'2000-02-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (273, N' Niceto ', N'Carrillo', N'Martínez', N' niceto carrillo@gmail.com', N'Calle 292, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1976-08-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (274, N' Nicomedes ', N'Figueroa', N'Pérez', N' nicomedes figueroa@gmail.com', N'Calle 920, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1980-04-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (275, N' Odón ', N'Rangel', N'Sánchez', N' odón rangel@gmail.com', N'Calle 136, El Torno, Santa Cruz, Bolivia', CAST(N'2000-02-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (276, N' Orencio ', N'Salinas', N'González', N' orencio salinas@gmail.com', N'Calle 744, Portachuelo, Santa Cruz, Bolivia', CAST(N'1989-08-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (277, N' Pantaleón ', N'Delarosa', N'Gómez', N' pantaleón delarosa@gmail.com', N'Calle 136, Portachuelo, Santa Cruz, Bolivia', CAST(N'1979-05-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (278, N' Patricio ', N'Armijo', N'Fernández', N' patricio armijo@gmail.com', N'Calle 799, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1988-05-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (279, N' Perfecto ', N'Alonzo', N'Díaz', N' perfecto alonzo@gmail.com', N'Calle 65, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1985-08-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (280, N' Petronilo ', N'Covarrubias', N'Torres', N' petronilo covarrubias@gmail.com', N'Calle 887, Portachuelo, Santa Cruz, Bolivia', CAST(N'1988-07-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (281, N' Policarpo ', N'Valenzuela', N'Moreno', N' policarpo valenzuela@gmail.com', N'Calle 742, La Guardia, Santa Cruz, Bolivia', CAST(N'1978-12-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (282, N' Polonio ', N'Verdugo', N'Ortiz', N' polonio verdugo@gmail.com', N'Calle 47, El Puente, Santa Cruz, Bolivia', CAST(N'1993-05-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (283, N' Prudencio ', N'Sosa', N'Ramos', N' prudencio sosa@gmail.com', N'Calle 523, El Puente, Santa Cruz, Bolivia', CAST(N'1994-10-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (284, N' Regino ', N'Zambrano', N'Ruiz', N' regino zambrano@gmail.com', N'Calle 2, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1998-05-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (285, N' Remigio ', N'García', N'Vargas', N' remigio garcía@gmail.com', N'Calle 175, Warnes, Santa Cruz, Bolivia', CAST(N'1996-04-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (286, N' Rómulo ', N'Rodríguez', N'Flores', N' rómulo rodríguez@gmail.com', N'Calle 600, El Torno, Santa Cruz, Bolivia', CAST(N'1990-10-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (287, N' Ruperto ', N'López', N'Herrera', N' ruperto lópez@gmail.com', N'Calle 65, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1979-07-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (288, N' Sandalio ', N'Martínez', N'Castro', N' sandalio martínez@gmail.com', N'Calle 272, El Puente, Santa Cruz, Bolivia', CAST(N'1999-01-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (289, N' Serapio ', N'Pérez', N'Romero', N' serapio pérez@gmail.com', N'Calle 420, Montero, Santa Cruz, Bolivia', CAST(N'1999-05-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (290, N' Servando ', N'Sánchez', N'Gonzales', N' servando sánchez@gmail.com', N'Calle 607, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1981-06-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (291, N' Silvestre ', N'González', N'Aguilar', N' silvestre gonzález@gmail.com', N'Calle 294, Portachuelo, Santa Cruz, Bolivia', CAST(N'1997-11-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (292, N' Sinforoso ', N'Gómez', N'Mendoza', N' sinforoso gómez@gmail.com', N'Calle 612, El Puente, Santa Cruz, Bolivia', CAST(N'1976-11-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (293, N' Sofronio ', N'Fernández', N'Herrera', N' sofronio fernández@gmail.com', N'Calle 492, Montero, Santa Cruz, Bolivia', CAST(N'1993-07-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (294, N' Telesforo ', N'Díaz', N'Espinoza', N' telesforo díaz@gmail.com', N'Calle 978, La Guardia, Santa Cruz, Bolivia', CAST(N'1991-06-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (295, N' Tiburcio ', N'Torres', N'Gutiérrez', N' tiburcio torres@gmail.com', N'Calle 901, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1983-11-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (296, N' Toribio ', N'Moreno', N'Reyes', N' toribio moreno@gmail.com', N'Calle 349, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1992-09-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (297, N' Ulpiano ', N'Ortiz', N'Valdez', N' ulpiano ortiz@gmail.com', N'Calle 876, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1994-09-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (298, N' Valeriano ', N'Ramos', N'Guzmán', N' valeriano ramos@gmail.com', N'Calle 775, Portachuelo, Santa Cruz, Bolivia', CAST(N'1988-10-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (299, N' Venancio ', N'Ruiz', N'Ramírez', N' venancio ruiz@gmail.com', N'Calle 611, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1999-04-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (300, N' Victoriano ', N'Vargas', N'Ríos', N' victoriano vargas@gmail.com', N'Calle 58, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1984-03-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (301, N' Zoilo ', N'Flores', N'Chávez', N' zoilo flores@gmail.com', N'Calle 432, El Torno, Santa Cruz, Bolivia', CAST(N'1998-02-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (302, N' Abdón ', N'Herrera', N'García', N' abdón herrera@gmail.com', N'Calle 804, Warnes, Santa Cruz, Bolivia', CAST(N'1990-02-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (303, N' Abilio ', N'Castro', N'Rodríguez', N' abilio castro@gmail.com', N'Calle 373, La Guardia, Santa Cruz, Bolivia', CAST(N'1980-11-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (304, N' Acacio ', N'Romero', N'López', N' acacio romero@gmail.com', N'Calle 200, Warnes, Santa Cruz, Bolivia', CAST(N'1988-05-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (305, N' Adalberto ', N'Gonzales', N'Martínez', N' adalberto gonzales@gmail.com', N'Calle 984, El Puente, Santa Cruz, Bolivia', CAST(N'1982-03-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (306, N' Adolfo ', N'Aguilar', N'Pérez', N' adolfo aguilar@gmail.com', N'Calle 675, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1994-03-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (307, N' Afrodisio ', N'Mendoza', N'Sánchez', N' afrodisio mendoza@gmail.com', N'Calle 133, Portachuelo, Santa Cruz, Bolivia', CAST(N'1976-02-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (308, N' Ágabo ', N'Herrera', N'González', N' ágabo herrera@gmail.com', N'Calle 761, Portachuelo, Santa Cruz, Bolivia', CAST(N'1983-06-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (309, N' Albino ', N'Espinoza', N'Gómez', N' albino espinoza@gmail.com', N'Calle 6, El Torno, Santa Cruz, Bolivia', CAST(N'1979-04-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (310, N' Alcibíades ', N'Gutiérrez', N'Fernández', N' alcibíades gutiérrez@gmail.com', N'Calle 8, El Torno, Santa Cruz, Bolivia', CAST(N'1993-05-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (311, N' Amalio ', N'Reyes', N'Díaz', N' amalio reyes@gmail.com', N'Calle 530, Portachuelo, Santa Cruz, Bolivia', CAST(N'1985-02-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (312, N' Amasvindo ', N'Valdez', N'Torres', N' amasvindo valdez@gmail.com', N'Calle 624, Warnes, Santa Cruz, Bolivia', CAST(N'1995-08-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (313, N' Amelio ', N'Guzmán', N'Moreno', N' amelio guzmán@gmail.com', N'Calle 376, El Puente, Santa Cruz, Bolivia', CAST(N'1974-08-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (314, N' Amonario ', N'Ramírez', N'Ortiz', N' amonario ramírez@gmail.com', N'Calle 41, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1987-10-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (315, N' Antelmo ', N'Ríos', N'Ramos', N' antelmo ríos@gmail.com', N'Calle 414, Portachuelo, Santa Cruz, Bolivia', CAST(N'1979-06-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (316, N' Antíoco ', N'Chávez', N'Ruiz', N' antíoco chávez@gmail.com', N'Calle 905, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1977-08-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (317, N' Antenor ', N'Morales', N'Vargas', N' antenor morales@gmail.com', N'Calle 735, Warnes, Santa Cruz, Bolivia', CAST(N'1983-06-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (318, N' Argimiro ', N'Núñez', N'Flores', N' argimiro núñez@gmail.com', N'Calle 509, Portachuelo, Santa Cruz, Bolivia', CAST(N'1985-05-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (319, N' Darek ', N'Salazar', N'Herrera', N' darek salazar@gmail.com', N'Calle 61, El Puente, Santa Cruz, Bolivia', CAST(N'1982-06-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (320, N' Enrique ', N'Rivera', N'Castro', N' enrique rivera@gmail.com', N'Calle 588, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1979-08-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (321, N' Osiel ', N'Castillo', N'Romero', N' osiel castillo@gmail.com', N'Calle 148, El Puente, Santa Cruz, Bolivia', CAST(N'1985-08-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (322, N' Samuel ', N'Jiménez', N'Gonzales', N' samuel jiménez@gmail.com', N'Calle 67, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1995-11-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (323, N' Adán ', N'Vázquez', N'Aguilar', N' adán vázquez@gmail.com', N'Calle 901, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1994-10-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (324, N' Azarías ', N'Fuentes', N'Mendoza', N' azarías fuentes@gmail.com', N'Calle 57, Montero, Santa Cruz, Bolivia', CAST(N'1997-09-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (325, N' Gabriel ', N'Medina', N'Herrera', N' gabriel medina@gmail.com', N'Calle 772, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1985-03-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (326, N' Kerr ', N'Cortez', N'Espinoza', N' kerr cortez@gmail.com', N'Calle 100, Warnes, Santa Cruz, Bolivia', CAST(N'1976-10-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (327, N' Oliphant ', N'Benítez', N'Gutiérrez', N' oliphant benítez@gmail.com', N'Calle 11, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1987-01-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (328, N' Uzziel ', N'Soto', N'Reyes', N' uzziel soto@gmail.com', N'Calle 219, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1999-06-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (329, N' Noé ', N'León', N'Valdez', N' noé león@gmail.com', N'Calle 337, Warnes, Santa Cruz, Bolivia', CAST(N'2000-03-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (330, N' Abel ', N'Gallegos', N'Guzmán', N' abel gallegos@gmail.com', N'Calle 938, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1999-04-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (331, N' Abihail ', N'Rosales', N'Ramírez', N' abihail rosales@gmail.com', N'Calle 996, Warnes, Santa Cruz, Bolivia', CAST(N'1996-12-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (332, N' A-ki-til ', N'Carrillo', N'Ríos', N' a-ki-til carrillo@gmail.com', N'Calle 437, El Torno, Santa Cruz, Bolivia', CAST(N'1993-10-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (333, N' Alcibíades ', N'Acosta', N'Chávez', N' alcibíades acosta@gmail.com', N'Calle 57, El Torno, Santa Cruz, Bolivia', CAST(N'1976-11-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (334, N' Azai ', N'Campos', N'Morales', N' azai campos@gmail.com', N'Calle 149, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1999-01-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (335, N' Azubuike ', N'Duarte', N'Núñez', N' azubuike duarte@gmail.com', N'Calle 949, El Puente, Santa Cruz, Bolivia', CAST(N'1996-09-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (336, N' Baladeva ', N'Miranda', N'Salazar', N' baladeva miranda@gmail.com', N'Calle 336, El Puente, Santa Cruz, Bolivia', CAST(N'1977-07-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (337, N' Booz ', N'Bravo', N'Rivera', N' booz bravo@gmail.com', N'Calle 158, El Torno, Santa Cruz, Bolivia', CAST(N'1987-10-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (338, N' Bricio ', N'Meléndez', N'Castillo', N' bricio meléndez@gmail.com', N'Calle 402, Portachuelo, Santa Cruz, Bolivia', CAST(N'1975-08-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (339, N' Emery ', N'Peña', N'Jiménez', N' emery peña@gmail.com', N'Calle 353, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1983-11-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (340, N' Everaldo ', N'Padilla', N'Vázquez', N' everaldo padilla@gmail.com', N'Calle 298, El Torno, Santa Cruz, Bolivia', CAST(N'1990-08-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (341, N' Fergal ', N'Cervantes', N'Fuentes', N' fergal cervantes@gmail.com', N'Calle 385, La Guardia, Santa Cruz, Bolivia', CAST(N'1997-08-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (342, N' Hipócrates ', N'Rangel', N'Medina', N' hipócrates rangel@gmail.com', N'Calle 639, Montero, Santa Cruz, Bolivia', CAST(N'1985-03-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (343, N' Kon ', N'Tapia', N'Cortez', N' kon tapia@gmail.com', N'Calle 491, Warnes, Santa Cruz, Bolivia', CAST(N'1974-09-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (344, N' Jaaziel ', N'Solís', N'Benítez', N' jaaziel solís@gmail.com', N'Calle 925, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1987-07-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (345, N' Jaret ', N'Arellano', N'Soto', N' jaret arellano@gmail.com', N'Calle 367, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1991-05-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (346, N' Meginhard', N'Zavala', N'León', N' meginhardzavala@gmail.com', N'Calle 536, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1988-04-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (347, N' Michio ', N'Cárdenas', N'Gallegos', N' michio cárdenas@gmail.com', N'Calle 994, Warnes, Santa Cruz, Bolivia', CAST(N'1995-03-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (348, N' Obélix ', N'Pacheco', N'Rosales', N' obélix pacheco@gmail.com', N'Calle 315, Warnes, Santa Cruz, Bolivia', CAST(N'1996-05-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (349, N' Oier ', N'Villegas', N'Carrillo', N' oier villegas@gmail.com', N'Calle 814, Montero, Santa Cruz, Bolivia', CAST(N'1999-11-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (350, N' Olegario ', N'Pineda', N'Acosta', N' olegario pineda@gmail.com', N'Calle 184, La Guardia, Santa Cruz, Bolivia', CAST(N'1980-11-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (351, N' Otoniel ', N'Carrasco', N'Campos', N' otoniel carrasco@gmail.com', N'Calle 293, Montero, Santa Cruz, Bolivia', CAST(N'1987-10-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (352, N' Ozías ', N'Robles', N'Duarte', N' ozías robles@gmail.com', N'Calle 0, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1991-07-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (353, N' Oziel ', N'Navarro', N'Miranda', N' oziel navarro@gmail.com', N'Calle 187, La Guardia, Santa Cruz, Bolivia', CAST(N'1989-11-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (354, N' Qiang ', N'Escobar', N'Bravo', N' qiang escobar@gmail.com', N'Calle 140, Portachuelo, Santa Cruz, Bolivia', CAST(N'1976-01-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (355, N' Tyre ', N'Palacios', N'Meléndez', N' tyre palacios@gmail.com', N'Calle 84, Warnes, Santa Cruz, Bolivia', CAST(N'1977-11-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (356, N' Aubrey ', N'Valencia', N'Peña', N' aubrey valencia@gmail.com', N'Calle 983, El Torno, Santa Cruz, Bolivia', CAST(N'1990-03-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (357, N' Chelem ', N'Espinosa', N'Padilla', N' chelem espinosa@gmail.com', N'Calle 616, El Puente, Santa Cruz, Bolivia', CAST(N'1991-10-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (358, N' Chinweike ', N'Gálvez', N'Cervantes', N' chinweike gálvez@gmail.com', N'Calle 981, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1983-04-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (359, N' Iyad ', N'Bautista', N'Rangel', N' iyad bautista@gmail.com', N'Calle 665, La Guardia, Santa Cruz, Bolivia', CAST(N'1986-12-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (360, N' Jigme ', N'Luna', N'Tapia', N' jigme luna@gmail.com', N'Calle 44, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1981-11-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (361, N' Kanda ', N'Montoya', N'Solís', N' kanda montoya@gmail.com', N'Calle 705, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1991-07-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (362, N' Meinardo ', N'Caballero', N'Arellano', N' meinardo caballero@gmail.com', N'Calle 230, El Puente, Santa Cruz, Bolivia', CAST(N'1986-08-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (363, N' Osvaldo ', N'Delgado', N'Zavala', N' osvaldo delgado@gmail.com', N'Calle 647, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1983-07-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (364, N' Sócrates ', N'Aguayo', N'Cárdenas', N' sócrates aguayo@gmail.com', N'Calle 768, Portachuelo, Santa Cruz, Bolivia', CAST(N'1979-12-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (365, N' Thilo ', N'Acuña', N'Pacheco', N' thilo acuña@gmail.com', N'Calle 492, El Torno, Santa Cruz, Bolivia', CAST(N'1989-03-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (366, N' Walter ', N'Fierro', N'Villegas', N' walter fierro@gmail.com', N'Calle 765, El Torno, Santa Cruz, Bolivia', CAST(N'1990-10-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (367, N' Armando ', N'Beltrán', N'Pineda', N' armando beltrán@gmail.com', N'Calle 511, La Guardia, Santa Cruz, Bolivia', CAST(N'1981-09-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (368, N' Hariman ', N'Bustamante', N'Carrasco', N' hariman bustamante@gmail.com', N'Calle 205, Portachuelo, Santa Cruz, Bolivia', CAST(N'1990-07-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (369, N' Fynn ', N'Ochoa', N'Robles', N' fynn ochoa@gmail.com', N'Calle 29, Warnes, Santa Cruz, Bolivia', CAST(N'1981-10-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (370, N' Ricardo ', N'Vega', N'Navarro', N' ricardo vega@gmail.com', N'Calle 81, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1981-06-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (371, N' Bernardo ', N'Zúñiga', N'Escobar', N' bernardo zúñiga@gmail.com', N'Calle 179, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1986-08-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (372, N' Duncan ', N'Alvarado', N'Palacios', N' duncan alvarado@gmail.com', N'Calle 40, Portachuelo, Santa Cruz, Bolivia', CAST(N'1989-05-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (373, N' Gunther ', N'Medina', N'Valencia', N' gunther medina@gmail.com', N'Calle 255, Warnes, Santa Cruz, Bolivia', CAST(N'1996-05-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (374, N' Leo ', N'Bernal', N'Espinosa', N' leo bernal@gmail.com', N'Calle 117, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1994-02-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (375, N' Olegario ', N'Miranda', N'Gálvez', N' olegario miranda@gmail.com', N'Calle 467, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1993-04-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (376, N' Odín ', N'Durán', N'Bautista', N' odín durán@gmail.com', N'Calle 533, El Puente, Santa Cruz, Bolivia', CAST(N'1975-04-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (377, N' Ivar ', N'Vega', N'Luna', N' ivar vega@gmail.com', N'Calle 627, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1990-11-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (378, N' Archie ', N'Olvera', N'Montoya', N' archie olvera@gmail.com', N'Calle 664, El Torno, Santa Cruz, Bolivia', CAST(N'1976-09-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (379, N' Alejandro ', N'Méndez', N'Caballero', N' alejandro méndez@gmail.com', N'Calle 210, Portachuelo, Santa Cruz, Bolivia', CAST(N'1980-03-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (380, N' Gerardo ', N'Quiroz', N'Delgado', N' gerardo quiroz@gmail.com', N'Calle 924, Portachuelo, Santa Cruz, Bolivia', CAST(N'1988-08-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (381, N' Humberto ', N'Rivas', N'Aguayo', N' humberto rivas@gmail.com', N'Calle 179, La Guardia, Santa Cruz, Bolivia', CAST(N'1973-10-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (382, N' Alan ', N'Fuentes', N'Acuña', N' alan fuentes@gmail.com', N'Calle 251, Warnes, Santa Cruz, Bolivia', CAST(N'1979-01-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (383, N' Alano ', N'Reyes', N'Fierro', N' alano reyes@gmail.com', N'Calle 210, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1984-02-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (384, N' Albano ', N'Osorio', N'Beltrán', N' albano osorio@gmail.com', N'Calle 927, Warnes, Santa Cruz, Bolivia', CAST(N'1983-03-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (385, N' Aldahir', N'Esquivel', N'Bustamante', N' aldahiresquivel@gmail.com', N'Calle 38, Portachuelo, Santa Cruz, Bolivia', CAST(N'1999-04-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (386, N' Allen ', N'Márquez', N'Ochoa', N' allen márquez@gmail.com', N'Calle 524, El Puente, Santa Cruz, Bolivia', CAST(N'1982-04-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (387, N' Alucio ', N'Delgado', N'Vega', N' alucio delgado@gmail.com', N'Calle 918, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1997-05-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (388, N' Ambiórix ', N'Briones', N'Zúñiga', N' ambiórix briones@gmail.com', N'Calle 313, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1985-08-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (389, N' Arlen ', N'Soria', N'Alvarado', N' arlen soria@gmail.com', N'Calle 490, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1974-10-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (390, N' Artai ', N'Nava', N'Medina', N' artai nava@gmail.com', N'Calle 838, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1989-08-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (391, N' Arturo ', N'García', N'Bernal', N' arturo garcía@gmail.com', N'Calle 898, El Puente, Santa Cruz, Bolivia', CAST(N'1986-01-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (392, N' Artús ', N'Granados', N'Miranda', N' artús granados@gmail.com', N'Calle 390, Portachuelo, Santa Cruz, Bolivia', CAST(N'1991-02-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (393, N' Avon ', N'Magaña', N'Durán', N' avon magaña@gmail.com', N'Calle 475, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1987-05-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (394, N' Bardo ', N'Valdés', N'Vega', N' bardo valdés@gmail.com', N'Calle 51, El Puente, Santa Cruz, Bolivia', CAST(N'1976-02-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (395, N' Belenos', N'Ledezma', N'Olvera', N' belenosledezma@gmail.com', N'Calle 913, Warnes, Santa Cruz, Bolivia', CAST(N'1985-06-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (396, N' Belenus ', N'Saucedo', N'Méndez', N' belenus saucedo@gmail.com', N'Calle 116, Montero, Santa Cruz, Bolivia', CAST(N'1988-12-31' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (397, N' Beloveso ', N'Almanza', N'Quiroz', N' beloveso almanza@gmail.com', N'Calle 585, Portachuelo, Santa Cruz, Bolivia', CAST(N'1980-04-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (398, N' Brayan ', N'Favela', N'Rivas', N' brayan favela@gmail.com', N'Calle 991, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1984-09-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (399, N' Brian ', N'Leyva', N'Fuentes', N' brian leyva@gmail.com', N'Calle 455, La Guardia, Santa Cruz, Bolivia', CAST(N'1987-02-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (400, N' Brenan ', N'Aguirre', N'Reyes', N' brenan aguirre@gmail.com', N'Calle 66, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1977-11-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (401, N' Brent ', N'Madrigal', N'Osorio', N' brent madrigal@gmail.com', N'Calle 548, El Puente, Santa Cruz, Bolivia', CAST(N'1985-07-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (402, N' Breogán ', N'Carranza', N'Esquivel', N' breogán carranza@gmail.com', N'Calle 436, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1993-05-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (403, N' Briccio ', N'Villarreal', N'Márquez', N' briccio villarreal@gmail.com', N'Calle 451, La Guardia, Santa Cruz, Bolivia', CAST(N'1978-05-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (404, N' Carataco ', N'Aguilar', N'Delgado', N' carataco aguilar@gmail.com', N'Calle 197, Montero, Santa Cruz, Bolivia', CAST(N'1978-09-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (405, N' Casey ', N'Tapia', N'Briones', N' casey tapia@gmail.com', N'Calle 462, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1986-10-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (406, N' Cearbhall ', N'Hernández', N'Soria', N' cearbhall hernández@gmail.com', N'Calle 162, Montero, Santa Cruz, Bolivia', CAST(N'1975-05-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (407, N' Cedrick ', N'Soria', N'Nava', N' cedrick soria@gmail.com', N'Calle 90, La Guardia, Santa Cruz, Bolivia', CAST(N'1993-07-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (408, N' Sedrik ', N'Cabral', N'García', N' sedrik cabral@gmail.com', N'Calle 883, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1978-08-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (409, N' Cernunnos ', N'Cedillo', N'Granados', N' cernunnos cedillo@gmail.com', N'Calle 387, El Puente, Santa Cruz, Bolivia', CAST(N'1998-12-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (410, N' Cuchulain ', N'Serrano', N'Magaña', N' cuchulain serrano@gmail.com', N'Calle 698, La Guardia, Santa Cruz, Bolivia', CAST(N'1980-01-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (411, N' Dagda ', N'Escamilla', N'Valdés', N' dagda escamilla@gmail.com', N'Calle 469, Portachuelo, Santa Cruz, Bolivia', CAST(N'1989-05-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (412, N' Dailin ', N'Salgado', N'Ledezma', N' dailin salgado@gmail.com', N'Calle 394, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1985-11-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (413, N' Daly ', N'Mares', N'Saucedo', N' daly mares@gmail.com', N'Calle 469, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1978-01-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (414, N' Declan ', N'Castañeda', N'Almanza', N' declan castañeda@gmail.com', N'Calle 567, Warnes, Santa Cruz, Bolivia', CAST(N'1976-07-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (415, N' Dilan ', N'Carrillo', N'Favela', N' dilan carrillo@gmail.com', N'Calle 422, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1977-12-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (416, N' Diviciaco ', N'Figueroa', N'Leyva', N' diviciaco figueroa@gmail.com', N'Calle 60, Warnes, Santa Cruz, Bolivia', CAST(N'1986-07-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (417, N' Donaldo ', N'Rangel', N'Aguirre', N' donaldo rangel@gmail.com', N'Calle 458, El Torno, Santa Cruz, Bolivia', CAST(N'1993-10-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (418, N' Donardo ', N'Salinas', N'Madrigal', N' donardo salinas@gmail.com', N'Calle 974, Portachuelo, Santa Cruz, Bolivia', CAST(N'1988-06-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (419, N' Douglas ', N'Delarosa', N'Carranza', N' douglas delarosa@gmail.com', N'Calle 300, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1975-11-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (420, N' Druso ', N'Armijo', N'Villarreal', N' druso armijo@gmail.com', N'Calle 128, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1981-05-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (421, N' Dugan ', N'Alonzo', N'Aguilar', N' dugan alonzo@gmail.com', N'Calle 571, Montero, Santa Cruz, Bolivia', CAST(N'1974-04-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (422, N' Eamon', N'Covarrubias', N'Tapia', N' eamoncovarrubias@gmail.com', N'Calle 842, Warnes, Santa Cruz, Bolivia', CAST(N'1987-09-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (423, N' Eirian ', N'Valenzuela', N'Hernández', N' eirian valenzuela@gmail.com', N'Calle 661, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1980-07-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (424, N' Elbio ', N'Verdugo', N'Soria', N' elbio verdugo@gmail.com', N'Calle 429, La Guardia, Santa Cruz, Bolivia', CAST(N'1977-09-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (425, N' Erwin ', N'Sosa', N'Cabral', N' erwin sosa@gmail.com', N'Calle 403, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1984-12-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (426, N' Esus ', N'Zambrano', N'Cedillo', N' esus zambrano@gmail.com', N'Calle 578, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1992-02-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (427, N' Fergie ', N'García', N'Serrano', N' fergie garcía@gmail.com', N'Calle 527, El Torno, Santa Cruz, Bolivia', CAST(N'1992-06-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (428, N' Finn ', N'Rodríguez', N'Escamilla', N' finn rodríguez@gmail.com', N'Calle 567, La Guardia, Santa Cruz, Bolivia', CAST(N'1986-01-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (429, N' Flocelo ', N'López', N'Salgado', N' flocelo lópez@gmail.com', N'Calle 649, Montero, Santa Cruz, Bolivia', CAST(N'1978-03-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (430, N' Floyd ', N'Martínez', N'Mares', N' floyd martínez@gmail.com', N'Calle 773, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1998-09-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (431, N' Gaela ', N'Pérez', N'Castañeda', N' gaela pérez@gmail.com', N'Calle 153, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1978-02-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (432, N' Gallagher ', N'Sánchez', N'Carrillo', N' gallagher sánchez@gmail.com', N'Calle 321, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1994-01-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (433, N' Galván ', N'González', N'Figueroa', N' galván gonzález@gmail.com', N'Calle 397, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1986-08-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (434, N' Gannicus ', N'Gómez', N'Rangel', N' gannicus gómez@gmail.com', N'Calle 431, El Puente, Santa Cruz, Bolivia', CAST(N'1974-06-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (435, N' Garnik ', N'Fernández', N'Salinas', N' garnik fernández@gmail.com', N'Calle 782, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1975-01-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (436, N' Glen ', N'Díaz', N'Delarosa', N' glen díaz@gmail.com', N'Calle 85, Montero, Santa Cruz, Bolivia', CAST(N'1997-06-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (437, N' Gordon ', N'Torres', N'Armijo', N' gordon torres@gmail.com', N'Calle 901, Portachuelo, Santa Cruz, Bolivia', CAST(N'1995-09-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (438, N' Gwyddyon ', N'Moreno', N'Alonzo', N' gwyddyon moreno@gmail.com', N'Calle 791, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1974-11-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (439, N' Hervé ', N'Ortiz', N'Covarrubias', N' hervé ortiz@gmail.com', N'Calle 854, La Guardia, Santa Cruz, Bolivia', CAST(N'1996-06-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (440, N' Idris ', N'Ramos', N'Valenzuela', N' idris ramos@gmail.com', N'Calle 958, Portachuelo, Santa Cruz, Bolivia', CAST(N'1981-07-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (441, N' Íñigo ', N'Ruiz', N'Verdugo', N' íñigo ruiz@gmail.com', N'Calle 480, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1974-07-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (442, N' Kalen ', N'Vargas', N'Sosa', N' kalen vargas@gmail.com', N'Calle 533, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1995-11-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (443, N' Kellan ', N'Flores', N'Zambrano', N' kellan flores@gmail.com', N'Calle 882, El Torno, Santa Cruz, Bolivia', CAST(N'1978-03-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (444, N' Kelvin ', N'Herrera', N'García', N' kelvin herrera@gmail.com', N'Calle 282, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1991-09-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (445, N' Kendall ', N'Castro', N'Rodríguez', N' kendall castro@gmail.com', N'Calle 988, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1978-12-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (446, N' Kenneth ', N'Romero', N'López', N' kenneth romero@gmail.com', N'Calle 578, Warnes, Santa Cruz, Bolivia', CAST(N'1975-01-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (447, N' Kenny ', N'Gonzales', N'Martínez', N' kenny gonzales@gmail.com', N'Calle 752, El Torno, Santa Cruz, Bolivia', CAST(N'1981-03-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (448, N' Kerman ', N'Aguilar', N'Pérez', N' kerman aguilar@gmail.com', N'Calle 726, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1992-05-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (449, N' Kevin ', N'Mendoza', N'Sánchez', N' kevin mendoza@gmail.com', N'Calle 106, Warnes, Santa Cruz, Bolivia', CAST(N'1985-10-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (450, N' Kilian ', N'Herrera', N'González', N' kilian herrera@gmail.com', N'Calle 48, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1986-01-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (451, N' Lennox ', N'Espinoza', N'Gómez', N' lennox espinoza@gmail.com', N'Calle 336, La Guardia, Santa Cruz, Bolivia', CAST(N'1993-02-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (452, N' Lug ', N'Gutiérrez', N'Fernández', N' lug gutiérrez@gmail.com', N'Calle 572, El Puente, Santa Cruz, Bolivia', CAST(N'1998-06-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (453, N' Maddox ', N'Reyes', N'Díaz', N' maddox reyes@gmail.com', N'Calle 632, El Puente, Santa Cruz, Bolivia', CAST(N'1981-09-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (454, N' Mael ', N'Valdez', N'Torres', N' mael valdez@gmail.com', N'Calle 738, La Guardia, Santa Cruz, Bolivia', CAST(N'1992-10-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (455, N' Manannan ', N'Guzmán', N'Moreno', N' manannan guzmán@gmail.com', N'Calle 572, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1979-08-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (456, N' Marvin ', N'Ramírez', N'Ortiz', N' marvin ramírez@gmail.com', N'Calle 919, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1987-06-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (457, N' Melvin ', N'Ríos', N'Ramos', N' melvin ríos@gmail.com', N'Calle 59, Portachuelo, Santa Cruz, Bolivia', CAST(N'1978-08-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (458, N' Merlín ', N'Chávez', N'Ruiz', N' merlín chávez@gmail.com', N'Calle 884, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1978-02-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (459, N' Morgan ', N'Morales', N'Vargas', N' morgan morales@gmail.com', N'Calle 802, Warnes, Santa Cruz, Bolivia', CAST(N'1986-07-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (460, N' Neil ', N'Núñez', N'Flores', N' neil núñez@gmail.com', N'Calle 83, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1983-02-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (461, N' Niall ', N'Salazar', N'Herrera', N' niall salazar@gmail.com', N'Calle 541, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1984-05-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (462, N' Nelson ', N'Rivera', N'Castro', N' nelson rivera@gmail.com', N'Calle 372, Portachuelo, Santa Cruz, Bolivia', CAST(N'1992-11-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (463, N' Nuada ', N'Castillo', N'Romero', N' nuada castillo@gmail.com', N'Calle 177, La Guardia, Santa Cruz, Bolivia', CAST(N'2000-04-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (464, N' Ogmios ', N'Jiménez', N'Gonzales', N' ogmios jiménez@gmail.com', N'Calle 331, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1983-04-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (465, N' Óscar ', N'Vázquez', N'Aguilar', N' óscar vázquez@gmail.com', N'Calle 590, El Torno, Santa Cruz, Bolivia', CAST(N'1977-05-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (466, N' Ossian ', N'Fuentes', N'Mendoza', N' ossian fuentes@gmail.com', N'Calle 925, El Puente, Santa Cruz, Bolivia', CAST(N'1984-12-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (467, N' Owen ', N'Medina', N'Herrera', N' owen medina@gmail.com', N'Calle 108, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1998-02-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (468, N' Quillan ', N'Cortez', N'Espinoza', N' quillan cortez@gmail.com', N'Calle 201, Montero, Santa Cruz, Bolivia', CAST(N'1973-11-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (469, N' Quinn ', N'Benítez', N'Gutiérrez', N' quinn benítez@gmail.com', N'Calle 561, El Puente, Santa Cruz, Bolivia', CAST(N'1996-06-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (470, N' Rafferty ', N'Soto', N'Reyes', N' rafferty soto@gmail.com', N'Calle 269, El Torno, Santa Cruz, Bolivia', CAST(N'1993-02-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (471, N' Ronan ', N'León', N'Valdez', N' ronan león@gmail.com', N'Calle 921, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1982-02-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (472, N' Sayer ', N'Gallegos', N'Guzmán', N' sayer gallegos@gmail.com', N'Calle 640, La Guardia, Santa Cruz, Bolivia', CAST(N'1990-04-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (473, N' Serbal ', N'Rosales', N'Ramírez', N' serbal rosales@gmail.com', N'Calle 742, Warnes, Santa Cruz, Bolivia', CAST(N'1975-02-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (474, N' Sucellos ', N'Carrillo', N'Ríos', N' sucellos carrillo@gmail.com', N'Calle 604, El Torno, Santa Cruz, Bolivia', CAST(N'1994-09-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (475, N' Taranis ', N'Acosta', N'Chávez', N' taranis acosta@gmail.com', N'Calle 225, Warnes, Santa Cruz, Bolivia', CAST(N'1995-05-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (476, N' Tristán ', N'Campos', N'Morales', N' tristán campos@gmail.com', N'Calle 881, El Puente, Santa Cruz, Bolivia', CAST(N'1976-02-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (477, N' Viriato ', N'Duarte', N'Núñez', N' viriato duarte@gmail.com', N'Calle 70, La Guardia, Santa Cruz, Bolivia', CAST(N'1984-02-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (478, N' Vicente ', N'Miranda', N'Salazar', N' vicente miranda@gmail.com', N'Calle 675, La Guardia, Santa Cruz, Bolivia', CAST(N'1989-08-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (479, N' Rodrigo ', N'Bravo', N'Rivera', N' rodrigo bravo@gmail.com', N'Calle 512, Montero, Santa Cruz, Bolivia', CAST(N'1985-11-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (480, N' Marcos ', N'Meléndez', N'Castillo', N' marcos meléndez@gmail.com', N'Calle 212, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1987-09-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (481, N' Fernando ', N'Peña', N'Jiménez', N' fernando peña@gmail.com', N'Calle 741, Montero, Santa Cruz, Bolivia', CAST(N'1984-09-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (482, N' Roberto ', N'Padilla', N'Vázquez', N' roberto padilla@gmail.com', N'Calle 536, El Puente, Santa Cruz, Bolivia', CAST(N'1994-09-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (483, N' Carlos ', N'Cervantes', N'Fuentes', N' carlos cervantes@gmail.com', N'Calle 157, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'2000-06-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (484, N' Raúl ', N'Rangel', N'Medina', N' raúl rangel@gmail.com', N'Calle 748, La Guardia, Santa Cruz, Bolivia', CAST(N'2000-09-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (485, N' Marcelo ', N'Tapia', N'Cortez', N' marcelo tapia@gmail.com', N'Calle 745, Warnes, Santa Cruz, Bolivia', CAST(N'1984-10-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (486, N' Fermín ', N'Solís', N'Benítez', N' fermín solís@gmail.com', N'Calle 261, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1975-11-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (487, N' César ', N'Arellano', N'Soto', N' césar arellano@gmail.com', N'Calle 150, El Puente, Santa Cruz, Bolivia', CAST(N'1987-03-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (488, N' Ernesto ', N'Zavala', N'León', N' ernesto zavala@gmail.com', N'Calle 305, Montero, Santa Cruz, Bolivia', CAST(N'1999-03-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (489, N' Alexander ', N'Cárdenas', N'Gallegos', N' alexander cárdenas@gmail.com', N'Calle 165, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'2000-09-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (490, N' Mateo ', N'Pacheco', N'Rosales', N' mateo pacheco@gmail.com', N'Calle 393, Warnes, Santa Cruz, Bolivia', CAST(N'1976-03-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (491, N' Daniel ', N'Villegas', N'Carrillo', N' daniel villegas@gmail.com', N'Calle 542, El Puente, Santa Cruz, Bolivia', CAST(N'1974-06-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (492, N' Pablo ', N'Pineda', N'Acosta', N' pablo pineda@gmail.com', N'Calle 290, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1990-12-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (493, N' Álvaro ', N'Carrasco', N'Campos', N' álvaro carrasco@gmail.com', N'Calle 5, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1984-02-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (494, N' Adrián ', N'Robles', N'Duarte', N' adrián robles@gmail.com', N'Calle 312, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1984-10-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (495, N' David ', N'Navarro', N'Miranda', N' david navarro@gmail.com', N'Calle 280, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1999-04-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (496, N' Diego ', N'Escobar', N'Bravo', N' diego escobar@gmail.com', N'Calle 88, Warnes, Santa Cruz, Bolivia', CAST(N'1978-10-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (497, N' Javier ', N'Palacios', N'Meléndez', N' javier palacios@gmail.com', N'Calle 68, Montero, Santa Cruz, Bolivia', CAST(N'1989-05-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (498, N' Mario ', N'Valencia', N'Peña', N' mario valencia@gmail.com', N'Calle 481, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1975-04-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (499, N' Sergio ', N'Espinosa', N'Padilla', N' sergio espinosa@gmail.com', N'Calle 642, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1995-05-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (500, N' Marcos ', N'Gálvez', N'Cervantes', N' marcos gálvez@gmail.com', N'Calle 429, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1982-02-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (501, N' Manuel ', N'Bautista', N'Rangel', N' manuel bautista@gmail.com', N'Calle 224, Portachuelo, Santa Cruz, Bolivia', CAST(N'1975-10-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (502, N' Martín ', N'Luna', N'Tapia', N' martín luna@gmail.com', N'Calle 566, El Puente, Santa Cruz, Bolivia', CAST(N'1997-09-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (503, N' Jorge ', N'Montoya', N'Solís', N' jorge montoya@gmail.com', N'Calle 56, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1981-03-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (504, N' Iván ', N'Caballero', N'Arellano', N' iván caballero@gmail.com', N'Calle 591, El Torno, Santa Cruz, Bolivia', CAST(N'1992-11-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (505, N' Carlos ', N'Delgado', N'Zavala', N' carlos delgado@gmail.com', N'Calle 510, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1980-07-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (506, N' Miguel ', N'Aguayo', N'Cárdenas', N' miguel aguayo@gmail.com', N'Calle 801, Warnes, Santa Cruz, Bolivia', CAST(N'1985-05-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (507, N' Lucas ', N'Acuña', N'Pacheco', N' lucas acuña@gmail.com', N'Calle 573, Warnes, Santa Cruz, Bolivia', CAST(N'1978-11-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (508, N' Santiago ', N'Fierro', N'Villegas', N' santiago fierro@gmail.com', N'Calle 161, Montero, Santa Cruz, Bolivia', CAST(N'1999-09-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (509, N' Matías ', N'Beltrán', N'Pineda', N' matías beltrán@gmail.com', N'Calle 188, Montero, Santa Cruz, Bolivia', CAST(N'2000-01-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (510, N' Ángel ', N'Bustamante', N'Carrasco', N' ángel bustamante@gmail.com', N'Calle 541, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1998-12-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (511, N' Gabriel ', N'Ochoa', N'Robles', N' gabriel ochoa@gmail.com', N'Calle 359, El Puente, Santa Cruz, Bolivia', CAST(N'1990-01-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (512, N' Simón ', N'Vega', N'Navarro', N' simón vega@gmail.com', N'Calle 447, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1974-11-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (513, N' Thiago ', N'Zúñiga', N'Escobar', N' thiago zúñiga@gmail.com', N'Calle 286, El Torno, Santa Cruz, Bolivia', CAST(N'1987-08-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (514, N' Valentín ', N'Alvarado', N'Palacios', N' valentín alvarado@gmail.com', N'Calle 684, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1979-09-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (515, N' Julián ', N'Medina', N'Valencia', N' julián medina@gmail.com', N'Calle 33, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1977-03-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (516, N' Benjamín ', N'Bernal', N'Espinosa', N' benjamín bernal@gmail.com', N'Calle 850, El Puente, Santa Cruz, Bolivia', CAST(N'1987-01-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (517, N' Erick ', N'Miranda', N'Gálvez', N' erick miranda@gmail.com', N'Calle 957, El Puente, Santa Cruz, Bolivia', CAST(N'1999-11-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (518, N' Sasha ', N'Durán', N'Bautista', N' sasha durán@gmail.com', N'Calle 1, El Torno, Santa Cruz, Bolivia', CAST(N'1975-12-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (519, N' Dante ', N'Vega', N'Luna', N' dante vega@gmail.com', N'Calle 852, El Puente, Santa Cruz, Bolivia', CAST(N'2000-02-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (520, N' Enzo ', N'Olvera', N'Montoya', N' enzo olvera@gmail.com', N'Calle 685, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1989-11-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (521, N' Silas ', N'Méndez', N'Caballero', N' silas méndez@gmail.com', N'Calle 963, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1993-05-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (522, N' Marco ', N'Quiroz', N'Delgado', N' marco quiroz@gmail.com', N'Calle 126, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1986-09-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (523, N' Andrea ', N'Rivas', N'Aguayo', N' andrea rivas@gmail.com', N'Calle 61, La Guardia, Santa Cruz, Bolivia', CAST(N'1994-09-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (524, N' Ariel ', N'Fuentes', N'Acuña', N' ariel fuentes@gmail.com', N'Calle 220, Warnes, Santa Cruz, Bolivia', CAST(N'1982-06-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (525, N' Orfeo ', N'Reyes', N'Fierro', N' orfeo reyes@gmail.com', N'Calle 321, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1986-12-19' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (526, N' Jasón ', N'Osorio', N'Beltrán', N' jasón osorio@gmail.com', N'Calle 333, El Puente, Santa Cruz, Bolivia', CAST(N'1983-01-15' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (527, N' Héctor', N'Esquivel', N'Bustamante', N' héctoresquivel@gmail.com', N'Calle 345, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1987-08-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (528, N' Aquiles ', N'Márquez', N'Ochoa', N' aquiles márquez@gmail.com', N'Calle 198, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1990-12-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (529, N' Adonis ', N'Delgado', N'Vega', N' adonis delgado@gmail.com', N'Calle 370, El Puente, Santa Cruz, Bolivia', CAST(N'1995-07-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (530, N' Apolo ', N'Briones', N'Zúñiga', N' apolo briones@gmail.com', N'Calle 598, El Puente, Santa Cruz, Bolivia', CAST(N'1977-04-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (531, N' Dionisio ', N'Soria', N'Alvarado', N' dionisio soria@gmail.com', N'Calle 797, Warnes, Santa Cruz, Bolivia', CAST(N'1979-04-18' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (532, N' Ulises ', N'Nava', N'Medina', N' ulises nava@gmail.com', N'Calle 265, Warnes, Santa Cruz, Bolivia', CAST(N'1993-04-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (533, N' Hércules ', N'García', N'Bernal', N' hércules garcía@gmail.com', N'Calle 615, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1981-11-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (534, N' Hipólito ', N'Granados', N'Miranda', N' hipólito granados@gmail.com', N'Calle 492, El Puente, Santa Cruz, Bolivia', CAST(N'1997-02-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (535, N' Tristán ', N'Magaña', N'Durán', N' tristán magaña@gmail.com', N'Calle 463, Warnes, Santa Cruz, Bolivia', CAST(N'1974-07-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (536, N' Zeus ', N'Valdés', N'Vega', N' zeus valdés@gmail.com', N'Calle 592, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1997-06-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (537, N' Adal ', N'Ledezma', N'Olvera', N' adal ledezma@gmail.com', N'Calle 574, El Puente, Santa Cruz, Bolivia', CAST(N'1996-03-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (538, N' Adel ', N'Saucedo', N'Méndez', N' adel saucedo@gmail.com', N'Calle 387, El Puente, Santa Cruz, Bolivia', CAST(N'1998-09-03' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (539, N' Adriel', N'Almanza', N'Quiroz', N' adrielalmanza@gmail.com', N'Calle 31, Warnes, Santa Cruz, Bolivia', CAST(N'1994-01-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (540, N' Alonso ', N'Favela', N'Rivas', N' alonso favela@gmail.com', N'Calle 407, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1976-01-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (541, N' Amaru ', N'Leyva', N'Fuentes', N' amaru leyva@gmail.com', N'Calle 370, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1992-08-05' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (542, N' Asher ', N'Aguirre', N'Reyes', N' asher aguirre@gmail.com', N'Calle 512, La Guardia, Santa Cruz, Bolivia', CAST(N'1977-10-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (543, N' Azai ', N'Madrigal', N'Osorio', N' azai madrigal@gmail.com', N'Calle 135, Montero, Santa Cruz, Bolivia', CAST(N'1998-07-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (544, N' Basil ', N'Carranza', N'Esquivel', N' basil carranza@gmail.com', N'Calle 161, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1999-02-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (545, N' Bastian ', N'Villarreal', N'Márquez', N' bastian villarreal@gmail.com', N'Calle 552, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1975-12-27' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (546, N' Ciro ', N'Aguilar', N'Delgado', N' ciro aguilar@gmail.com', N'Calle 547, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1982-03-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (547, N' Corban ', N'Tapia', N'Briones', N' corban tapia@gmail.com', N'Calle 803, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1974-07-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (548, N' Dáire ', N'Hernández', N'Soria', N' dáire hernández@gmail.com', N'Calle 296, La Guardia, Santa Cruz, Bolivia', CAST(N'1976-09-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (549, N' Dante ', N'Soria', N'Nava', N' dante soria@gmail.com', N'Calle 572, El Torno, Santa Cruz, Bolivia', CAST(N'1978-01-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (550, N' Dorian ', N'Cabral', N'García', N' dorian cabral@gmail.com', N'Calle 570, Montero, Santa Cruz, Bolivia', CAST(N'1983-06-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (551, N' Duncan ', N'Cedillo', N'Granados', N' duncan cedillo@gmail.com', N'Calle 163, El Puente, Santa Cruz, Bolivia', CAST(N'1982-07-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (552, N' Egan ', N'Serrano', N'Magaña', N' egan serrano@gmail.com', N'Calle 987, La Guardia, Santa Cruz, Bolivia', CAST(N'1989-06-20' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (553, N' Einar ', N'Escamilla', N'Valdés', N' einar escamilla@gmail.com', N'Calle 446, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1977-07-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (554, N' Elián ', N'Salgado', N'Ledezma', N' elián salgado@gmail.com', N'Calle 298, Warnes, Santa Cruz, Bolivia', CAST(N'1976-01-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (555, N' Émile ', N'Mares', N'Saucedo', N' émile mares@gmail.com', N'Calle 481, Montero, Santa Cruz, Bolivia', CAST(N'1999-01-12' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (556, N' Endor ', N'Castañeda', N'Almanza', N' endor castañeda@gmail.com', N'Calle 127, La Guardia, Santa Cruz, Bolivia', CAST(N'1987-05-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (557, N' Ezra ', N'Carrillo', N'Favela', N' ezra carrillo@gmail.com', N'Calle 440, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1995-09-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (558, N' Farid ', N'Figueroa', N'Leyva', N' farid figueroa@gmail.com', N'Calle 868, El Torno, Santa Cruz, Bolivia', CAST(N'1974-04-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (559, N' Fionn ', N'Rangel', N'Aguirre', N' fionn rangel@gmail.com', N'Calle 567, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1980-09-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (560, N' Gadiel ', N'Salinas', N'Madrigal', N' gadiel salinas@gmail.com', N'Calle 140, El Puente, Santa Cruz, Bolivia', CAST(N'1991-08-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (561, N' Gael ', N'Delarosa', N'Carranza', N' gael delarosa@gmail.com', N'Calle 953, El Torno, Santa Cruz, Bolivia', CAST(N'1996-04-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (562, N' Goran ', N'Armijo', N'Villarreal', N' goran armijo@gmail.com', N'Calle 763, El Puente, Santa Cruz, Bolivia', CAST(N'1992-12-25' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (563, N' Guido ', N'Alonzo', N'Aguilar', N' guido alonzo@gmail.com', N'Calle 505, Portachuelo, Santa Cruz, Bolivia', CAST(N'1981-06-10' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (564, N' Hasani ', N'Covarrubias', N'Tapia', N' hasani covarrubias@gmail.com', N'Calle 221, Portachuelo, Santa Cruz, Bolivia', CAST(N'1991-10-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (565, N' Ian ', N'Valenzuela', N'Hernández', N' ian valenzuela@gmail.com', N'Calle 316, El Torno, Santa Cruz, Bolivia', CAST(N'2000-08-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (566, N' Ilán ', N'Verdugo', N'Soria', N' ilán verdugo@gmail.com', N'Calle 903, Montero, Santa Cruz, Bolivia', CAST(N'1991-06-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (567, N' Ivar ', N'Sosa', N'Cabral', N' ivar sosa@gmail.com', N'Calle 925, El Puente, Santa Cruz, Bolivia', CAST(N'1977-01-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (568, N' Joel ', N'Zambrano', N'Cedillo', N' joel zambrano@gmail.com', N'Calle 426, El Puente, Santa Cruz, Bolivia', CAST(N'1979-11-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (569, N' Julián ', N'García', N'Serrano', N' julián garcía@gmail.com', N'Calle 724, Portachuelo, Santa Cruz, Bolivia', CAST(N'1989-05-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (570, N' Kadet ', N'Rodríguez', N'Escamilla', N' kadet rodríguez@gmail.com', N'Calle 337, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'2000-09-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (571, N' Kai ', N'López', N'Salgado', N' kai lópez@gmail.com', N'Calle 324, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1974-08-30' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (572, N' Karim ', N'Martínez', N'Mares', N' karim martínez@gmail.com', N'Calle 423, Okinawa Uno, Santa Cruz, Bolivia', CAST(N'1993-03-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (573, N' Kilian ', N'Pérez', N'Castañeda', N' kilian pérez@gmail.com', N'Calle 155, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1997-10-16' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (574, N' Kuno ', N'Sánchez', N'Carrillo', N' kuno sánchez@gmail.com', N'Calle 401, El Puente, Santa Cruz, Bolivia', CAST(N'1984-12-17' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (575, N' Lars ', N'González', N'Figueroa', N' lars gonzález@gmail.com', N'Calle 272, El Torno, Santa Cruz, Bolivia', CAST(N'1987-12-02' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (576, N' Lavi ', N'Gómez', N'Rangel', N' lavi gómez@gmail.com', N'Calle 399, Warnes, Santa Cruz, Bolivia', CAST(N'1985-03-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (577, N' Leonel ', N'Fernández', N'Salinas', N' leonel fernández@gmail.com', N'Calle 823, Portachuelo, Santa Cruz, Bolivia', CAST(N'1999-01-22' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (578, N' Lisandro ', N'Díaz', N'Delarosa', N' lisandro díaz@gmail.com', N'Calle 217, La Guardia, Santa Cruz, Bolivia', CAST(N'1999-10-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (579, N' Luc ', N'Torres', N'Armijo', N' luc torres@gmail.com', N'Calle 367, La Guardia, Santa Cruz, Bolivia', CAST(N'1990-12-08' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (580, N' Malik ', N'Moreno', N'Alonzo', N' malik moreno@gmail.com', N'Calle 782, Warnes, Santa Cruz, Bolivia', CAST(N'1977-09-21' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (581, N' Marius', N'Ortiz', N'Covarrubias', N' mariusortiz@gmail.com', N'Calle 533, El Torno, Santa Cruz, Bolivia', CAST(N'1984-09-11' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (582, N' Milos ', N'Ramos', N'Valenzuela', N' milos ramos@gmail.com', N'Calle 959, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1985-03-26' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (583, N' Mosi ', N'Ruiz', N'Verdugo', N' mosi ruiz@gmail.com', N'Calle 756, La Guardia, Santa Cruz, Bolivia', CAST(N'1996-09-14' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (584, N' Nadir ', N'Vargas', N'Sosa', N' nadir vargas@gmail.com', N'Calle 897, La Guardia, Santa Cruz, Bolivia', CAST(N'1989-04-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (585, N' Naim ', N'Flores', N'Zambrano', N' naim flores@gmail.com', N'Calle 98, Montero, Santa Cruz, Bolivia', CAST(N'1992-08-06' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (586, N' Normand ', N'Herrera', N'García', N' normand herrera@gmail.com', N'Calle 717, La Guardia, Santa Cruz, Bolivia', CAST(N'1986-01-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (587, N' Oliver ', N'Castro', N'Rodríguez', N' oliver castro@gmail.com', N'Calle 221, El Puente, Santa Cruz, Bolivia', CAST(N'1998-08-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (588, N' Oriel ', N'Romero', N'López', N' oriel romero@gmail.com', N'Calle 40, El Puente, Santa Cruz, Bolivia', CAST(N'1991-01-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (589, N' Otto ', N'Gonzales', N'Martínez', N' otto gonzales@gmail.com', N'Calle 521, Portachuelo, Santa Cruz, Bolivia', CAST(N'1989-02-24' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (590, N' Pavel ', N'Aguilar', N'Pérez', N' pavel aguilar@gmail.com', N'Calle 386, El Torno, Santa Cruz, Bolivia', CAST(N'1999-05-01' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (591, N' Pax ', N'Mendoza', N'Sánchez', N' pax mendoza@gmail.com', N'Calle 150, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1989-03-13' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (592, N' Piero ', N'Herrera', N'González', N' piero herrera@gmail.com', N'Calle 946, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1994-05-29' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (593, N' Raziel ', N'Espinoza', N'Gómez', N' raziel espinoza@gmail.com', N'Calle 28, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1999-04-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (594, N' Rune ', N'Gutiérrez', N'Fernández', N' rune gutiérrez@gmail.com', N'Calle 935, Portachuelo, Santa Cruz, Bolivia', CAST(N'1990-03-07' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (595, N' Sander ', N'Reyes', N'Díaz', N' sander reyes@gmail.com', N'Calle 477, Portachuelo, Santa Cruz, Bolivia', CAST(N'1983-03-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (596, N' Sinhué ', N'Valdez', N'Torres', N' sinhué valdez@gmail.com', N'Calle 567, Montero, Santa Cruz, Bolivia', CAST(N'1981-09-04' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (597, N' Tadeo ', N'Guzmán', N'Moreno', N' tadeo guzmán@gmail.com', N'Calle 859, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1986-05-23' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (598, N' Teo ', N'Ramírez', N'Ortiz', N' teo ramírez@gmail.com', N'Calle 585, Warnes, Santa Cruz, Bolivia', CAST(N'1977-03-28' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (599, N' Tristán ', N'Ríos', N'Ramos', N' tristán ríos@gmail.com', N'Calle 396, Warnes, Santa Cruz, Bolivia', CAST(N'1980-07-09' AS Date))
GO
INSERT [dbo].[Jugador] ([id_jugador], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_nacimiento]) VALUES (600, N' Umi ', N'Chávez', N'Ruiz', N' umi chávez@gmail.com', N'Calle 52, El Torno, Santa Cruz, Bolivia', CAST(N'1981-11-05' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Jugador] OFF
GO
SET IDENTITY_INSERT [dbo].[Nacionalidad] ON 
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (1, N'AFGANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (2, N'ALBANESA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (3, N'ANDORRANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (4, N'ANGOLEÑA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (5, N'ANTIGUANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (6, N'SAUDÍ')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (7, N'ARGELINA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (8, N'ARGENTINA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (9, N'ARMENIA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (10, N'ARUBEÑA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (11, N'AUSTRALIANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (12, N'AUSTRIACA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (13, N'AZERBAIYANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (14, N'BAHAMEÑA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (15, N'BANGLADESÍ')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (16, N'BARBADENSE')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (17, N'BAREINÍ')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (18, N'BELGA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (19, N'BELICEÑA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (20, N'BENINÉSA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (21, N'SAUDÍ')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (22, N'BIELORRUSA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (23, N'BIRMANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (24, N'BOLIVIANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (25, N'BOSNIA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (26, N'BOTSUANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (27, N'BRASILEÑA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (28, N'BRUNEANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (29, N'BAHAMEÑA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (30, N'BÚLGARA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (31, N'BURUNDÉSA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (32, N'BUTANÉSA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (33, N'CABOVERDIANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (34, N'CAMBOYANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (35, N'CAMERUNESA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (36, N'CANADIENSE')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (37, N'CATARÍ')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (38, N'CHADIANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (39, N'CHILENA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (40, N'CHINA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (41, N'CHIPRIOTA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (42, N'VATICANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (43, N'COLOMBIANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (44, N'COMORENSE')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (45, N'NORCOREANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (46, N'SURCOREANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (47, N'MARFILEÑA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (48, N'COSTARRICENSE')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (49, N'CROATA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (50, N'DANÉSA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (51, N'DOMINIQUÉS')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (52, N'ECUATORIANA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (53, N'EGIPCIA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (54, N'SALVADOREÑA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (55, N'EMIRATÍ')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (56, N'ERITREA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (57, N'ESLOVACA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (58, N'ESLOVENA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (59, N'ESPAÑOLA')
GO
INSERT [dbo].[Nacionalidad] ([id_nacionalidad], [pais]) VALUES (60, N'ESTADOUNIDENSE')
GO
SET IDENTITY_INSERT [dbo].[Nacionalidad] OFF
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 
GO
INSERT [dbo].[Rol] ([id_rol], [nombre_rol]) VALUES (1, N'Árbitro principal')
GO
INSERT [dbo].[Rol] ([id_rol], [nombre_rol]) VALUES (2, N'Árbitro asistente o juez de línea')
GO
INSERT [dbo].[Rol] ([id_rol], [nombre_rol]) VALUES (3, N'Cuarto árbitro')
GO
INSERT [dbo].[Rol] ([id_rol], [nombre_rol]) VALUES (4, N'Árbitro de video o VAR')
GO
SET IDENTITY_INSERT [dbo].[Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Tarjeta] ON 
GO
INSERT [dbo].[Tarjeta] ([id_tarjeta], [color_tarjeta]) VALUES (1, N'Tarjeta Roja')
GO
INSERT [dbo].[Tarjeta] ([id_tarjeta], [color_tarjeta]) VALUES (2, N'Tarjeta Amarilla')
GO
SET IDENTITY_INSERT [dbo].[Tarjeta] OFF
GO
SET IDENTITY_INSERT [dbo].[Tecnico] ON 
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (1, N' Dante ', N'Medina', N'Magaña', N' dante medina@gmail.com', N'Calle 628, Portachuelo, Santa Cruz, Bolivia', CAST(N'1983-11-17' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (2, N' Enzo ', N'Bernal', N'Valdés', N' enzo bernal@gmail.com', N'Calle 538, Portachuelo, Santa Cruz, Bolivia', CAST(N'1994-02-24' AS Date), 2)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (3, N' Silas ', N'Miranda', N'Ledezma', N' silas miranda@gmail.com', N'Calle 760, La Guardia, Santa Cruz, Bolivia', CAST(N'1980-05-27' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (4, N' Marco ', N'Durán', N'Saucedo', N' marco durán@gmail.com', N'Calle 695, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1984-05-16' AS Date), 3)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (5, N' Andrea ', N'Vega', N'Almanza', N' andrea vega@gmail.com', N'Calle 793, La Guardia, Santa Cruz, Bolivia', CAST(N'1984-08-03' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (6, N' Ariel ', N'Olvera', N'Favela', N' ariel olvera@gmail.com', N'Calle 188, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1985-05-16' AS Date), 3)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (7, N' Orfeo ', N'Méndez', N'Leyva', N' orfeo méndez@gmail.com', N'Calle 376, La Guardia, Santa Cruz, Bolivia', CAST(N'1990-09-08' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (8, N' Jasón ', N'Quiroz', N'Aguirre', N' jasón quiroz@gmail.com', N'Calle 895, Montero, Santa Cruz, Bolivia', CAST(N'1994-11-10' AS Date), 2)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (9, N' Tristán ', N'Rivas', N'Madrigal', N' tristán rivas@gmail.com', N'Calle 297, El Torno, Santa Cruz, Bolivia', CAST(N'1976-08-04' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (10, N' Zeus ', N'Fuentes', N'Carranza', N' zeus fuentes@gmail.com', N'Calle 883, La Guardia, Santa Cruz, Bolivia', CAST(N'1981-04-06' AS Date), 4)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (11, N' Adal ', N'Reyes', N'Villarreal', N' adal reyes@gmail.com', N'Calle 331, Santa Cruz de la Sierra, Santa Cruz, Bolivia', CAST(N'1976-09-26' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (12, N' Adel ', N'Osorio', N'Cedillo', N' adel osorio@gmail.com', N'Calle 50, Portachuelo, Santa Cruz, Bolivia', CAST(N'1991-05-18' AS Date), 5)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (13, N' Alonso ', N'Esquivel', N'Serrano', N' alonso esquivel@gmail.com', N'Calle 423, El Torno, Santa Cruz, Bolivia', CAST(N'1985-03-13' AS Date), 6)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (14, N' Elián ', N'Márquez', N'Escamilla', N' elián márquez@gmail.com', N'Calle 265, El Puente, Santa Cruz, Bolivia', CAST(N'1989-10-17' AS Date), 4)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (15, N' Endor ', N'Delgado', N'Salgado', N' endor delgado@gmail.com', N'Calle 166, Portachuelo, Santa Cruz, Bolivia', CAST(N'1993-09-16' AS Date), 5)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (16, N' Ezra ', N'Briones', N'Mares', N' ezra briones@gmail.com', N'Calle 415, El Torno, Santa Cruz, Bolivia', CAST(N'1991-06-12' AS Date), 6)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (17, N' Farid ', N'Soria', N'Castañeda', N' farid soria@gmail.com', N'Calle 951, Colpa Bélgica, Santa Cruz, Bolivia', CAST(N'1985-11-16' AS Date), 4)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (18, N' Fionn ', N'Nava', N'Carrillo', N' fionn nava@gmail.com', N'Calle 317, Montero, Santa Cruz, Bolivia', CAST(N'1999-11-15' AS Date), 3)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (19, N' Gadiel ', N'García', N'Figueroa', N' gadiel garcía@gmail.com', N'Calle 504, El Torno, Santa Cruz, Bolivia', CAST(N'1977-02-01' AS Date), 1)
GO
INSERT [dbo].[Tecnico] ([id_tecnico], [nombre], [apellido_paterno], [apellido_materno], [email], [direccion], [fecha_inicio_carrera], [id_tipo_tecnico]) VALUES (20, N' Gael ', N'Granados', N'Rangel', N' gael granados@gmail.com', N'Calle 811, Warnes, Santa Cruz, Bolivia', CAST(N'1997-10-09' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[Tecnico] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoFalta] ON 
GO
INSERT [dbo].[TipoFalta] ([id_tipo_falta], [tip_falta]) VALUES (1, N'Falta directa')
GO
INSERT [dbo].[TipoFalta] ([id_tipo_falta], [tip_falta]) VALUES (2, N'Falta indirecta')
GO
INSERT [dbo].[TipoFalta] ([id_tipo_falta], [tip_falta]) VALUES (3, N'Falta táctica')
GO
INSERT [dbo].[TipoFalta] ([id_tipo_falta], [tip_falta]) VALUES (4, N'Falta violenta')
GO
INSERT [dbo].[TipoFalta] ([id_tipo_falta], [tip_falta]) VALUES (5, N'Mano')
GO
INSERT [dbo].[TipoFalta] ([id_tipo_falta], [tip_falta]) VALUES (6, N'Fuera de juego')
GO
INSERT [dbo].[TipoFalta] ([id_tipo_falta], [tip_falta]) VALUES (7, N'Simulación o fingir una falta')
GO
INSERT [dbo].[TipoFalta] ([id_tipo_falta], [tip_falta]) VALUES (8, N'Retrasar el juego')
GO
INSERT [dbo].[TipoFalta] ([id_tipo_falta], [tip_falta]) VALUES (9, N'Conducta antideportiva')
GO
INSERT [dbo].[TipoFalta] ([id_tipo_falta], [tip_falta]) VALUES (10, N'Falta de respeto al arbitro')
GO
SET IDENTITY_INSERT [dbo].[TipoFalta] OFF
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
SET IDENTITY_INSERT [dbo].[TipoUsuario] ON 
GO
INSERT [dbo].[TipoUsuario] ([id_tipo_usuario], [descripcion]) VALUES (1, N'Este es un super Usuario, no tiene restricciones en el sistema')
GO
INSERT [dbo].[TipoUsuario] ([id_tipo_usuario], [descripcion]) VALUES (2, N'Este es un usuario Administrador, a diferencia  del super usuario este tiene algunas restricciones')
GO
INSERT [dbo].[TipoUsuario] ([id_tipo_usuario], [descripcion]) VALUES (3, N'Este es un Usuario, a al ser un usuario normal, solo puede estar en modo espectador')
GO
SET IDENTITY_INSERT [dbo].[TipoUsuario] OFF
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
SET IDENTITY_INSERT [dbo].[Usuario] ON 
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (1, N'marco', N'423423', 1)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (2, N'miguel', N'4adasd23', 1)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (3, N'Ericka', N'4234fsdf', 1)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (4, N'Sandra', N'4234gjghj23', 2)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (5, N'Jose', N'42342hjgj3', 2)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (6, N'Take', N'4234wer23', 3)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (7, N'Cesar', N'4234gdf23', 3)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (8, N'Sandra', N'4234gjghj23', 3)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (9, N'Jose', N'42342hjgj3', 3)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (10, N'Take', N'4234wer23', 3)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (11, N'Cesar', N'4234gdf23', 3)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (12, N'Sandra', N'4234gjghj23', 3)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (13, N'Jose', N'42342hjgj3', 3)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (14, N'Take', N'4234wer23', 3)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [contraseña], [id_tipo_usuario]) VALUES (15, N'Cesar', N'4234gdf23', 3)
GO
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Alineacion]  WITH CHECK ADD FOREIGN KEY([id_dirigente])
REFERENCES [dbo].[Dirigente] ([id_dirigente])
GO
ALTER TABLE [dbo].[Alineacion]  WITH CHECK ADD FOREIGN KEY([id_equipo])
REFERENCES [dbo].[Equipo] ([id_equipo])
GO
ALTER TABLE [dbo].[AlineacionTecnico]  WITH CHECK ADD FOREIGN KEY([id_alineacion])
REFERENCES [dbo].[Alineacion] ([id_alineacion])
GO
ALTER TABLE [dbo].[AlineacionTecnico]  WITH CHECK ADD FOREIGN KEY([id_tecnico])
REFERENCES [dbo].[Tecnico] ([id_tecnico])
GO
ALTER TABLE [dbo].[CambioEstado]  WITH CHECK ADD FOREIGN KEY([id_estado_jugador])
REFERENCES [dbo].[EstadoJugador] ([id_estado_jugador])
GO
ALTER TABLE [dbo].[CambioEstado]  WITH CHECK ADD FOREIGN KEY([id_jugador])
REFERENCES [dbo].[Jugador] ([id_jugador])
GO
ALTER TABLE [dbo].[CambioJugador]  WITH CHECK ADD FOREIGN KEY([id_jugador_entrada])
REFERENCES [dbo].[DetalleAlineacion] ([id_detalle_alineacion])
GO
ALTER TABLE [dbo].[CambioJugador]  WITH CHECK ADD FOREIGN KEY([id_jugador_salida])
REFERENCES [dbo].[DetalleAlineacion] ([id_detalle_alineacion])
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
ALTER TABLE [dbo].[DetalleAlineacion]  WITH CHECK ADD FOREIGN KEY([id_alineacion])
REFERENCES [dbo].[Alineacion] ([id_alineacion])
GO
ALTER TABLE [dbo].[DetalleAlineacion]  WITH CHECK ADD FOREIGN KEY([id_jugador])
REFERENCES [dbo].[Jugador] ([id_jugador])
GO
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD FOREIGN KEY([id_club_futbol])
REFERENCES [dbo].[ClubFutbol] ([id_club_futbol])
GO
ALTER TABLE [dbo].[EstadisticaClub]  WITH CHECK ADD FOREIGN KEY([id_club_futbol])
REFERENCES [dbo].[ClubFutbol] ([id_club_futbol])
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD FOREIGN KEY([id_detalle_alineacion])
REFERENCES [dbo].[DetalleAlineacion] ([id_detalle_alineacion])
GO
ALTER TABLE [dbo].[Falta]  WITH CHECK ADD FOREIGN KEY([id_detalle_alineacion])
REFERENCES [dbo].[DetalleAlineacion] ([id_detalle_alineacion])
GO
ALTER TABLE [dbo].[Falta]  WITH CHECK ADD FOREIGN KEY([id_tarjeta])
REFERENCES [dbo].[Tarjeta] ([id_tarjeta])
GO
ALTER TABLE [dbo].[Falta]  WITH CHECK ADD FOREIGN KEY([id_tipo_falta])
REFERENCES [dbo].[TipoFalta] ([id_tipo_falta])
GO
ALTER TABLE [dbo].[Goleo]  WITH CHECK ADD FOREIGN KEY([id_detalle_alineacion])
REFERENCES [dbo].[DetalleAlineacion] ([id_detalle_alineacion])
GO
ALTER TABLE [dbo].[NacionalidadJugador]  WITH CHECK ADD FOREIGN KEY([id_jugador])
REFERENCES [dbo].[Jugador] ([id_jugador])
GO
ALTER TABLE [dbo].[NacionalidadJugador]  WITH CHECK ADD FOREIGN KEY([id_nacionalidad])
REFERENCES [dbo].[Nacionalidad] ([id_nacionalidad])
GO
ALTER TABLE [dbo].[PlanillaEquipo]  WITH CHECK ADD FOREIGN KEY([id_equipo])
REFERENCES [dbo].[Equipo] ([id_equipo])
GO
ALTER TABLE [dbo].[PlanillaEquipo]  WITH CHECK ADD FOREIGN KEY([id_torneo])
REFERENCES [dbo].[Torneo] ([id_torneo])
GO
ALTER TABLE [dbo].[PlanillaEquipo]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id_usuario])
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
ALTER TABLE [dbo].[ProgramaPartido]  WITH CHECK ADD FOREIGN KEY([id_torneo])
REFERENCES [dbo].[Torneo] ([id_torneo])
GO
ALTER TABLE [dbo].[ProgramaPartido]  WITH CHECK ADD FOREIGN KEY([id_ubicacion_estadio])
REFERENCES [dbo].[UbicacionEstadio] ([id_ubicacion_estadio])
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
/****** Object:  StoredProcedure [dbo].[AgregarDesignacion]    Script Date: 28/04/2023 11:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarDesignacion]
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
			delete from @Designacion


			FETCH NEXT FROM cursor1 INTO @id_programa_partido, @fecha;
		END
		CLOSE cursor1;
		DEALLOCATE cursor1;
	END
GO
/****** Object:  StoredProcedure [dbo].[AgregarDetalleAlineacion]    Script Date: 28/04/2023 11:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarDetalleAlineacion]
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
GO
/****** Object:  StoredProcedure [dbo].[AgregarEvento]    Script Date: 28/04/2023 11:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarEvento]
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
GO
/****** Object:  StoredProcedure [dbo].[AgregarPlanillaEquipo]    Script Date: 28/04/2023 11:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarPlanillaEquipo]
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
GO
/****** Object:  StoredProcedure [dbo].[CrearAlineacion]    Script Date: 28/04/2023 11:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CrearAlineacion] (@id_equipo int, @fecha date)
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
GO
/****** Object:  StoredProcedure [dbo].[generar_alineacion_tecnico]    Script Date: 28/04/2023 11:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[generar_alineacion_tecnico]
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
GO
/****** Object:  StoredProcedure [dbo].[generar_partidos_todos_contra_todos]    Script Date: 28/04/2023 11:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[generar_partidos_todos_contra_todos] (@cantidad_equipo INT, @id_torneo INT)
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
GO
/****** Object:  StoredProcedure [dbo].[GenerarCambioJugador]    Script Date: 28/04/2023 11:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerarCambioJugador]
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
	
END
GO
/****** Object:  StoredProcedure [dbo].[GenerarFaltas]    Script Date: 28/04/2023 11:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerarFaltas]
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
GO
/****** Object:  StoredProcedure [dbo].[GenerarGoleo]    Script Date: 28/04/2023 11:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerarGoleo]
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
GO
/****** Object:  StoredProcedure [dbo].[GenerarTorneos]    Script Date: 28/04/2023 11:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerarTorneos] (@year INT)
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
GO
/****** Object:  StoredProcedure [dbo].[InsertarCambioEstado]    Script Date: 28/04/2023 11:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarCambioEstado]
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
GO
/****** Object:  StoredProcedure [dbo].[InsertarNacionalidadJugador]    Script Date: 28/04/2023 11:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarNacionalidadJugador]
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
GO
-- EXECUTE to
DECLARE @year int = 10
-- TODO: Establezca los valores de los parámetros aquí.
EXECUTE [dbo].[GenerarTorneos] 
   @year
GO
DECLARE @cantidad_equipo int = 5
DECLARE @id_torneo int = 1
-- TODO: Establezca los valores de los parámetros aquí.
EXECUTE [dbo].[generar_partidos_todos_contra_todos] 
   @cantidad_equipo
  ,@id_torneo
GO
EXECUTE [dbo].[generar_alineacion_tecnico] 
GO
EXECUTE [dbo].[AgregarDetalleAlineacion]
GO
EXECUTE [dbo].[AgregarDesignacion]
GO
EXECUTE [dbo].[GenerarGoleo]
GO
EXECUTE [dbo].[GenerarFaltas]
GO
EXECUTE [dbo].[GenerarCambioJugador]
GO
EXECUTE [dbo].[AgregarEvento]
GO
EXECUTE [dbo].[InsertarCambioEstado]
GO
EXECUTE [dbo].[InsertarNacionalidadJugador]
GO
EXECUTE [dbo].[AgregarPlanillaEquipo]
GO
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
  FROM [TorneoFutbol].[dbo].[PlanillaEquipo]
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
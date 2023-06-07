/****************************************/
-- USE [master]
-- DROP DATABASE [DW_TorneoFutbol]
/****************************************/
CREATE DATABASE [DW_TorneoFutbol]
GO
USE [DW_TorneoFutbol]
GO
/****** Object:  Table [dbo].[dimArbitro]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dimArbitro](
	[id_arbitro] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dimCiudad]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dimCiudad](
	[id_ciudad] [int] IDENTITY(1,1) NOT NULL,
	[nombre_ciudad] [varchar](50) NULL,
 CONSTRAINT [PK_dimCiudad] PRIMARY KEY CLUSTERED 
(
	[id_ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dimEquipo]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dimEquipo](
	[id_equipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre_equipo] [varchar](50) NULL,
 CONSTRAINT [PK_dimEquipo] PRIMARY KEY CLUSTERED 
(
	[id_equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dimEquipoLocalVisitante]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dimEquipoLocalVisitante](
	[id_equipo_local_visitante] [int] IDENTITY(1,1) NOT NULL,
	[local_visitante] [varchar](50) NULL,
 CONSTRAINT [PK_dimEquipoLocalVisitante] PRIMARY KEY CLUSTERED 
(
	[id_equipo_local_visitante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dimEstadio]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dimEstadio](
	[id_estadio] [int] IDENTITY(1,1) NOT NULL,
	[nombre_ubicacion] [varchar](80) NULL,
	[id_ciudad] [int] NULL,
 CONSTRAINT [PK_dimEstadio] PRIMARY KEY CLUSTERED 
(
	[id_estadio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dimFalta]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dimFalta](
	[id_falta] [int] IDENTITY(1,1) NOT NULL,
	[id_tarjeta] [int] NULL,
	[minuto] [int] NULL,
 CONSTRAINT [PK_dimFalta] PRIMARY KEY CLUSTERED 
(
	[id_falta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dimJugador]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dimJugador](
	[id_jugador] [int] IDENTITY(1,1) NOT NULL,
	[nombre_jugador] [varchar](160) NULL,
	[posicion] [varchar](70) NULL,
 CONSTRAINT [PK_dimJugador] PRIMARY KEY CLUSTERED 
(
	[id_jugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dimNacionalidad]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dimNacionalidad](
	[id_nacionalidad] [int] IDENTITY(1,1) NOT NULL,
	[nacionalidad] [varchar](70) NULL,
 CONSTRAINT [PK_dimNacionalidad] PRIMARY KEY CLUSTERED 
(
	[id_nacionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dimPosicion]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dimPosicion](
	[id_posicion] [int] NOT NULL,
	[posicion_torneo] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dimTarjeta]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dimTarjeta](
	[id_tarjeta] [int] IDENTITY(1,1) NOT NULL,
	[color_tarjeta] [varchar](50) NULL,
 CONSTRAINT [PK_dimTarjeta] PRIMARY KEY CLUSTERED 
(
	[id_tarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dimTecnico]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dimTecnico](
	[id_tecnico] [int] IDENTITY(1,1) NOT NULL,
	[nombre_tecnico] [varchar](160) NULL,
	[tipo] [varchar](50) NULL,
 CONSTRAINT [PK_dimTecnico] PRIMARY KEY CLUSTERED 
(
	[id_tecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dimTorneo]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dimTorneo](
	[id_torneo] [int] IDENTITY(1,1) NOT NULL,
	[nombre_torneo] [varchar](50) NULL,
 CONSTRAINT [PK_dim_Torneo] PRIMARY KEY CLUSTERED 
(
	[id_torneo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factArbitro]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factArbitro](
	[id_estadio] [int] NOT NULL,
	[id_torneo] [int] NOT NULL,
	[id_tiempo] [date] NOT NULL,
	[id_arbitro] [int] NOT NULL,
	[faltas] [int] NOT NULL,
	[penales] [int] NOT NULL,
	[tiros_libres] [int] NOT NULL,
	[tarjetas_rojas] [int] NULL,
	[tarjetas_amarillas] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factCumplimientoDeTiempos]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factCumplimientoDeTiempos](
	[id_equipo] [int] NOT NULL,
	[id_torneo] [int] NOT NULL,
	[id_estadio] [int] NOT NULL,
	[cantidad_retrasos] [int] NOT NULL,
	[minutos_retrasos] [int] NOT NULL,
	[minutos_extras] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factEquipo]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factEquipo](
	[id_equipo] [int] NULL,
	[id_torneo] [int] NULL,
	[id_estadio] [int] NULL,
	[id_equipo_local_visitante] [int] NULL,
	[id_tiempo] [date] NULL,
	[goles_marcados] [int] NULL,
	[goles_encontra] [int] NULL,
	[diferencia_goles] [int] NULL,
	[puntos] [int] NULL,
	[partidos_ganados] [int] NULL,
	[partidos_perdidos] [int] NULL,
	[partidos_empatados] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factFairPlay]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factFairPlay](
	[id_equipo] [int] NOT NULL,
	[id_tiempo] [date] NOT NULL,
	[id_torneo] [int] NOT NULL,
	[id_jugador] [int] NOT NULL,
	[id_tarjeta] [int] NOT NULL,
	[id_tipo_falta] [int] NOT NULL,
	[faltas] [int] NOT NULL,
	[cantidad_tarjetas] [int] NOT NULL,
	[puntos] [int] NOT NULL,
	[minuto_falta] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factGol]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factGol](
	[id_jugador] [int] NULL,
	[id_equipo] [int] NULL,
	[id_torneo] [int] NULL,
	[id_estadio] [int] NULL,
	[id_nacionalidad] [int] NULL,
	[id_tiempo] [date] NULL,
	[goles_anotados] [int] NULL,
	[minuto_gol] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factPosicionEquipo]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factPosicionEquipo](
	[id_posicion] [int] NOT NULL,
	[id_equipo] [int] NOT NULL,
	[id_torneo] [int] NOT NULL,
	[cantidad_puntos] [int] NOT NULL,
	[partidos_ganados] [int] NOT NULL,
	[partidos_empatados] [int] NOT NULL,
	[goles_anotados] [int] NOT NULL,
	[goles_encontra] [int] NOT NULL,
	[diferencia_goles] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factRendimientoJugador]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factRendimientoJugador](
	[id_jugador] [int] NULL,
	[id_equipo] [int] NULL,
	[id_torneo] [int] NULL,
	[id_estadio] [int] NULL,
	[id_nacionalidad] [int] NULL,
	[id_tiempo] [date] NULL,
	[minutos_jugados] [int] NULL,
	[kilometros_recorridos] [int] NULL,
	[pases] [int] NULL,
	[intercepciones] [int] NULL,
	[takles_ganados] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factTecnico]    Script Date: 07/06/2023 10:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factTecnico](
	[id_equipo] [int] NULL,
	[id_torneo] [int] NULL,
	[id_tecnico] [int] NULL,
	[id_tiempo] [date] NULL,
	[cantidad_alineacion] [int] NULL,
	[partidos_ganados] [int] NULL,
	[goles_jugadores] [int] NULL,
	[partidos_disputados] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dimEstadio]  WITH NOCHECK ADD  CONSTRAINT [FK_dimEstadio_dimCiudad] FOREIGN KEY([id_ciudad])
REFERENCES [dbo].[dimCiudad] ([id_ciudad])
GO
ALTER TABLE [dbo].[dimEstadio] CHECK CONSTRAINT [FK_dimEstadio_dimCiudad]
GO
ALTER TABLE [dbo].[factEquipo]  WITH NOCHECK ADD  CONSTRAINT [FK_hechoEquipo_dimEquipo] FOREIGN KEY([id_equipo])
REFERENCES [dbo].[dimEquipo] ([id_equipo])
GO
ALTER TABLE [dbo].[factEquipo] CHECK CONSTRAINT [FK_hechoEquipo_dimEquipo]
GO
ALTER TABLE [dbo].[factEquipo]  WITH NOCHECK ADD  CONSTRAINT [FK_hechoEquipo_dimEquipoLocalVisitante] FOREIGN KEY([id_equipo_local_visitante])
REFERENCES [dbo].[dimEquipoLocalVisitante] ([id_equipo_local_visitante])
GO
ALTER TABLE [dbo].[factEquipo] CHECK CONSTRAINT [FK_hechoEquipo_dimEquipoLocalVisitante]
GO
ALTER TABLE [dbo].[factEquipo]  WITH NOCHECK ADD  CONSTRAINT [FK_hechoEquipo_dimEstadio] FOREIGN KEY([id_estadio])
REFERENCES [dbo].[dimEstadio] ([id_estadio])
GO
ALTER TABLE [dbo].[factEquipo] CHECK CONSTRAINT [FK_hechoEquipo_dimEstadio]
GO
ALTER TABLE [dbo].[factEquipo]  WITH NOCHECK ADD  CONSTRAINT [FK_hechoEquipo_dimTorneo] FOREIGN KEY([id_torneo])
REFERENCES [dbo].[dimTorneo] ([id_torneo])
GO
ALTER TABLE [dbo].[factEquipo] CHECK CONSTRAINT [FK_hechoEquipo_dimTorneo]
GO
/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[dimCiudad]
GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[dimEstadio]
GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[dimEquipoLocalVisitante]
GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[dimEquipo]
GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[dimTecnico]
GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[dimTorneo]
GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[dimJugador]
GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[dimNacionalidad]
GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[factEquipo]
GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[factRendimientoJugador]
 GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[factTecnico]
GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[factGol]
GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[factPosicionEquipo]
GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[factArbitro]
GO
SELECT *
  FROM [DW_TorneoFutbol].[dbo].[factFairPlay]
GO
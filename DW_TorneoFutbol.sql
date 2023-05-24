USE [master]
DROP DATABASE [DW_TorneoFutbol]

CREATE DATABASE [DW_TorneoFutbol]
GO
USE [DW_TorneoFutbol]
GO
/****** Object:  Table [dbo].[dimCiudad]    Script Date: 23/05/2023 20:09:48 ******/
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
/****** Object:  Table [dbo].[dimEquipo]    Script Date: 23/05/2023 20:09:49 ******/
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
/****** Object:  Table [dbo].[dimEquipoLocalVisitante]    Script Date: 23/05/2023 20:09:49 ******/
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
/****** Object:  Table [dbo].[dimEstadio]    Script Date: 23/05/2023 20:09:49 ******/
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
/****** Object:  Table [dbo].[dimTorneo]    Script Date: 23/05/2023 20:09:49 ******/
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
/****** Object:  Table [dbo].[hechoEquipo]    Script Date: 23/05/2023 20:09:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hechoEquipo](
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
ALTER TABLE [dbo].[dimEstadio]  WITH NOCHECK ADD  CONSTRAINT [FK_dimEstadio_dimCiudad] FOREIGN KEY([id_ciudad])
REFERENCES [dbo].[dimCiudad] ([id_ciudad])
GO
ALTER TABLE [dbo].[dimEstadio] CHECK CONSTRAINT [FK_dimEstadio_dimCiudad]
GO
ALTER TABLE [dbo].[hechoEquipo]  WITH NOCHECK ADD  CONSTRAINT [FK_hechoEquipo_dimEquipo] FOREIGN KEY([id_equipo])
REFERENCES [dbo].[dimEquipo] ([id_equipo])
GO
ALTER TABLE [dbo].[hechoEquipo] CHECK CONSTRAINT [FK_hechoEquipo_dimEquipo]
GO
ALTER TABLE [dbo].[hechoEquipo]  WITH NOCHECK ADD  CONSTRAINT [FK_hechoEquipo_dimEquipoLocalVisitante] FOREIGN KEY([id_equipo_local_visitante])
REFERENCES [dbo].[dimEquipoLocalVisitante] ([id_equipo_local_visitante])
GO
ALTER TABLE [dbo].[hechoEquipo] CHECK CONSTRAINT [FK_hechoEquipo_dimEquipoLocalVisitante]
GO
ALTER TABLE [dbo].[hechoEquipo]  WITH NOCHECK ADD  CONSTRAINT [FK_hechoEquipo_dimEstadio] FOREIGN KEY([id_estadio])
REFERENCES [dbo].[dimEstadio] ([id_estadio])
GO
ALTER TABLE [dbo].[hechoEquipo] CHECK CONSTRAINT [FK_hechoEquipo_dimEstadio]
GO
ALTER TABLE [dbo].[hechoEquipo]  WITH NOCHECK ADD  CONSTRAINT [FK_hechoEquipo_dimTorneo] FOREIGN KEY([id_torneo])
REFERENCES [dbo].[dimTorneo] ([id_torneo])
GO
ALTER TABLE [dbo].[hechoEquipo] CHECK CONSTRAINT [FK_hechoEquipo_dimTorneo]
GO

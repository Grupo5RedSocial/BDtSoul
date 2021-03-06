USE [master]
GO
/****** Object:  Database [redSocial]    Script Date: 03/13/2016 01:58:06 ******/
CREATE DATABASE [redSocial] ON  PRIMARY 
( NAME = N'redSocial', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLPI\MSSQL\DATA\redSocial.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'redSocial_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLPI\MSSQL\DATA\redSocial_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [redSocial] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [redSocial].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [redSocial] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [redSocial] SET ANSI_NULLS OFF
GO
ALTER DATABASE [redSocial] SET ANSI_PADDING OFF
GO
ALTER DATABASE [redSocial] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [redSocial] SET ARITHABORT OFF
GO
ALTER DATABASE [redSocial] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [redSocial] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [redSocial] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [redSocial] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [redSocial] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [redSocial] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [redSocial] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [redSocial] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [redSocial] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [redSocial] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [redSocial] SET  DISABLE_BROKER
GO
ALTER DATABASE [redSocial] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [redSocial] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [redSocial] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [redSocial] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [redSocial] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [redSocial] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [redSocial] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [redSocial] SET  READ_WRITE
GO
ALTER DATABASE [redSocial] SET RECOVERY SIMPLE
GO
ALTER DATABASE [redSocial] SET  MULTI_USER
GO
ALTER DATABASE [redSocial] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [redSocial] SET DB_CHAINING OFF
GO
USE [redSocial]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 03/13/2016 01:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuarios](
	[idUsuario] [int] NULL,
	[usuario] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[idPersona] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RsPublicaciones]    Script Date: 03/13/2016 01:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RsPublicaciones](
	[id_publicacion] [int] NULL,
	[publicacion] [varchar](1000) NULL,
	[id_persona] [int] NULL,
	[imagen] [varchar](1000) NULL,
	[TIPO] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RsPersonas]    Script Date: 03/13/2016 01:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RsPersonas](
	[id_persona] [int] NULL,
	[usuario] [varchar](20) NULL,
	[password] [varchar](40) NULL,
	[nombre] [varchar](1000) NULL,
	[edad] [int] NULL,
	[telefono] [int] NULL,
	[correo] [varchar](1000) NULL,
	[imagen] [varchar](1000) NULL,
	[fechaCreacion] [date] NULL,
	[resetpass] [varchar](1) NULL,
	[estado] [varchar](1) NULL,
	[rol] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RsLikes]    Script Date: 03/13/2016 01:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RsLikes](
	[id_like] [int] NULL,
	[id_publicacion] [int] NULL,
	[id_persona] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RsContactos]    Script Date: 03/13/2016 01:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RsContactos](
	[id_contacto] [int] NULL,
	[id_persona_contacto] [int] NULL,
	[fecha] [date] NULL,
	[id_persona] [int] NULL,
	[estado] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RsComentarios]    Script Date: 03/13/2016 01:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RsComentarios](
	[id_comentario] [int] NULL,
	[comentario] [varchar](1000) NULL,
	[id_publicacion] [int] NULL,
	[id_persona] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

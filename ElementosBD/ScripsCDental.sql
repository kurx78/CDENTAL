
--Create database

USE [master]
GO
IF NOT EXISTS (SELECT [name] FROM sys.databases WHERE name = N'CDental')
BEGIN
CREATE DATABASE [CDental] COLLATE Latin1_General_CI_AI
END
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'CDental', @new_cmptlevel=100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
BEGIN
	EXEC [CDental].[dbo].[sp_fulltext_database] @action = 'enable'
END
GO
ALTER DATABASE [CDental] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CDental] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CDental] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CDental] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CDental] SET ARITHABORT OFF
GO
ALTER DATABASE [CDental] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CDental] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CDental] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CDental] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CDental] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CDental] SET CURSOR_DEFAULT GLOBAL
GO
ALTER DATABASE [CDental] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CDental] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CDental] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CDental] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CDental] SET DISABLE_BROKER
GO
ALTER DATABASE [CDental] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CDental] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CDental] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CDental] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CDental] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CDental] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CDental] SET READ_WRITE
GO
ALTER DATABASE [CDental] SET RECOVERY FULL
GO
ALTER DATABASE [CDental] SET MULTI_USER
GO
ALTER DATABASE [CDental] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CDental] SET DB_CHAINING OFF
GO

USE [CDental]
GO

--Database Schemas

USE [CDental]
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'dbo')
EXEC sys.sp_executesql N'CREATE SCHEMA [dbo] AUTHORIZATION [dbo]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'guest')
EXEC sys.sp_executesql N'CREATE SCHEMA [guest] AUTHORIZATION [guest]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'INFORMATION_SCHEMA')
EXEC sys.sp_executesql N'CREATE SCHEMA [INFORMATION_SCHEMA] AUTHORIZATION [INFORMATION_SCHEMA]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'sys')
EXEC sys.sp_executesql N'CREATE SCHEMA [sys] AUTHORIZATION [sys]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_owner')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_owner] AUTHORIZATION [db_owner]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_accessadmin')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_accessadmin] AUTHORIZATION [db_accessadmin]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_securityadmin')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_securityadmin] AUTHORIZATION [db_securityadmin]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_ddladmin')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_ddladmin] AUTHORIZATION [db_ddladmin]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_backupoperator')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_backupoperator] AUTHORIZATION [db_backupoperator]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_datareader')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_datareader] AUTHORIZATION [db_datareader]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_datawriter')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_datawriter] AUTHORIZATION [db_datawriter]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_denydatareader')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_denydatareader] AUTHORIZATION [db_denydatareader]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_denydatawriter')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_denydatawriter] AUTHORIZATION [db_denydatawriter]'
GO

--Table dbo.Canton

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[Canton] (
	[Id_provincia] [int] NOT NULL,
	[Id_canton] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL);
GO

INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 1, N'SAN JOSE')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 2, N'ESCAZU')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 3, N'DESAMPARADOS')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 4, N'PURISCAL')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 5, N'TARRAZU')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 6, N'ASERRI')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 7, N'MORA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 8, N'GOICOECHEA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 9, N'SANTA ANA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 10, N'ALAJUELITA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 11, N'VAZQUEZ DE CORONADO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 12, N'ACOSTA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 13, N'TIBAS')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 14, N'MORAVIA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 15, N'MONTES DE OCA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 16, N'TURRUBARES')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 17, N'DOTA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 18, N'CURRIDABAT')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 19, N'PEREZ ZELEDON')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (1, 20, N'LEON CORTES')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 1, N'ALAJUELA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 2, N'SAN RAMON')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 3, N'GRECIA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 4, N'SAN MATEO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 5, N'ATENAS')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 6, N'NARANJO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 7, N'PALMARES')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 8, N'POAS')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 9, N'OROTINA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 10, N'SAN CARLOS')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 11, N'ALFARO RUIZ')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 12, N'VALVERDE VEGA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 13, N'UPALA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 14, N'LOS CHILES')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 15, N'GUATUSO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (2, 40, N'SUGEF')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (3, 1, N'CARTAGO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (3, 2, N'PARAISO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (3, 3, N'LA UNION')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (3, 4, N'JIMENEZ')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (3, 5, N'TURRIALBA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (3, 6, N'ALVARADO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (3, 7, N'OREAMUNO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (3, 8, N'EL GUARCO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (4, 1, N'HEREDIA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (4, 2, N'BARVA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (4, 3, N'STO. DOMINGO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (4, 4, N'SANTA BARBARA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (4, 5, N'SAN RAFAEL')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (4, 6, N'SAN ISIDRO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (4, 7, N'BELEN')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (4, 8, N'FLORES')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (4, 9, N'SAN PABLO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (4, 10, N'SARAPIQUI')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (5, 1, N'LIBERIA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (5, 2, N'NICOYA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (5, 3, N'SANTA CRUZ')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (5, 4, N'BAGACES')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (5, 5, N'CARRILLO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (5, 6, N'CAÑAS')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (5, 7, N'ABANGARES')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (5, 8, N'TILARAN')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (5, 9, N'NANDAYURE')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (5, 10, N'LA CRUZ')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (5, 11, N'HOJANCHA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (6, 1, N'PUNTARENAS')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (6, 2, N'ESPARZA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (6, 3, N'BUENOS AIRES')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (6, 4, N'MONTES DE ORO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (6, 5, N'OSA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (6, 6, N'AGUIRRE')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (6, 7, N'GOLFITO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (6, 8, N'COTO BRUS')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (6, 9, N'PARRITA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (6, 10, N'CORREDORES')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (6, 11, N'GARABITO')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (7, 1, N'LIMON')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (7, 2, N'POCOCI')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (7, 3, N'SIQUIRRES')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (7, 4, N'TALAMANCA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (7, 5, N'MATINA')

GO
INSERT INTO [dbo].[Canton] ([Id_provincia], [Id_canton], [Descripcion])
	VALUES (7, 6, N'GUACIMO')

GO

--Table dbo.Cita

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[Cita] (
	[Cita] [int] NOT NULL IDENTITY (1, 1),
	[Expediente] [int] NULL,
	[Fecha] [datetime] NULL,
	[Observaciones] [varchar](MAX) NULL);
GO

SET IDENTITY_INSERT [dbo].[Cita] ON
GO
INSERT INTO [dbo].[Cita] ([Cita], [Expediente], [Fecha], [Observaciones])
	VALUES (2, 7, CAST(0x0000a3fe0172c9e0 AS datetime), N'Caso Urgencia')

GO
INSERT INTO [dbo].[Cita] ([Cita], [Expediente], [Fecha], [Observaciones])
	VALUES (3, 7, CAST(0x0000a40c006c7d70 AS datetime), N'Le duele mucho')

GO
INSERT INTO [dbo].[Cita] ([Cita], [Expediente], [Fecha], [Observaciones])
	VALUES (4, 7, CAST(0x0000a407007d3e80 AS datetime), N'SE muere')

GO
SET IDENTITY_INSERT [dbo].[Cita] OFF
GO

--Table dbo.Cliente

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[Cliente] (
	[Cedula] [varchar](12) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Apellido1] [varchar](100) NOT NULL,
	[Apellido2] [varchar](100) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Dama] [bit] NOT NULL,
	[TipoOcupacion] [int] NULL,
	[Medico] [varchar](50) NULL,
	[EmergenciaAvisar] [varchar](12) NULL);
GO

INSERT INTO [dbo].[Cliente] ([Cedula], [Nombre], [Apellido1], [Apellido2], [FechaNacimiento], [Dama], [TipoOcupacion], [Medico], [EmergenciaAvisar])
	VALUES (N'104070166', N'Maria', N'Carmona', N'Rojas', CAST(0x63180b AS date), CAST ('True' AS bit), 1, N'De cabecera', N'304360398')

GO
INSERT INTO [dbo].[Cliente] ([Cedula], [Nombre], [Apellido1], [Apellido2], [FechaNacimiento], [Dama], [TipoOcupacion], [Medico], [EmergenciaAvisar])
	VALUES (N'304360398', N'Steven', N'Arias', N'Figueroa', CAST(0xd6140b AS date), CAST ('False' AS bit), 1, N'No', N'304360398')

GO

--Table dbo.Cuentas

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[Cuentas] (
	[CodigoCuenta] [int] NOT NULL IDENTITY (1, 1),
	[Expediente] [int] NULL,
	[Debe] [decimal](18, 2) NULL,
	[Abono] [decimal](18, 2) NULL,
	[Saldo] [decimal](18, 2) NULL);
GO

SET IDENTITY_INSERT [dbo].[Cuentas] ON
GO
INSERT INTO [dbo].[Cuentas] ([CodigoCuenta], [Expediente], [Debe], [Abono], [Saldo])
	VALUES (1, 7, 0.00, 0.00, 350560.00)

GO
SET IDENTITY_INSERT [dbo].[Cuentas] OFF
GO

--Table dbo.CuentasHistorico

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[CuentasHistorico] (
	[CodigoCuenta] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Debe] [decimal](18, 2) NOT NULL,
	[Abono] [decimal](18, 2) NOT NULL,
	[Saldo] [decimal](18, 2) NOT NULL);
GO

INSERT INTO [dbo].[CuentasHistorico] ([CodigoCuenta], [Fecha], [Usuario], [Debe], [Abono], [Saldo])
	VALUES (1, CAST(0x0000a407006a8e09 AS datetime), N'sariasf101', 351560.00, 1000.00, 350560.00)

GO

--Table dbo.DireccionesCliente

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[DireccionesCliente] (
	[Cedula] [varchar](12) NOT NULL,
	[TipoDireccion] [int] NOT NULL,
	[Id_pais] [int] NULL,
	[Id_provincia] [int] NULL,
	[Id_canton] [int] NULL,
	[Id_distrito] [int] NULL,
	[Direccion] [varchar](MAX) NULL);
GO

INSERT INTO [dbo].[DireccionesCliente] ([Cedula], [TipoDireccion], [Id_pais], [Id_provincia], [Id_canton], [Id_distrito], [Direccion])
	VALUES (N'104070166', 1, 1, 1, 1, 1, N'En el puro centro de San Jose')

GO
INSERT INTO [dbo].[DireccionesCliente] ([Cedula], [TipoDireccion], [Id_pais], [Id_provincia], [Id_canton], [Id_distrito], [Direccion])
	VALUES (N'304360398', 1, 1, 3, 7, 1, N'200 Oeste y 25 Norte del Parque de San Rafael de Oreamuno')

GO

--Table dbo.Distrito

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[Distrito] (
	[Id_provincia] [int] NOT NULL,
	[Id_canton] [int] NOT NULL,
	[Id_distrito] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL);
GO

INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 1, 1, N'CARMEN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 1, 2, N'MERCED')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 1, 3, N'HOSPITAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 1, 4, N'CATEDRAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 1, 5, N'ZAPOTE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 1, 6, N'SAN FCO DE DOS RIOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 1, 7, N'URUCA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 1, 8, N'MATA REDONDA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 1, 9, N'PAVAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 1, 10, N'HATILLO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 1, 11, N'SAN SEBASTIAN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 2, 1, N'ESCAZU')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 2, 2, N'SAN ANTONIO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 2, 3, N'SAN RAFAEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 2, 4, N'SAN MIGUEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 3, 1, N'DESAMPARADOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 3, 2, N'SAN MIGUEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 3, 3, N'SAN JUAN DE DIOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 3, 4, N'SAN RAFAEL ARRIBA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 3, 5, N'SAN ANTONIO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 3, 6, N'FRAILES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 3, 7, N'PATARRA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 3, 8, N'SAN CRISTOBAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 3, 9, N'ROSARIO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 3, 10, N'DAMAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 3, 11, N'SAN RAFAEL ABAJO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 3, 12, N'GRAVILIAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 3, 13, N'LOS GUIDO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 4, 1, N'SANTIAGO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 4, 2, N'MERCEDES SUR')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 4, 3, N'BARBACOA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 4, 4, N'GRIFO ALTO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 4, 5, N'SAN RAFAEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 4, 6, N'CANDELARITA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 4, 7, N'DESAMPARADITOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 4, 8, N'SAN ANTONIO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 4, 9, N'CHIRES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 5, 1, N'SAN MARCOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 5, 2, N'SAN LORENZO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 5, 3, N'SAN CARLOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 6, 1, N'ASERRI')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 6, 2, N'TARBACA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 6, 3, N'VUELTA DE JORCO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 6, 4, N'SAN GABRIEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 6, 5, N'LEGUA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 6, 6, N'MONTERREY')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 6, 7, N'SALITRILLOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 7, 1, N'COLON')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 7, 2, N'GUAYABO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 7, 3, N'TABARCIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 7, 4, N'PIEDRAS NEGRAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 7, 5, N'PICAGRES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 8, 1, N'GUADALUPE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 8, 2, N'SAN FRANCISCO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 8, 3, N'CALLE BLANCOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 8, 4, N'MATA DE PLATANO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 8, 5, N'IPIS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 8, 6, N'RANCHO REDONDO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 8, 7, N'PURRAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 9, 1, N'SANTA ANA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 9, 2, N'SALITRAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 9, 3, N'POZOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 9, 4, N'URUCA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 9, 5, N'PIEDADES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 9, 6, N'BRASIL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 10, 1, N'ALAJUELITA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 10, 2, N'SAN JOSECITO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 10, 3, N'SAN ANTONIO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 10, 4, N'CONCEPCION')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 10, 5, N'SAN FELIPE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 11, 1, N'SAN ISIDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 11, 2, N'SAN RAFAEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 11, 3, N'JESUS (DULCE NOMBRE)')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 11, 4, N'PATALILLO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 11, 5, N'CASCAJAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 12, 1, N'SAN IGNACIO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 12, 2, N'GUATIL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 12, 3, N'PALMICHAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 12, 4, N'CANGREJAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 12, 5, N'SABANILLAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 13, 1, N'SAN JUAN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 13, 2, N'CINCO ESQUINAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 13, 3, N'ANSELMO LLORENTE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 13, 4, N'LEON XIII')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 13, 5, N'COLIMA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 14, 1, N'SAN VICENTE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 14, 2, N'SAN JERONIMO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 14, 3, N'TRINIDAD')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 15, 1, N'SAN PEDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 15, 2, N'SABANILLA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 15, 3, N'MERCEDES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 15, 4, N'SAN RAFAEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 16, 1, N'SAN PABLO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 16, 2, N'SAN PEDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 16, 3, N'SAN JUAN DE MATA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 16, 4, N'SAN LUIS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 16, 5, N'CARARA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 17, 1, N'SANTA MARIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 17, 2, N'JARDIN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 17, 3, N'COPEY')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 18, 1, N'CURRIDABAT')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 18, 2, N'GRANADILLA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 18, 3, N'SANCHES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 18, 4, N'TIRRASES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 19, 1, N'SAN ISIDRO DEL GENERAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 19, 2, N'GENERAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 19, 3, N'DANIEL FLORES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 19, 4, N'RIVAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 19, 5, N'SAN PEDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 19, 6, N'PLATANARES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 19, 7, N'PEJIBAYE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 19, 8, N'CAJON')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 19, 9, N'BARU')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 19, 10, N'RIO NUEVO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 19, 11, N'EL PARAMO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 20, 1, N'SAN PABLO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 20, 2, N'SAN ANDRES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 20, 3, N'LLANO BONITO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 20, 4, N'SAN ISIDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 20, 5, N'SANTA CRUZ')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (1, 20, 6, N'SAN ANTONIO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 1, N'ALAJUELA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 2, N'SAN JOSE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 3, N'CARRIZAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 4, N'SAN ANTONIO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 5, N'GUACIMA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 6, N'SAN ISIDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 7, N'SABANILLA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 8, N'SAN RAFAEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 9, N'RIO SEGUNDO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 10, N'DESAMPARADOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 11, N'TURRUCARES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 12, N'TAMBOR')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 13, N'GARITA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 1, 14, N'SARAPIQUI')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 2, 1, N'SAN RAMON')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 2, 2, N'SANTIAGO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 2, 3, N'SAN JUAN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 2, 4, N'PIEDADES NORTE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 2, 5, N'PIEDADES SUR')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 2, 6, N'SAN RAFAEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 2, 7, N'SAN ISIDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 2, 8, N'ANGELES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 2, 9, N'ALFARO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 2, 10, N'VOLIO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 2, 11, N'CONCEPCION')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 2, 12, N'ZAPOTAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 2, 13, N'PENAS BLANCAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 3, 1, N'GRECIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 3, 2, N'SAN ISIDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 3, 3, N'SAN JOSE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 3, 4, N'SAN ROQUE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 3, 5, N'TACARES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 3, 6, N'RIO CUARTO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 3, 7, N'PUENTE DE PIEDRA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 3, 8, N'BOLIVAR')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 4, 1, N'SAN MATEO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 4, 2, N'DESMONTE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 4, 3, N'JESUS MARIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 5, 1, N'ATENAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 5, 2, N'JESUS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 5, 3, N'MERCEDES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 5, 4, N'SAN ISIDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 5, 5, N'CONCEPCION')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 5, 6, N'SAN JOSE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 5, 7, N'SANTA EULALIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 5, 8, N'ESCOBAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 6, 1, N'NARANJO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 6, 2, N'SAN MIGUEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 6, 3, N'SAN JOSE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 6, 4, N'CIRRI SUR')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 6, 5, N'SAN JERONIMO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 6, 6, N'SAN JUAN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 6, 7, N'ROSARIO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 7, 1, N'PALMARES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 7, 2, N'ZARAGOZA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 7, 3, N'BUENOS AIRES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 7, 4, N'SANTIAGO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 7, 5, N'CANDELARIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 7, 6, N'ESQUIPULAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 7, 7, N'LA GRANJA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 8, 1, N'SAN PEDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 8, 2, N'SAN JUAN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 8, 3, N'SAN RAFAEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 8, 4, N'CARRILLLOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 8, 5, N'SABANA REDONDA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 9, 1, N'OROTINA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 9, 2, N'MASTATE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 9, 3, N'HACIENDA VIEJA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 9, 4, N'COYOLAR')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 9, 5, N'CEIBA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 10, 1, N'QUESADA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 10, 2, N'FLORENCIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 10, 3, N'BUENA VISTA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 10, 4, N'AGUAS ZARCAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 10, 5, N'VENECIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 10, 6, N'PITAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 10, 7, N'FORTUNA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 10, 8, N'TIGRA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 10, 9, N'PALMERA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 10, 10, N'VENADO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 10, 11, N'CUTRIS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 10, 12, N'MONTERREY')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 10, 13, N'POCOSOL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 11, 1, N'ZARCERO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 11, 2, N'LAGUNA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 11, 3, N'TAPEZCO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 11, 4, N'GUADALUPE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 11, 5, N'PALMIRA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 11, 6, N'ZAPOTE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 11, 7, N'BRISAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 12, 1, N'SARCHI NORTE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 12, 2, N'SARCHI SUR')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 12, 3, N'TORO AMARILLO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 12, 4, N'SAN PEDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 12, 5, N'RODRIGUEZ')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 13, 1, N'UPALA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 13, 2, N'AGUAS CLARAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 13, 3, N'SAN JOSE (PIZOTE)')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 13, 4, N'BIJAGUA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 13, 5, N'DELICIAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 13, 6, N'DOS RIOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 13, 7, N'YOLILLAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 14, 1, N'LOS CHILES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 14, 2, N'CANO NEGRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 14, 3, N'EL AMPARO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 14, 4, N'SAN JORGE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 15, 1, N'SAN RAFAEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 15, 2, N'BUENAVISTA (SAN JOSE)')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (2, 15, 3, N'COTE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 1, 1, N'PARTE ORIENTAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 1, 2, N'PARTE OCCIDENTAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 1, 3, N'EL CARMEN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 1, 4, N'SAN NICOLAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 1, 5, N'SAN FCO. AGUACALIENTE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 1, 6, N'GUADALUPE (ARENILLA)')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 1, 7, N'CORRALILLO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 1, 8, N'TIERRA BLANCA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 1, 9, N'DULCE NOMBRE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 1, 10, N'LLANO GRANDE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 1, 11, N'QUEBRADILLA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 2, 1, N'PARAISO (CENTRAL)')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 2, 2, N'SANTIAGO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 2, 3, N'OROSI')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 2, 4, N'CACHI')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 2, 5, N'LLANOS SANTA LUCIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 3, 1, N'TRES RIOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 3, 2, N'SAN DIEGO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 3, 3, N'SAN JUAN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 3, 4, N'SAN RAFAEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 3, 5, N'CONCEPCION')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 3, 6, N'DULCE NOMBRE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 3, 7, N'SAN RAMON')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 3, 8, N'RIO AZUL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 4, 1, N'JUAN VINAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 4, 2, N'TUCURRIQUE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 4, 3, N'PEJIBAYE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 5, 1, N'TURRIALBA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 5, 2, N'LA SUIZA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 5, 3, N'PERALTA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 5, 4, N'SANTA CRUZ')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 5, 5, N'SANTA TERESITA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 5, 6, N'PAVONES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 5, 7, N'TUIS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 5, 8, N'TAYUTIC')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 5, 9, N'SANTA ROSA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 5, 10, N'TRES EQUIS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 5, 11, N'LA ISABEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 5, 12, N'CHIRRIPO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 6, 1, N'PACAYAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 6, 2, N'CERVANTES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 6, 3, N'CAPELLADES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 7, 1, N'SAN RAFAEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 7, 2, N'COT')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 7, 3, N'POTRERO CERRADO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 7, 4, N'CIPRESES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 7, 5, N'SANTA ROSA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 8, 1, N'EL TEJAR')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 8, 2, N'SAN ISIDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 8, 3, N'TOBOSI')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (3, 8, 4, N'PATIO DE AGUA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 1, 1, N'HEREDIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 1, 2, N'MERCEDES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 1, 3, N'SAN FRANCISCO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 1, 4, N'ULLOA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 1, 5, N'VARABLANCA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 2, 1, N'BARVA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 2, 2, N'SAN PEDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 2, 3, N'SAN PABLO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 2, 4, N'SAN ROQUE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 2, 5, N'SANTA LUCIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 2, 6, N'SAN JOSE DE LA MONTANA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 3, 1, N'STO. DOMINGO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 3, 2, N'SAN VICENTE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 3, 3, N'SAN MIGUEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 3, 4, N'PARACITO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 3, 5, N'SANTO TOMAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 3, 6, N'SANTA ROSA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 3, 7, N'TURES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 3, 8, N'PARA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 4, 1, N'SANTA BARBARA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 4, 2, N'SAN PEDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 4, 3, N'SAN JUAN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 4, 4, N'JESUS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 4, 5, N'SANTO DOMINGO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 4, 6, N'PURABA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 5, 1, N'SAN RAFAEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 5, 2, N'SAN JOSECITO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 5, 3, N'SANTIAGO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 5, 4, N'ANGELES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 5, 5, N'CONCEPCION')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 6, 1, N'SAN ISIDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 6, 2, N'SAN JOSE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 6, 3, N'CONCEPCION')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 6, 4, N'SAN FRANCISCO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 7, 1, N'SAN ANTONIO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 7, 2, N'LA RIBERA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 7, 3, N'ASUNCION')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 8, 1, N'SAN JOAQUIN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 8, 2, N'BARRANTES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 8, 3, N'LLORENTE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 9, 1, N'SAN PABLO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 10, 1, N'PUERTO VIEJO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 10, 2, N'LA VIRGEN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 10, 3, N'HORQUETAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 10, 4, N'LLANURAS GASPAR')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (4, 10, 5, N'CUREÑA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 1, 1, N'LIBERIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 1, 2, N'CAÑAS DULCES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 1, 3, N'MAYORGA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 1, 4, N'NACASCOLO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 1, 5, N'CURUBANDE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 2, 1, N'NICOYA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 2, 2, N'MANSION')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 2, 3, N'SAN ANTONIO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 2, 4, N'QUEBRADA HONDA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 2, 5, N'SAMARA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 2, 6, N'NOSARA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 2, 7, N'BELEN DE NOSARITA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 3, 1, N'SANTA CRUZ')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 3, 2, N'BOLSON')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 3, 3, N'VEINTISIETE DE ABRIL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 3, 4, N'TEMPATE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 3, 5, N'CARTAGENA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 3, 6, N'CUAJINIQUIL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 3, 7, N'DIRIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 3, 8, N'CABO VELAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 3, 9, N'TAMARINDO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 4, 1, N'BAGACES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 4, 2, N'FORTUNA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 4, 3, N'MOGOTE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 4, 4, N'RIO NARANJO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 5, 1, N'FILADELFIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 5, 2, N'PALMIRA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 5, 3, N'SARDINAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 5, 4, N'BELEN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 6, 1, N'CAÑAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 6, 2, N'PALMIRA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 6, 3, N'SAN MIGUEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 6, 4, N'BEBEDERO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 6, 5, N'POROZAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 7, 1, N'JUNTAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 7, 2, N'SIERRA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 7, 3, N'SAN JUAN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 7, 4, N'COLORADO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 8, 1, N'TILARAN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 8, 2, N'QUEBRADA GRANDE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 8, 3, N'TRONADORA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 8, 4, N'SANTA ROSA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 8, 5, N'LIBANO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 8, 6, N'TIERRAS MORENAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 8, 7, N'ARENAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 9, 1, N'CARMONA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 9, 2, N'SANTA RITA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 9, 3, N'ZAPOTAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 9, 4, N'SAN PABLO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 9, 5, N'PORVENIR')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 9, 6, N'BEJUCO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 10, 1, N'LA CRUZ')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 10, 2, N'SANTA CECILIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 10, 3, N'GARITA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 10, 4, N'SANTA ELENA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 11, 1, N'HOJANCHA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 11, 2, N'MONTE ROMO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 11, 3, N'PUERTO CARRILLO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (5, 11, 4, N'HUACAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 1, N'PUNTARENAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 2, N'PITAHAYA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 3, N'CHOMES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 4, N'LEPANTO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 5, N'PAQUERA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 6, N'MANZANILLO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 7, N'GUACIMAL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 8, N'BARRANCA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 9, N'MONTE VERDE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 10, N'ISLA DEL COCO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 11, N'COBANO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 12, N'CHACARITA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 13, N'CHIRA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 14, N'ACAPULCO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 15, N'EL ROBLE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 1, 16, N'ARANCIBIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 2, 1, N'ESPIRITU SANTO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 2, 2, N'SAN JUAN GRANDE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 2, 3, N'MACACONA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 2, 4, N'SAN RAFAEL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 2, 5, N'SAN JERONIMO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 3, 1, N'BUENOS AIRES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 3, 2, N'VOLCAN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 3, 3, N'POTRERO GRANDE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 3, 4, N'BORUCA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 3, 5, N'PILAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 3, 6, N'CHANGUENA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 3, 7, N'COLINAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 3, 8, N'BIOLLEY')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 3, 9, N'BRUNKA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 4, 1, N'MIRAMAR')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 4, 2, N'UNION')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 4, 3, N'SAN ISIDRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 5, 1, N'PUERTO CORTES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 5, 2, N'PALMAR')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 5, 3, N'SIERPE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 5, 4, N'BAHIA BALLENA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 5, 5, N'PIEDRAS BLANCAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 6, 1, N'QUEPOS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 6, 2, N'SAVEGRE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 6, 3, N'NARANJITO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 7, 1, N'GOLFITO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 7, 2, N'PUERTO JIMENEZ')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 7, 3, N'GUAYCARA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 7, 4, N'PAVONES O VILLA CONTE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 8, 1, N'SAN VITO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 8, 2, N'SABALITO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 8, 3, N'AGUA BUENA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 8, 4, N'LIMONCITO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 8, 5, N'PITTIER')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 9, 1, N'PARRITA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 10, 1, N'CORREDORES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 10, 2, N'LA CUESTA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 10, 3, N'PASO CANOAS')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 10, 4, N'LAUREL')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 11, 1, N'JACO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (6, 11, 2, N'TARCOLES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 1, 1, N'LIMON')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 1, 2, N'VALLE DE LA ESTRELLA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 1, 3, N'RIO BLANCO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 1, 4, N'MATAMA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 2, 1, N'GUAPILES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 2, 2, N'JIMENEZ')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 2, 3, N'RITA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 2, 4, N'ROXANA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 2, 5, N'CARIARI')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 2, 6, N'COLORADO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 3, 1, N'SIQUIRRES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 3, 2, N'PACUARITO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 3, 3, N'FLORIDA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 3, 4, N'GERMANIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 3, 5, N'CAIRO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 3, 6, N'ALEGRIA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 4, 1, N'BRATSI')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 4, 2, N'SIXAOLA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 4, 3, N'CAHUITA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 4, 4, N'TELIRE')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 5, 1, N'MATINA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 5, 2, N'BATAN')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 5, 3, N'CARRANDI')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 6, 1, N'GUACIMO')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 6, 2, N'MERCEDES')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 6, 3, N'POCORA')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 6, 4, N'RIO JIMENEZ')

GO
INSERT INTO [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito], [Descripcion])
	VALUES (7, 6, 5, N'DUACARI')

GO

--Table dbo.ExamenDetalle

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[ExamenDetalle] (
	[Examen] [int] NOT NULL,
	[Pieza] [int] NOT NULL,
	[TipoPosicion] [int] NOT NULL,
	[TipoEstadoPieza] [int] NULL,
	[Observaciones] [varchar](MAX) NULL,
	[FechaCambioEstado] [date] NULL);
GO

INSERT INTO [dbo].[ExamenDetalle] ([Examen], [Pieza], [TipoPosicion], [TipoEstadoPieza], [Observaciones], [FechaCambioEstado])
	VALUES (1, 16, 1, 2, N'Tratamiento de nervio', CAST(0x62390b AS date))

GO
INSERT INTO [dbo].[ExamenDetalle] ([Examen], [Pieza], [TipoPosicion], [TipoEstadoPieza], [Observaciones], [FechaCambioEstado])
	VALUES (1, 17, 2, 3, N'Extraccion', CAST(0x62390b AS date))

GO
INSERT INTO [dbo].[ExamenDetalle] ([Examen], [Pieza], [TipoPosicion], [TipoEstadoPieza], [Observaciones], [FechaCambioEstado])
	VALUES (1, 19, 0, 5, N'Calza', CAST(0x62390b AS date))

GO
INSERT INTO [dbo].[ExamenDetalle] ([Examen], [Pieza], [TipoPosicion], [TipoEstadoPieza], [Observaciones], [FechaCambioEstado])
	VALUES (1, 31, 0, 1, N'Daños moderados, calza', CAST(0x62390b AS date))

GO
INSERT INTO [dbo].[ExamenDetalle] ([Examen], [Pieza], [TipoPosicion], [TipoEstadoPieza], [Observaciones], [FechaCambioEstado])
	VALUES (1, 32, 2, 2, N'Tratamiento de nervio', CAST(0x62390b AS date))

GO

--Table dbo.ExamenEncabezado

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[ExamenEncabezado] (
	[Examen] [int] NOT NULL IDENTITY (1, 1),
	[Expediente] [int] NULL,
	[Observaciones] [varchar](MAX) NULL);
GO

SET IDENTITY_INSERT [dbo].[ExamenEncabezado] ON
GO
INSERT INTO [dbo].[ExamenEncabezado] ([Examen], [Expediente], [Observaciones])
	VALUES (1, 7, N'Creado: 20/12/2014 12:13:49 a.m.')

GO
SET IDENTITY_INSERT [dbo].[ExamenEncabezado] OFF
GO

--Table dbo.Expediente

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[Expediente] (
	[Expediente] [int] NOT NULL IDENTITY (1, 1),
	[Cedula] [varchar](12) NULL,
	[FechaCreacion] [datetime] NULL,
	[BajoTratamientoMedico] [bit] NULL,
	[TomaMedicamento] [bit] NULL,
	[Diabetes] [bit] NULL,
	[Artritis] [bit] NULL,
	[EnfermedadCardiaca] [bit] NULL,
	[FiebreReumatica] [bit] NULL,
	[Hepatitis] [bit] NULL,
	[Ulceras] [bit] NULL,
	[TrastornosRenales] [bit] NULL,
	[EnfermedadesNerviosas] [bit] NULL,
	[OtrasEnfermedades] [varchar](MAX) NULL,
	[OperadoInternado] [bit] NULL,
	[AlteracionSaludUltMeses] [bit] NULL,
	[OtraEnfermedadNoMencionada] [bit] NULL,
	[AlergicoAspirina] [bit] NULL,
	[Penicilina] [bit] NULL,
	[Sulfas] [bit] NULL,
	[OtrosMedicamentos] [varchar](MAX) NULL,
	[ReaccionAnormalAnesDental] [bit] NULL,
	[SangradoProlongado] [bit] NULL,
	[Desmayos] [bit] NULL);
GO

SET IDENTITY_INSERT [dbo].[Expediente] ON
GO
INSERT INTO [dbo].[Expediente] ([Expediente], [Cedula], [FechaCreacion], [BajoTratamientoMedico], [TomaMedicamento], [Diabetes], [Artritis], [EnfermedadCardiaca], [FiebreReumatica], [Hepatitis], [Ulceras], [TrastornosRenales], [EnfermedadesNerviosas], [OtrasEnfermedades], [OperadoInternado], [AlteracionSaludUltMeses], [OtraEnfermedadNoMencionada], [AlergicoAspirina], [Penicilina], [Sulfas], [OtrosMedicamentos], [ReaccionAnormalAnesDental], [SangradoProlongado], [Desmayos])
	VALUES (7, N'304360398', CAST(0x0000a40600000000 AS datetime), CAST ('True' AS bit), CAST ('False' AS bit), CAST ('False' AS bit), CAST ('True' AS bit), CAST ('False' AS bit), CAST ('False' AS bit), CAST ('True' AS bit), CAST ('False' AS bit), CAST ('True' AS bit), CAST ('False' AS bit), N'No esta enfermo...', CAST ('False' AS bit), CAST ('True' AS bit), CAST ('False' AS bit), CAST ('False' AS bit), CAST ('False' AS bit), CAST ('True' AS bit), N'Solo Mota', CAST ('False' AS bit), CAST ('True' AS bit), CAST ('False' AS bit))

GO
INSERT INTO [dbo].[Expediente] ([Expediente], [Cedula], [FechaCreacion], [BajoTratamientoMedico], [TomaMedicamento], [Diabetes], [Artritis], [EnfermedadCardiaca], [FiebreReumatica], [Hepatitis], [Ulceras], [TrastornosRenales], [EnfermedadesNerviosas], [OtrasEnfermedades], [OperadoInternado], [AlteracionSaludUltMeses], [OtraEnfermedadNoMencionada], [AlergicoAspirina], [Penicilina], [Sulfas], [OtrosMedicamentos], [ReaccionAnormalAnesDental], [SangradoProlongado], [Desmayos])
	VALUES (8, N'104070166', CAST(0x0000a40700000000 AS datetime), CAST ('True' AS bit), CAST ('True' AS bit), CAST ('True' AS bit), CAST ('True' AS bit), CAST ('True' AS bit), CAST ('True' AS bit), CAST ('True' AS bit), CAST ('True' AS bit), CAST ('True' AS bit), CAST ('False' AS bit), N'esta loca', CAST ('True' AS bit), CAST ('True' AS bit), CAST ('True' AS bit), CAST ('True' AS bit), CAST ('True' AS bit), CAST ('True' AS bit), N'Otros Medicamentos', CAST ('True' AS bit), CAST ('True' AS bit), CAST ('True' AS bit))

GO
SET IDENTITY_INSERT [dbo].[Expediente] OFF
GO

--Table dbo.ExpedienteOpcional

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[ExpedienteOpcional] (
	[Expediente] [int] NOT NULL,
	[Embarazada] [bit] NULL,
	[Lactancia] [bit] NULL,
	[TrastornosCicloMenstrual] [bit] NULL,
	[Observaciones] [varchar](MAX) NULL);
GO

INSERT INTO [dbo].[ExpedienteOpcional] ([Expediente], [Embarazada], [Lactancia], [TrastornosCicloMenstrual], [Observaciones])
	VALUES (8, CAST ('True' AS bit), CAST ('True' AS bit), CAST ('True' AS bit), N'Esta loca esta mujer')

GO

--Table dbo.Pais

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[Pais] (
	[Id_pais] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Nacionalidad] [varchar](50) NULL);
GO

INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (1, N'COSTA RICA', N'COSTARRICENSE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (2, N'ECUADOR', N'ECUATORIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (3, N'PANAMA', N'PANAMEÑO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (4, N'VENEZUELA', N'VENEZOLANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (5, N'GUATEMALA', N'GUATEMALTECO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (6, N'BRASIL', N'BRASILEÑO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (7, N'MEXICO', N'MEXICANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (8, N'ESTADOS UNIDOS', N'ESTADOUNIDENSE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (9, N'COLOMBIA', N'COLOMBIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (10, N'PERU', N'PERUANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (11, N'AFGANISTÁN', N'AFGANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (12, N'ESPAÑA', N'ESPAÑOL')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (13, N'ISRAEL', N'ISRAELIES')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (14, N'EL SALVADOR', N'SALVADOREÑO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (15, N'HONDURAS', N'HONDUREÑO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (16, N'ARGENTINA', N'ARGENTINO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (17, N'CHILE', N'CHILENO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (18, N'BOLIVIA', N'BOLIVIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (19, N'ITALIA', N'ITALIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (20, N'INGLATERRA', N'INGLES')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (21, N'FRANCIA', N'FRANCES')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (22, N'ISLAS VIRGENES', N'ISLAS VIRGENES')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (23, N'REPUBLICA DOMINICANA', N'DOMINICANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (24, N'POLONIA', N'POLACO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (25, N'CUBA', N'CUBANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (26, N'INDIA', N'INDIO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (27, N'NICARAGUA', N'NICARAGUENCES')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (28, N'RUSIA Y OTRAS REP. SOVIETICAS', N'RUSO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (29, N'URUGUAY', N'URUGUAYO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (30, N'JAMAICA', N'JAMAIQUINO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (31, N'CHINA', N'CHINO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (32, N'BELICE', N'BELICEÑO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (33, N'REPUBLICA CHECA', N'CHECO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (34, N'AUSTRIA', N'AUSTRIACO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (35, N'ALEMANIA', N'ALEMAN')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (36, N'HOLANDA', N'HOLANDES')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (37, N'BELGICA', N'BELGA')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (38, N'DINAMARCA', N'DANES')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (39, N'FINLANDIA', N'FINLANDES')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (40, N'SUECIA', N'SUECO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (41, N'NORUEGA', N'NORUEGO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (42, N'ALBANIA', N'ALBANÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (43, N'IRLANDA', N'IRLANDES')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (44, N'ANDORRA', N'ANDORRANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (45, N'ANGOLA', N'ANGOLEÑO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (46, N'FILIPINAS', N'FILIPENSE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (47, N'JAPON', N'JAPONES')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (48, N'TAILANDIA', N'TAILANDES')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (49, N'COREA DEL SUR', N'SURCOREANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (50, N'AUSTRALIA', N'AUSTRALIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (51, N'IRAN', N'IRANÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (52, N'HAITI', N'HAITIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (53, N'CANADA', N'CANADIENSE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (54, N'PUERTO RICO', N'PUERTORIQUEÑO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (55, N'BAHAMAS', N'BAHAMAS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (56, N'SUIZA', N'SUIZO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (57, N'MOLDABIA', N'MOLDOBES')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (58, N'MARRUECOS', N'MARROQUI')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (59, N'MOZANBIQUE', N'MOZANBIQUEÑO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (60, N'HUNGRIA', N'HUNGARO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (61, N'TRINIDAD Y TOBAGO', N'TRINITENSE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (62, N'RUMANIA', N'RUMANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (63, N'NIGERIA', N'NIGERIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (64, N'ANTIGUA Y BARBUDA', N'ANTIGUANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (65, N'ANTILLAS HOLANDESAS', N'ANTILLAS HOLANDESAS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (66, N'UCRANIA', N'UCRANIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (67, N'PARAGUAY', N'PARAGUAYO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (68, N'ARABIA SAUDÍ', N'SAUDÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (69, N'ARGELIA', N'ARGELINO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (70, N'ARMENIA', N'ARMENIO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (71, N'ARUBA', N'ARUBANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (72, N'AZERBAIYÁN', N'AZERBAIYANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (73, N'BAHREIN', N'BAHREINÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (74, N'BARBADOS', N'BARBADENSE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (75, N'BENÍN', N'BENINÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (76, N'BERMUDAS', N'BERMUDEÑO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (77, N'BIELORRUSIA', N'BIELORRUSO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (78, N'BOSNIA', N'BOSNIO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (79, N'BOTSWANA', N'BOTSWANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (80, N'BRUNEI', N'BRUNEANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (81, N'BULGARIA', N'BULGARO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (82, N'BURKINA FASO', N'BURKINÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (83, N'BURUNDI', N'BURUNDIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (84, N'BUTÁN', N'BUTANÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (85, N'CAMBOYA', N'CAMBOYANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (86, N'CAMERÚN', N'CAMERUNÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (87, N'CHAD', N'CHADIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (88, N'CHIPRE', N'CHIPRIOTA')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (89, N'CONGO(ANTIGUO ZAIRE)', N'CONGOLEÑO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (90, N'COREA DEL NORTE', N'NORCOREANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (91, N'COSTA DE MARFIL', N'MARFILEÑO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (92, N'CROACIA', N'CROATA')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (93, N'DOMINICA', N'DOMINIQUÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (94, N'DUBAI', N'DUBAITÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (95, N'EGIPTO', N'EGIPCIO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (96, N'EMIRATOS ÁRABES', N'EMIRATÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (97, N'ERITREA', N'ERITREO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (98, N'ESLOVAQUIA', N'ESLOVACO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (99, N'ESLOVENIA', N'ESLOVENO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (100, N'ESTONIA', N'ESTONIO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (101, N'ETIOPÍA', N'ETÍOPE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (102, N'GABÓN', N'GABONÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (103, N'BANGLADESH', N'BANGLADESÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (104, N'GAMBIA', N'GAMBIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (105, N'GEORGIA', N'GEORGIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (106, N'GHANA', N'GHANÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (107, N'GRANADA', N'GRANADINO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (108, N'GRECIA', N'GRIEGO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (109, N'GUAYANA FRANCESA', N'FRANCOGUAYANÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (111, N'GUINEA ECUATORIAL', N'ECUATOGUINEANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (112, N'GUINEA-BISSAU', N'GUINEANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (113, N'GUAYANA INGLESA', N'GUYANÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (114, N'INDONESIA', N'INDONESIO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (115, N'IRAQ', N'IRAQUÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (116, N'ISLANDIA', N'ISLANDÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (117, N'ISLAS CAIMÁN', N'CAIMANÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (118, N'ISLAS COOK', N'COOKIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (119, N'ISLAS MARSHALL', N'MARSHALS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (120, N'JORDANIA', N'JORDANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (121, N'KAZAJSTÁN', N'KAZAJO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (122, N'KENIA', N'KENIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (123, N'KIRGUISTÁN', N'KIRGUÍS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (124, N'KÓSOVO', N'KOSOVAR')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (125, N'KUWAIT', N'KUWAITÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (126, N'LAOS', N'LAOSIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (127, N'LESOTO', N'LESOTENSE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (128, N'LETONIA', N'LETÓN')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (129, N'LIBANO', N'LIBANÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (130, N'LIBERIA', N'LIBERIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (131, N'LIBIA', N'LIBIO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (132, N'LIECHTENSTEIN', N'LIECHTENSTEINIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (133, N'LITUANIA', N'LITUANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (134, N'LUXEMBURGO', N'LUXEMBURGUÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (135, N'MACAU O MACAO', N'MACAENSE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (136, N'MACEDONIA', N'MACEDONIO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (137, N'MADAGASCAR', N'MALGACHE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (138, N'MALASIA', N'MALASIO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (139, N'MALAWI O MALAUI', N'MALAUÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (140, N'MALDIVAS', N'MALDIVO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (141, N'MALÍ', N'MALÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (142, N'MALTA', N'MALTÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (143, N'MAURICIO', N'MAURICIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (144, N'MAURITANIA', N'MAURITANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (145, N'MICRONESIA', N'MICRONESIO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (146, N'MÓNACO', N'MONEGASCO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (147, N'MONGOLIA', N'MONGOL')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (148, N'MONTENEGRO', N'MONTENEGRINO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (149, N'MYANMAR (ANTES BIRMANIA)', N'BIRMANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (150, N'NAMIBIA', N'NAMIBIO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (151, N'NAURU', N'NAURUANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (152, N'NEPAL', N'NEPALÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (153, N'NÍGER', N'NIGERINO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (154, N'NUEVA ZELANDA', N'NEOZELANDÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (155, N'OMÁN', N'OMANÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (156, N'PAKISTÁN', N'PAQUISTANÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (157, N'PALESTINA', N'PALESTINO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (158, N'PAPÚA NUEVA GUINEA', N'PAPUANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (159, N'PORTUGAL', N'PORTUGUÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (160, N'QATAR', N'QATARÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (161, N'REPÚBLICA CENTROAFRICANA', N'CENTROAFRICANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (162, N'RUANDA', N'RUANDÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (163, N'SAN CRISTOBAL Y NIEVES', N'SANCRISTOBALEÑO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (164, N'SAN MARINO', N'SANMARINENSE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (165, N'SAN VICENTE Y LAS GRANADINAS', N'SANVICENTINO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (166, N'SANTO TOMÉ Y PRÍNCIPE', N'TOMESEÑO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (167, N'SENEGAL', N'SENEGALÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (168, N'SERBIA', N'SERBIO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (169, N'SEYCHELLES', N'SEYCHELENSE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (170, N'SIERRA LEONA', N'SIERRALEONÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (171, N'SINGAPUR', N'SINGAPURENSE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (172, N'SIRIA', N'SIRIO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (173, N'SOMALIA', N'SOMALÍ')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (174, N'SRI LANKA (ANTES CEILÁN)', N'CINGALÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (175, N'SUAZILANDIA', N'SUAZI')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (176, N'SUDÁFRICA', N'SUDAFRICANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (177, N'SUDÁN', N'SUDANÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (178, N'TAIWÁN', N'TAIWANÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (179, N'TANZANIA', N'TANZANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (180, N'TAYIKISTÁN', N'TAYIKO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (181, N'TIMOR ORIENTAL', N'TIMORENSE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (182, N'TOGO', N'TOGOLÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (183, N'TONGA', N'TONGANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (184, N'TÚNEZ', N'TUNECINO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (185, N'TURKMENISTÁN', N'TURCOMANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (186, N'TURQUÍA', N'TURCO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (187, N'UGANDA', N'UGANDÉS')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (188, N'UZBEQUISTAN', N'UZBEKO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (189, N'VIETNAM', N'VIETNAMITA')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (190, N'YEMEN', N'YEMEN')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (191, N'ZAMBIA', N'ZAMBIANO')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (192, N'ZIMBABUE', N'ZIMBABUENSE')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (193, N'SANTA LUCIA', N'SANTA LUCIA')

GO
INSERT INTO [dbo].[Pais] ([Id_pais], [Descripcion], [Nacionalidad])
	VALUES (194, N'GRAN BRETAÑA', N'REINO UNIDO')

GO

--Table dbo.ParentescoCliente

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[ParentescoCliente] (
	[Identificador] [int] NOT NULL,
	[Cliente1] [varchar](12) NOT NULL,
	[Cliente2] [varchar](12) NOT NULL,
	[TipoParentesco] [int] NOT NULL);
GO

--Table dbo.Piezas

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[Piezas] (
	[Pieza] [int] NOT NULL,
	[Descripcion] [nchar](10) NULL);
GO

INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (1, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (2, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (3, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (4, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (5, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (6, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (7, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (8, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (9, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (10, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (11, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (12, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (13, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (14, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (15, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (16, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (17, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (18, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (19, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (20, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (21, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (22, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (23, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (24, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (25, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (26, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (27, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (28, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (29, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (30, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (31, NULL)

GO
INSERT INTO [dbo].[Piezas] ([Pieza], [Descripcion])
	VALUES (32, NULL)

GO

--Table dbo.Provincia

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[Provincia] (
	[Id_provincia] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL);
GO

INSERT INTO [dbo].[Provincia] ([Id_provincia], [Descripcion])
	VALUES (1, N'SAN JOSE')

GO
INSERT INTO [dbo].[Provincia] ([Id_provincia], [Descripcion])
	VALUES (2, N'ALAJUELA')

GO
INSERT INTO [dbo].[Provincia] ([Id_provincia], [Descripcion])
	VALUES (3, N'CARTAGO')

GO
INSERT INTO [dbo].[Provincia] ([Id_provincia], [Descripcion])
	VALUES (4, N'HEREDIA')

GO
INSERT INTO [dbo].[Provincia] ([Id_provincia], [Descripcion])
	VALUES (5, N'GUANACASTE')

GO
INSERT INTO [dbo].[Provincia] ([Id_provincia], [Descripcion])
	VALUES (6, N'PUNTARENAS')

GO
INSERT INTO [dbo].[Provincia] ([Id_provincia], [Descripcion])
	VALUES (7, N'LIMON')

GO

--Table dbo.Telefonos

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[Telefonos] (
	[Cedula] [varchar](12) NOT NULL,
	[TipoTelefono] [int] NOT NULL,
	[Telefono] [varchar](11) NULL,
	[Extension] [varchar](5) NULL);
GO

INSERT INTO [dbo].[Telefonos] ([Cedula], [TipoTelefono], [Telefono], [Extension])
	VALUES (N'104070166', 1, N'25252525', N'1111')

GO
INSERT INTO [dbo].[Telefonos] ([Cedula], [TipoTelefono], [Telefono], [Extension])
	VALUES (N'304360398', 1, N'25915124', N'0')

GO
INSERT INTO [dbo].[Telefonos] ([Cedula], [TipoTelefono], [Telefono], [Extension])
	VALUES (N'304360398', 2, N'85306086', N'1')

GO

--Table dbo.TipoDireccion

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[TipoDireccion] (
	[TipoDireccion] [int] NOT NULL IDENTITY (1, 1),
	[Descripcion] [varchar](50) NULL);
GO

SET IDENTITY_INSERT [dbo].[TipoDireccion] ON
GO
INSERT INTO [dbo].[TipoDireccion] ([TipoDireccion], [Descripcion])
	VALUES (1, N'Casa')

GO
INSERT INTO [dbo].[TipoDireccion] ([TipoDireccion], [Descripcion])
	VALUES (2, N'Oficina')

GO
INSERT INTO [dbo].[TipoDireccion] ([TipoDireccion], [Descripcion])
	VALUES (3, N'Otro')

GO
INSERT INTO [dbo].[TipoDireccion] ([TipoDireccion], [Descripcion])
	VALUES (4, N'Familiar')

GO
SET IDENTITY_INSERT [dbo].[TipoDireccion] OFF
GO

--Table dbo.TipoEstadoPieza

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[TipoEstadoPieza] (
	[TipoEstadoPieza] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL);
GO

INSERT INTO [dbo].[TipoEstadoPieza] ([TipoEstadoPieza], [Descripcion])
	VALUES (0, N'Sana')

GO
INSERT INTO [dbo].[TipoEstadoPieza] ([TipoEstadoPieza], [Descripcion])
	VALUES (1, N'Daño Moderado')

GO
INSERT INTO [dbo].[TipoEstadoPieza] ([TipoEstadoPieza], [Descripcion])
	VALUES (2, N'Daño Avanzado')

GO
INSERT INTO [dbo].[TipoEstadoPieza] ([TipoEstadoPieza], [Descripcion])
	VALUES (3, N'Ausente')

GO
INSERT INTO [dbo].[TipoEstadoPieza] ([TipoEstadoPieza], [Descripcion])
	VALUES (4, N'Prótesis')

GO
INSERT INTO [dbo].[TipoEstadoPieza] ([TipoEstadoPieza], [Descripcion])
	VALUES (5, N'Reparada')

GO

--Table dbo.TipoOcupacion

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[TipoOcupacion] (
	[Ocupacion] [int] NOT NULL IDENTITY (1, 1),
	[Descripcion] [varchar](100) NULL);
GO

SET IDENTITY_INSERT [dbo].[TipoOcupacion] ON
GO
INSERT INTO [dbo].[TipoOcupacion] ([Ocupacion], [Descripcion])
	VALUES (1, N'Desarrollador')

GO
INSERT INTO [dbo].[TipoOcupacion] ([Ocupacion], [Descripcion])
	VALUES (2, N'Ama de Casa')

GO
INSERT INTO [dbo].[TipoOcupacion] ([Ocupacion], [Descripcion])
	VALUES (3, N'Contador Privado')

GO
INSERT INTO [dbo].[TipoOcupacion] ([Ocupacion], [Descripcion])
	VALUES (4, N'Contador Público')

GO
SET IDENTITY_INSERT [dbo].[TipoOcupacion] OFF
GO

--Table dbo.TipoParentesco

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[TipoParentesco] (
	[TipoParentesco] [int] NOT NULL IDENTITY (1, 1),
	[Descripcion] [varchar](150) NULL);
GO

--Table dbo.TipoPosicion

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[TipoPosicion] (
	[TipoPosicion] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL);
GO

INSERT INTO [dbo].[TipoPosicion] ([TipoPosicion], [Descripcion])
	VALUES (0, N'Corona')

GO
INSERT INTO [dbo].[TipoPosicion] ([TipoPosicion], [Descripcion])
	VALUES (1, N'Pulpa')

GO
INSERT INTO [dbo].[TipoPosicion] ([TipoPosicion], [Descripcion])
	VALUES (2, N'Raíz')

GO

--Table dbo.TipoTelefono

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[TipoTelefono] (
	[TipoTelefono] [int] NOT NULL IDENTITY (1, 1),
	[Descripcion] [varchar](25) NULL);
GO

SET IDENTITY_INSERT [dbo].[TipoTelefono] ON
GO
INSERT INTO [dbo].[TipoTelefono] ([TipoTelefono], [Descripcion])
	VALUES (1, N'Casa')

GO
INSERT INTO [dbo].[TipoTelefono] ([TipoTelefono], [Descripcion])
	VALUES (2, N'Oficina')

GO
INSERT INTO [dbo].[TipoTelefono] ([TipoTelefono], [Descripcion])
	VALUES (3, N'Celular')

GO
INSERT INTO [dbo].[TipoTelefono] ([TipoTelefono], [Descripcion])
	VALUES (5, N'Cualquiera')

GO
INSERT INTO [dbo].[TipoTelefono] ([TipoTelefono], [Descripcion])
	VALUES (6, N'Despacho')

GO
INSERT INTO [dbo].[TipoTelefono] ([TipoTelefono], [Descripcion])
	VALUES (7, N'Otro')

GO
SET IDENTITY_INSERT [dbo].[TipoTelefono] OFF
GO

--Table dbo.Trabajos

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[Trabajos] (
	[Trabajo] [int] NOT NULL,
	[Cita] [int] NOT NULL,
	[Pieza] [int] NOT NULL,
	[TipoEstadoPieza] [int] NOT NULL,
	[Descripción] [varchar](MAX) NULL);
GO

--Table dbo.Usuarios

USE [CDental]
GO

--Create table and its columns
CREATE TABLE [dbo].[Usuarios] (
	[Usuario] [varchar](50) NOT NULL,
	[Contraseña] [nvarchar](50) NOT NULL,
	[Cedula] [varchar](12) NOT NULL);
GO

INSERT INTO [dbo].[Usuarios] ([Usuario], [Contraseña], [Cedula])
	VALUES (N'sariasf101', N'Liga3954', N'304360398')

GO

--Executing Entities
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CUENTAS_SELECCIONAR]
(
	@PCODIGOCUENTA	INT = 0,
	@PEXPEDIENTE	INT = 0
)
AS
BEGIN
	SELECT CUE.CodigoCuenta
		  ,CUE.Expediente
		  ,CUE.Debe
		  ,CUE.Abono
		  ,CUE.Saldo
	  FROM [CDental].[dbo].[Cuentas] CUE WITH(NOLOCK) 
	  WHERE CUE.CodigoCuenta = (CASE @PCODIGOCUENTA
									WHEN 0 THEN CUE.CodigoCuenta
									ELSE @PCODIGOCUENTA
								END)
		AND CUE.Expediente = (CASE @PEXPEDIENTE
									WHEN 0 THEN CUE.Expediente
									ELSE @PEXPEDIENTE
								END)								
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CUENTAS_INSERTAR]
(
	@PEXPEDIENTE	INT,
	@PDEBE			DECIMAL(18,2),
	@PABONO			DECIMAL(18,2),
	@PSALDO			DECIMAL(18,2)
)
AS
BEGIN
	
	INSERT	INTO CDental.dbo.Cuentas
			(Expediente,
			 Debe,
			 Abono,
			 Saldo)
	VALUES	(@PEXPEDIENTE,
			 @PDEBE,
			 @PABONO,
			 @PSALDO)
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CUENTAS_MODIFICAR]
(
	@PCODIGOCUENTA	INT,
	@PEXPEDIENTE	INT,
	@PDEBE			DECIMAL(18,2),
	@PABONO			DECIMAL(18,2),
	@PSALDO			DECIMAL(18,2)
)
AS
BEGIN
	
	UPDATE	CDental.dbo.Cuentas
	SET		Expediente = @PEXPEDIENTE,
			Debe = @PDEBE,
			Abono = @PABONO,
			Saldo = @PSALDO
	WHERE	CodigoCuenta = @PCODIGOCUENTA
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CUENTAS_ELIMINAR]
(
	@PCODIGOCUENTA	INT
)
AS
BEGIN
	
	DELETE	CDental.dbo.Cuentas
	WHERE	CodigoCuenta = @PCODIGOCUENTA
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CUENTASHISTORICO_SELECCIONAR]
(
	@PCODIGOCUENTA	INT			= 0,
	@PCEDULA		VARCHAR(12) = '00',
	@PEXPEDIENTE	INT			= 0,
	@PFECHAINI		DATETIME,
	@PFECHAFIN		DATETIME,
	@PUSUARIO		VARCHAR(50) = '00'
)
AS
BEGIN
print(@PFECHAINI)
print(@PFECHAFIN)
	SELECT HIS.CodigoCuenta
		  ,HIS.Fecha
		  ,HIS.Debe
		  ,HIS.Abono
		  ,HIS.Saldo
	  FROM			CDental.dbo.CuentasHistorico	HIS	WITH(NOLOCK)
	  INNER	JOIN	CDental.dbo.Cuentas				CUE	WITH(NOLOCK) ON(HIS.CodigoCuenta = CUE.CodigoCuenta)	
	  INNER JOIN	CDental.dbo.Expediente			EX	WITH(NOLOCK) ON(CUE.Expediente	 = EX.Expediente)
	  WHERE HIS.Fecha		 BETWEEN ISNULL(@PFECHAINI,GETDATE())
							 AND	 ISNULL(@PFECHAFIN,GETDATE())
	  AND	HIS.CodigoCuenta = (CASE @PCODIGOCUENTA
									WHEN 0 THEN HIS.CodigoCuenta
									ELSE @PCODIGOCUENTA
								END)
	  AND   HIS.Usuario		 = (CASE @PUSUARIO
									WHEN '00' THEN HIS.Usuario
									ELSE @PUSUARIO
								END)
      AND	EX.Cedula		 = (CASE @PCEDULA
									WHEN '00' THEN EX.Cedula
									ELSE @PCEDULA
								END)
	  AND	EX.Expediente	 = (CASE @PEXPEDIENTE
									WHEN 0 THEN EX.Expediente
									ELSE @PEXPEDIENTE
								END)	
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_DIRECCIONESCLIENTE_SELECCIONAR]
(
	@PCEDULA		VARCHAR(12) = '0O',
	@PTIPODIRECCION	INT = 0
)
AS
BEGIN
	SELECT	 Cedula
			,TipoDireccion
			,Id_pais
			,Id_provincia
			,Id_canton
			,Id_distrito
			,Direccion
	FROM	CDental.dbo.DireccionesCliente DIR WITH(NOLOCK)
	WHERE	DIR.Cedula			= (CASE @PCEDULA
									WHEN '00' THEN DIR.Cedula
									ELSE @PCEDULA
								   END)
	AND		DIR.TipoDireccion	= (CASE	@PTIPODIRECCION
									WHEN 0 THEN DIR.TipoDireccion
								    ELSE @PTIPODIRECCION
								   END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/****** Cannot script Unresolved Entities : Server[@Name='STEVEN-LAPTOP\SQLSERVER2008R2']/Database[@Name='CDental']/UnresolvedEntity[@Name='DireccionesCliente'] ******/
CREATE PROCEDURE [dbo].[SP_DIRECCIONESCLIENTE_INSERTAR]
(
	@PCEDULA		VARCHAR(12) = '0O',
	@PTIPODIRECCION	INT = 0,
	@PID_PAIS		INT,
	@PID_PROVINCIA	INT,
	@PID_CANTON		INT,
	@PID_DISTRITO	INT,
	@PDIRECCION		VARCHAR(MAX)
)
AS
BEGIN
	INSERT	INTO CDental.dbo.DireccionesCliente
			(Cedula
			,TipoDireccion
			,Id_pais
			,Id_provincia
			,Id_canton
			,Id_distrito
			,Direccion
			)
	VALUES	(@PCEDULA,
			@PTIPODIRECCION,
			@PID_PAIS,
			@PID_PROVINCIA,
			@PID_CANTON,
			@PID_DISTRITO,
			@PDIRECCION)
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_DIRECCIONESCLIENTE_MODIFICAR]
(
	@PCEDULA		VARCHAR(12) = '0O',
	@PTIPODIRECCION	INT = 0,
	@PID_PAIS		INT,
	@PID_PROVINCIA	INT,
	@PID_CANTON		INT,
	@PID_DISTRITO	INT,
	@PDIRECCION		VARCHAR(MAX)
)
AS
BEGIN
	UPDATE	CDental.dbo.DireccionesCliente
	SET		Id_pais			= @PID_PAIS 
			,Id_provincia	= @PID_PROVINCIA
			,Id_canton		= @PID_CANTON
			,Id_distrito	= @PID_DISTRITO
			,Direccion		= @PDIRECCION	
	WHERE	Cedula			= @PCEDULA
	AND		TipoDireccion	= @PTIPODIRECCION
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_DIRECCIONESCLIENTE_ELIMINAR]
(
	@PCEDULA		VARCHAR(12),
	@PTIPODIRECCION	INT
)
AS
BEGIN
	DELETE	CDental.dbo.DireccionesCliente
	WHERE	Cedula			= @PCEDULA
	AND		TipoDireccion	= @PTIPODIRECCION
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXAMENDETALLE_SELECCIONAR]
(
	@PEXAMEN			INT = 0,
	@PPIEZA				INT = 0,
	@PTIPOPOSICION		INT = 0
)
AS
BEGIN
	SELECT	EX.Examen
			,EX.Pieza
			,EX.TipoPosicion
			,EX.TipoEstadoPieza
			,EX.Observaciones
			,EX.FechaCambioEstado
	FROM	CDental.dbo.ExamenDetalle EX WITH(NOLOCK)
	WHERE	EX.Examen		= (CASE @PEXAMEN
								WHEN 0 THEN EX.Examen
								ELSE @PEXAMEN
							   END)
	AND		EX.Pieza		= (CASE @PPIEZA
								WHEN 0 THEN EX.Pieza
								ELSE @PPIEZA
							   END)
	AND		EX.TipoPosicion	= (CASE @PTIPOPOSICION
								WHEN 0 THEN EX.TipoPosicion
								ELSE @PTIPOPOSICION
							   END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXAMENDETALLE_INSERTAR]
(
	@PEXAMEN			INT,
	@PPIEZA				INT,
	@PTIPOPOSICION		INT,
	@PTIPOESTADOPIEZA	INT,
	@POBSERVACIONES		VARCHAR(MAX),
	@PFECHACAMBIOESTADO DATE
)
AS
BEGIN
	INSERT INTO CDental.dbo.ExamenDetalle
			(EX.Examen
			,EX.Pieza
			,EX.TipoPosicion
			,EX.TipoEstadoPieza
			,EX.Observaciones
			,EX.FechaCambioEstado)
	VALUES (@PEXAMEN,
			@PPIEZA,
			@PTIPOPOSICION,
			@PTIPOESTADOPIEZA,
			@POBSERVACIONES,
			@PFECHACAMBIOESTADO)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXAMENDETALLE_MODIFICAR]
(
	@PEXAMEN			INT,
	@PPIEZA				INT,
	@PTIPOPOSICION		INT,
	@PTIPOESTADOPIEZA	INT,
	@POBSERVACIONES		VARCHAR(MAX)
)
AS
BEGIN
	UPDATE	CDental.dbo.ExamenDetalle
	SET		TipoEstadoPieza	= @PTIPOESTADOPIEZA
			,Observaciones	= @POBSERVACIONES
	WHERE	Examen			= @PEXAMEN
	AND		Pieza			= @PPIEZA
	AND		TipoPosicion	= @PTIPOPOSICION
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXAMENDETALLE_ELIMINAR]
(
	@PEXAMEN			INT,
	@PPIEZA				INT,
	@PTIPOPOSICION		INT
)
AS
BEGIN
	DELETE	CDental.dbo.ExamenDetalle
	WHERE	Examen			= @PEXAMEN
	AND		Pieza			= @PPIEZA
	AND		TipoPosicion	= @PTIPOPOSICION
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXAMENENCABEZADO_INSERTAR]
(
	@PEXPEDIENTE	INT,
	@POBSERVACIONES VARCHAR(MAX)
)
AS
BEGIN
	INSERT INTO CDental.dbo.ExamenEncabezado
			(Expediente
			,Observaciones)
	VALUES	(@PEXPEDIENTE,
			@POBSERVACIONES)
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXAMENENCABEZADO_MODIFICAR]
(
	@PEXAMEN		INT,
	@PEXPEDIENTE	INT,
	@POBSERVACIONES VARCHAR(MAX)
)
AS
BEGIN
	UPDATE	CDental.dbo.ExamenEncabezado
	SET		Expediente		= @PEXPEDIENTE
			,Observaciones	= @POBSERVACIONES
	WHERE	Examen			= @PEXAMEN
	
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXAMENENCABEZADO_ELIMINAR]
(
	@PEXAMEN		INT
)
AS
BEGIN
	DELETE	CDental.dbo.ExamenEncabezado
	WHERE	Examen			= @PEXAMEN
	
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXAMENENCABEZADO_SELECCIONAR]
(
	@PEXAMEN INT = 0,
	@PEXPEDIENTE INT = 0
)
AS
BEGIN
	SELECT	EX.Examen
			,EX.Expediente
			,EX.Observaciones
	FROM	CDental.dbo.ExamenEncabezado EX WITH(NOLOCK)
	WHERE	EX.Examen	= (CASE	@PEXAMEN 
							WHEN 0 THEN EX.Examen
							ELSE @PEXAMEN
						   END)
	AND					   EX.Expediente	= (CASE	@PEXPEDIENTE 
							WHEN 0 THEN EX.Expediente
							ELSE @PEXPEDIENTE
						   END)
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXPEDIENTEOPCIONAL_SELECCIONAR]
(
	@PEXPEDIENTE	INT = 0	
)
AS
BEGIN
	SELECT	Expediente
			,Embarazada
			,Lactancia
			,TrastornosCicloMenstrual
			,Observaciones
	FROM	CDental.dbo.ExpedienteOpcional EX WITH(NOLOCK)
	WHERE	EX.Expediente = (CASE @PEXPEDIENTE
								WHEN 0 THEN EX.Expediente
								ELSE @PEXPEDIENTE
							 END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXPEDIENTEOPCIONAL_INSERTAR]
(
	@PEXPEDIENTE				INT = 0,
	@PEMBARAZADA				BIT,
	@PLACTANCIA					BIT,
	@PTRASTORNOSCICLOMENSUAL	BIT,
	@POBSERVACIONES				VARCHAR(MAX)
)
AS
BEGIN
	INSERT	INTO CDental.dbo.ExpedienteOpcional
			(Expediente
			,Embarazada
			,Lactancia
			,TrastornosCicloMenstrual
			,Observaciones)
	VALUES	(@PEXPEDIENTE,
			@PEMBARAZADA,
			@PLACTANCIA,
			@PTRASTORNOSCICLOMENSUAL,
			@POBSERVACIONES)			
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXPEDIENTEOPCIONAL_MODIFICAR]
(
	@PEXPEDIENTE				INT,
	@PEMBARAZADA				BIT,
	@PLACTANCIA					BIT,
	@PTRASTORNOSCICLOMENSUAL	BIT,
	@POBSERVACIONES				VARCHAR(MAX)
)
AS
BEGIN
	UPDATE	CDental.dbo.ExpedienteOpcional
	SET		Embarazada					= @PEMBARAZADA
			,Lactancia					= @PLACTANCIA
			,TrastornosCicloMenstrual	= @PTRASTORNOSCICLOMENSUAL
			,Observaciones				= @POBSERVACIONES
	WHERE	Expediente					= @PEXPEDIENTE
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOTELEFONO_SELECCIONAR]
(
	@PTIPOTELEFONO INT = 0
)
AS
BEGIN
	SELECT	TipoTelefono
			,Descripcion
	FROM	CDental.dbo.TipoTelefono TEL WITH(NOLOCK)
	WHERE	TEL.TipoTelefono = (CASE @PTIPOTELEFONO
									WHEN 0 THEN TEL.TipoTelefono
									ELSE @PTIPOTELEFONO
								END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOTELEFONO_INSERTAR]
(
	@PDESCRIPCION	VARCHAR(25)
)
AS
BEGIN
	INSERT	CDental.dbo.TipoTelefono (Descripcion)
	VALUES	(@PDESCRIPCION)
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOTELEFONO_MODIFICAR]
(
	@PTIPOTELEFONO	INT,
	@PDESCRIPCION	VARCHAR(25)
)
AS
BEGIN
	UPDATE	CDental.dbo.TipoTelefono 
	SET		Descripcion		= @PDESCRIPCION
	WHERE	TipoTelefono	=  @PTIPOTELEFONO
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOTELEFONO_ELIMINAR]
(
	@PTIPOTELEFONO	INT
)
AS
BEGIN
	DELETE	CDental.dbo.TipoTelefono 
	WHERE	TipoTelefono	=  @PTIPOTELEFONO
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOPOSICION_SELECCIONAR]
(
	@PTIPOPOSICION INT = 0
)
AS
BEGIN
	SELECT	[TipoPosicion]
			,[Descripcion]
	FROM	[CDental].[dbo].[TipoPosicion] TIP WITH(NOLOCK)
	WHERE	TIP.TipoPosicion = (CASE @PTIPOPOSICION
									WHEN 0 THEN TIP.TipoPosicion
									ELSE @PTIPOPOSICION
								END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOPARENTESCO_SELECCIONAR]
(
	@PTIPOPARENTESCO INT = 0
)
AS
BEGIN
	SELECT	[TipoParentesco]
			,[Descripcion]
	FROM	[CDental].[dbo].[TipoParentesco] TIP WITH(NOLOCK)
	WHERE	TIP.TipoParentesco = (CASE @PTIPOPARENTESCO
									WHEN 0 THEN TIP.TipoParentesco
									ELSE @PTIPOPARENTESCO
								  END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOPARENTESCO_INSERTAR]
(
	@PDESCRIPCION		VARCHAR(150)		
)
AS
BEGIN
	INSERT	INTO CDental.dbo.TipoParentesco
			(Descripcion)
	VALUES	(@PDESCRIPCION)
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOPARENTESCO_MODIFICAR]
(
	@PTIPOPARENTESCO	INT,
	@PDESCRIPCION		VARCHAR(150)		
)
AS
BEGIN
	UPDATE	CDental.dbo.TipoParentesco
	SET		Descripcion		= @PDESCRIPCION
	WHERE	TipoParentesco	= @PTIPOPARENTESCO
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOPARENTESCO_ELIMINAR]
(
	@PTIPOPARENTESCO	INT
)
AS
BEGIN
	DELETE	CDental.dbo.TipoParentesco
	WHERE	TipoParentesco	= @PTIPOPARENTESCO
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOOCUPACION_SELECCIONAR]
(
	@POCUPACION INT = 0
)
AS
BEGIN
	SELECT	[Ocupacion]
			,[Descripcion]
	FROM	[CDental].[dbo].[TipoOcupacion] TIP WITH(NOLOCK)
	WHERE	TIP.Ocupacion = (CASE @POCUPACION
								WHEN 0 THEN TIP.Ocupacion
								ELSE @POCUPACION
							 END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOOCUPACION_INSERTAR]
(
	@PDESCRIPCION	VARCHAR(100)
)
AS
BEGIN
	INSERT	INTO CDental.dbo.TipoOcupacion
			(Descripcion)
	VALUES	(@PDESCRIPCION)
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOOCUPACION_MODIFICAR]
(
	@POCUPACION		INT,
	@PDESCRIPCION	VARCHAR(100)
)
AS
BEGIN
	UPDATE	CDental.dbo.TipoOcupacion
	SET		Descripcion = @PDESCRIPCION
	WHERE	Ocupacion	= @POCUPACION
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOOCUPACION_ELIMINAR]
(
	@POCUPACION		INT
)
AS
BEGIN
	DELETE	CDental.dbo.TipoOcupacion
	WHERE	Ocupacion	= @POCUPACION
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPODIRECCION_SELECCIONAR]
(
	@PTIPODIRECCION INT = 0
)
AS
BEGIN
	SELECT	[TipoDireccion]
			,[Descripcion]
	FROM	[CDental].[dbo].[TipoDireccion] DIR WITH(NOLOCK)
	WHERE	DIR.TipoDireccion = (CASE @PTIPODIRECCION
									WHEN 0 THEN DIR.TipoDireccion
									ELSE @PTIPODIRECCION
								 END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPODIRECCION_INSERTAR]
(
	@PDESCRIPCION	VARCHAR(50)
)
AS
BEGIN
	INSERT	INTO CDental.dbo.TipoDireccion
			(Descripcion)
	VALUES	(@PDESCRIPCION)
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPODIRECCION_MODIFICAR]
(
	@PTIPODIRECCION INT,
	@PDESCRIPCION	VARCHAR(50)
)
AS
BEGIN
	UPDATE	CDental.dbo.TipoDireccion
	SET		Descripcion		= @PDESCRIPCION
	WHERE	TipoDireccion	= @PTIPODIRECCION
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPODIRECCION_ELIMINAR]
(
	@PTIPODIRECCION INT
)
AS
BEGIN
	DELETE	CDental.dbo.TipoDireccion
	WHERE	TipoDireccion	= @PTIPODIRECCION
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TELEFONOS_SELECCIONAR]
(
	@PCEDULA		VARCHAR(12) = '00',
	@PTIPOTELEFONO	INT		= 0
)
AS
BEGIN
	SELECT	[Cedula]
			,[TipoTelefono]
			,[Telefono]
			,[Extension]
	FROM	[CDental].[dbo].[Telefonos] TEL WITH(NOLOCK)
	WHERE	TEL.Cedula			= (	CASE @PCEDULA
										WHEN '00' THEN TEL.Cedula
										ELSE @PCEDULA
									END)		
	AND		TEL.TipoTelefono	= (	CASE @PTIPOTELEFONO
										WHEN 0 THEN TEL.TipoTelefono
										ELSE @PTIPOTELEFONO		
									END)
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TELEFONOS_INSERTAR]
(
	@PCEDULA		VARCHAR(12),
	@PTIPOTELEFONO	INT,
	@PTELEFONO		VARCHAR(11),
	@PEXTENSION		VARCHAR(5)
)
AS
BEGIN
	INSERT	INTO CDental.dbo.Telefonos
			(Cedula
			,TipoTelefono
			,Telefono
			,Extension)
	VALUES	(@PCEDULA
			,@PTIPOTELEFONO
			,@PTELEFONO
			,@PEXTENSION)			
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TELEFONOS_MODIFICAR]
(
	@PCEDULA		VARCHAR(12),
	@PTIPOTELEFONO	INT,
	@PTELEFONO		VARCHAR(11),
	@PEXTENSION		VARCHAR(5)
)
AS
BEGIN
	UPDATE	CDental.dbo.Telefonos
	SET		Telefono		= @PTELEFONO
			,Extension		= @PEXTENSION
	WHERE	Cedula			= @PCEDULA
	AND		TipoTelefono	= @PTIPOTELEFONO
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TELEFONOS_ELIMINAR]
(
	@PCEDULA		VARCHAR,
	@PTIPOTELEFONO	INT
)
AS
BEGIN
	DELETE	CDental.dbo.Telefonos
	WHERE	Cedula			= @PCEDULA
	AND		TipoTelefono	= @PTIPOTELEFONO
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_PIEZAS_SELECCIONAR]
(
	@PPIEZA INT = 0
)
AS
BEGIN
	SELECT	[Pieza]
			,[Descripcion]
	FROM	[CDental].[dbo].[Piezas] PIE WITH(NOLOCK)
	WHERE	PIE.Pieza	= (CASE @PPIEZA
							WHEN 0 THEN PIE.Pieza
							ELSE @PPIEZA
						   END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_PARENTESCOCLIENTE_SELECCIONAR]
(
	@PCLIENTE	VARCHAR(12) = '00'
)
AS
BEGIN
	SELECT	DISTINCT
			PAR.Identificador
			,PAR.Cliente1
			,PAR.Cliente2
			,PAR.TipoParentesco
	FROM	CDental.dbo.ParentescoCliente PAR WITH(NOLOCK)
	WHERE	(PAR.Cliente1	= (CASE @PCLIENTE
								WHEN '00' THEN PAR.Cliente1
								ELSE @PCLIENTE
							   END)
	OR		 PAR.Cliente2	= (CASE @PCLIENTE
								WHEN '00' THEN PAR.Cliente2
								ELSE @PCLIENTE
							   END))
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_PARENTESCOCLIENTE_INSERTAR]
(
	@PCLIENTE1			VARCHAR(12),
	@PCLIENTE2			VARCHAR(12),
	@PTIPOPARENTESCO	INT
)
AS
BEGIN
	INSERT	INTO CDental.dbo.ParentescoCliente
			(Cliente1
			,Cliente2
			,TipoParentesco)
	VALUES	(@PCLIENTE1
			,@PCLIENTE2
			,@PTIPOPARENTESCO)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_PARENTESCOCLIENTE_MODIFICAR]
(
	@PIDENTIFICADOR		INT,
	@PCLIENTE1			VARCHAR(12),
	@PCLIENTE2			VARCHAR(12),
	@PTIPOPARENTESCO	INT
)
AS
BEGIN
	UPDATE	CDental.dbo.ParentescoCliente
	SET		Cliente1		= @PCLIENTE1
			,Cliente2		= @PCLIENTE2
			,TipoParentesco	= @PTIPOPARENTESCO
	WHERE	Identificador	= @PIDENTIFICADOR
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_PARENTESCOCLIENTE_ELIMINAR]
(
	@PIDENTIFICADOR		INT
)
AS
BEGIN
	DELETE	CDental.dbo.ParentescoCliente
	WHERE	Identificador	= @PIDENTIFICADOR
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXPEDIENTEOPCIONAL_ELIMINAR]
(
	@PEXPEDIENTE				INT 
)
AS
BEGIN
	DELETE	CDental.dbo.ExpedienteOpcional
	WHERE	Expediente					= @PEXPEDIENTE	 
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXPEDIENTE_SELECCIONAR]
(
	@PEXPEDIENTE	INT = 0,
	@PCEDULA		VARCHAR(12) = '00'
)
AS
BEGIN
	SELECT	[Expediente]
			,[Cedula]
			,[FechaCreacion]
			,[BajoTratamientoMedico]
			,[TomaMedicamento]
			,[Diabetes]
			,[Artritis]
			,[EnfermedadCardiaca]
			,[FiebreReumatica]
			,[Hepatitis]
			,[Ulceras]
			,[TrastornosRenales]
			,[EnfermedadesNerviosas]
			,[OtrasEnfermedades]
			,[OperadoInternado]
			,[AlteracionSaludUltMeses]
			,[OtraEnfermedadNoMencionada]
			,[AlergicoAspirina]
			,[Penicilina]
			,[Sulfas]
			,[OtrosMedicamentos]
			,[ReaccionAnormalAnesDental]
			,[SangradoProlongado]
			,[Desmayos]
	FROM	CDental.dbo.Expediente EX WITH(NOLOCK)
	WHERE	EX.Expediente	= (CASE @PEXPEDIENTE
								WHEN 0 THEN EX.Expediente
								ELSE @PEXPEDIENTE
							   END)
	AND		EX.Cedula	= (CASE @PCEDULA
								WHEN '00' THEN EX.Cedula
								ELSE @PCEDULA
							   END)
	
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXPEDIENTE_INSERTAR]
(
	@PCEDULA						VARCHAR(12),
	@PFECHACREACION					DATETIME,
	@PBAJOTRATAMIENTOMEDICO			BIT,
	@PTOMAMEDICAMENTO				BIT,
	@PDIABETES						BIT,
	@PARTRITIS						BIT,
	@PENFERMEDADCARDIACA			BIT,
	@PFIEBREREUMATICA				BIT,
	@PHEPATITIS						BIT,
	@PULCERAS						BIT,
	@PTRASTORNOSRENALES				BIT,
	@PENFERMEDADESNERVIOSAS			BIT,
	@POTRASENFERMEDADES				VARCHAR(MAX),
	@POPERADOINTERNADO				BIT,
	@PALTERACIONSALUDULTMESES		BIT,
	@POTRAENFERMEDADNOMENCIONADA	BIT,
	@PALERGICOASPIRINA				BIT,
	@PPENICILINA					BIT,
	@PSULFAS						BIT,
	@POTROSMEDICAMENTOS				VARCHAR(MAX),
	@PREACCIONANORMALANESDENTAL		BIT,
	@PSANGRADOPROLONGADO			BIT,
	@PDESMAYOS						BIT
)
AS
BEGIN
	INSERT	INTO CDental.dbo.Expediente
			([Cedula]
			,[FechaCreacion]
			,[BajoTratamientoMedico]
			,[TomaMedicamento]
			,[Diabetes]
			,[Artritis]
			,[EnfermedadCardiaca]
			,[FiebreReumatica]
			,[Hepatitis]
			,[Ulceras]
			,[TrastornosRenales]
			,[EnfermedadesNerviosas]
			,[OtrasEnfermedades]
			,[OperadoInternado]
			,[AlteracionSaludUltMeses]
			,[OtraEnfermedadNoMencionada]
			,[AlergicoAspirina]
			,[Penicilina]
			,[Sulfas]
			,[OtrosMedicamentos]
			,[ReaccionAnormalAnesDental]
			,[SangradoProlongado]
			,[Desmayos])
	VALUES	(@PCEDULA,
			@PFECHACREACION,
			@PBAJOTRATAMIENTOMEDICO,
			@PTOMAMEDICAMENTO,
			@PDIABETES,
			@PARTRITIS,
			@PENFERMEDADCARDIACA,
			@PFIEBREREUMATICA,
			@PHEPATITIS,
			@PULCERAS,
			@PTRASTORNOSRENALES,
			@PENFERMEDADESNERVIOSAS,
			@POTRASENFERMEDADES,
			@POPERADOINTERNADO,
			@PALTERACIONSALUDULTMESES,
			@POTRAENFERMEDADNOMENCIONADA,
			@PALERGICOASPIRINA,
			@PPENICILINA,
			@PSULFAS,
			@POTROSMEDICAMENTOS,
			@PREACCIONANORMALANESDENTAL,
			@PSANGRADOPROLONGADO,
			@PDESMAYOS)			
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXPEDIENTE_MODIFICAR]
(
	@PEXPEDIENTE					INT,
	@PCEDULA						VARCHAR(12),
	@PFECHACREACION					DATETIME,
	@PBAJOTRATAMIENTOMEDICO			BIT,
	@PTOMAMEDICAMENTO				BIT,
	@PDIABETES						BIT,
	@PARTRITIS						BIT,
	@PENFERMEDADCARDIACA			BIT,
	@PFIEBREREUMATICA				BIT,
	@PHEPATITIS						BIT,
	@PULCERAS						BIT,
	@PTRASTORNOSRENALES				BIT,
	@PENFERMEDADESNERVIOSAS			BIT,
	@POTRASENFERMEDADES				VARCHAR(MAX),
	@POPERADOINTERNADO				BIT,
	@PALTERACIONSALUDULTMESES		BIT,
	@POTRAENFERMEDADNOMENCIONADA	BIT,
	@PALERGICOASPIRINA				BIT,
	@PPENICILINA					BIT,
	@PSULFAS						BIT,
	@POTROSMEDICAMENTOS				VARCHAR(MAX),
	@PREACCIONANORMALANESDENTAL		BIT,
	@PSANGRADOPROLONGADO			BIT,
	@PDESMAYOS						BIT
)
AS
BEGIN
	UPDATE	CDental.dbo.Expediente
	SET		[Cedula]						= @PCEDULA
			,[FechaCreacion]				= @PFECHACREACION
			,[BajoTratamientoMedico]		= @PBAJOTRATAMIENTOMEDICO
			,[TomaMedicamento]				= @PTOMAMEDICAMENTO
			,[Diabetes]						= @PDIABETES
			,[Artritis]						= @PARTRITIS
			,[EnfermedadCardiaca]			= @PENFERMEDADCARDIACA
			,[FiebreReumatica]				= @PFIEBREREUMATICA
			,[Hepatitis]					= @PHEPATITIS
			,[Ulceras]						= @PULCERAS
			,[TrastornosRenales]			= @PTRASTORNOSRENALES
			,[EnfermedadesNerviosas]		= @PENFERMEDADESNERVIOSAS
			,[OtrasEnfermedades]			= @POTRASENFERMEDADES
			,[OperadoInternado]				= @POPERADOINTERNADO
			,[AlteracionSaludUltMeses]		= @PALTERACIONSALUDULTMESES
			,[OtraEnfermedadNoMencionada]	= @POTRAENFERMEDADNOMENCIONADA
			,[AlergicoAspirina]				= @PALERGICOASPIRINA
			,[Penicilina]					= @PPENICILINA
			,[Sulfas]						= @PSULFAS
			,[OtrosMedicamentos]			= @POTROSMEDICAMENTOS
			,[ReaccionAnormalAnesDental]	= @PREACCIONANORMALANESDENTAL
			,[SangradoProlongado]			= @PSANGRADOPROLONGADO
			,[Desmayos]						= @PDESMAYOS
	WHERE	Expediente						= @PEXPEDIENTE
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_EXPEDIENTE_ELIMINAR]
(
	@PEXPEDIENTE					INT
)
AS
BEGIN
	DELETE	CDental.dbo.Expediente
	WHERE	Expediente	= @PEXPEDIENTE
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_USUARIOS_ELIMINAR]
(
	@PUSUARIO		VARCHAR(50)
)
AS
BEGIN
	DELETE	CDental.dbo.Usuarios
	WHERE	Usuario		= @PUSUARIO
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_USUARIOS_INSERTAR]
(
	@PUSUARIO		VARCHAR(50) = '00',
	@PCONTRASENA	VARCHAR(50),
	@PCEDULA		VARCHAR(12)
)
AS
BEGIN
	INSERT	CDental.dbo.Usuarios
			(Usuario
			,Contraseña
			,Cedula)
	VALUES	(@PUSUARIO,
			@PCONTRASENA,
			@PCEDULA)
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_USUARIOS_MODIFICAR]
(
	@PUSUARIO		VARCHAR(50),
	@PCONTRASENA	VARCHAR(50),
	@PCEDULA		VARCHAR(12)
)
AS
BEGIN
	UPDATE	CDental.dbo.Usuarios
	SET		Contraseña	= @PCONTRASENA
			,Cedula		= @PCEDULA
	WHERE	Usuario		= @PUSUARIO
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_USUARIOS_SELECCIONAR]
(
	@PUSUARIO	VARCHAR(50) = '00'
)
AS
BEGIN
	SELECT	Usuario
			,Contraseña
			,Cedula
	FROM	CDental.dbo.Usuarios US WITH(NOLOCK)
	WHERE	US.Usuario = (CASE @PUSUARIO
							WHEN '00' THEN US.Usuario
							ELSE @PUSUARIO
						  END)
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TIPOESTADOPIEZA_SELECCIONAR]
(
	@PTIPOESTADOPIEZA INT = 0
)
AS
BEGIN
	SELECT	[TipoEstadoPieza]
			,[Descripcion]
	FROM	[CDental].[dbo].[TipoEstadoPieza] TIP WITH(NOLOCK)
	WHERE	TIP.TipoEstadoPieza	= (CASE @PTIPOESTADOPIEZA
									WHEN 0 THEN TIP.TipoEstadoPieza
									ELSE @PTIPOESTADOPIEZA
								   END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CUENTASHISTORICO_INSERTAR]
(
	@PCODIGOCUENTA	INT	 = 0,
	@PUSUARIO		VARCHAR(50) = '00',
	@PDEBE			DECIMAL(18,2)	= 0,
	@PABONO			DECIMAL(18,2) = 0,
	@PSALDO			DECIMAL(18,2) = 0
)
AS
BEGIN
	INSERT	INTO CDental.dbo.CuentasHistorico
			(CodigoCuenta
			,Fecha
			,Usuario
			,Debe
			,Abono
			,Saldo)
	VALUES	(@PCODIGOCUENTA
			,GETDATE()
			,@PUSUARIO
			,@PDEBE
			,@PABONO
			,@PSALDO)		
END
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TRABAJOS_SELECCIONAR]
(
	@PTRABAJO	INT = 0,
	@PCITA		INT = 0
)
AS
BEGIN
	SELECT	[Trabajo]
			,[Cita]
			,[Pieza]
			,[TipoEstadoPieza]
			,[Descripción]
	FROM	[CDental].[dbo].[Trabajos] TRA WITH(NOLOCK) 
	WHERE	TRA.Trabajo = (CASE @PTRABAJO
							WHEN	0 THEN TRA.Trabajo
							ELSE	@PTRABAJO
						   END)
	AND		TRA.Cita = (CASE @PCITA
							WHEN	0 THEN TRA.Cita
							ELSE	@PCITA
						   END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TRABAJOS_MODIFICAR]
(
	@PTRABAJO	INT = 0,
	@PCITA		INT = 0,
	@PPIEZA		INT,
	@PTIPOESTADOPIEZA INT,
	@PDESCRIPCION VARCHAR(MAX)
)
AS
BEGIN
	UPDATE	[CDental].[dbo].[Trabajos]
	SET		 [Pieza]= @PPIEZA
			,[TipoEstadoPieza] = @PTIPOESTADOPIEZA
			,[Descripción] = @PDESCRIPCION
	WHERE	Trabajo = @PTRABAJO
	AND		Cita	= @PCITA
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TRABAJOS_INSERTAR]
(
	
	@PCITA		INT = 0,
	@PPIEZA		INT,
	@PTIPOESTADOPIEZA INT,
	@PDESCRIPCION VARCHAR(MAX)
)
AS
BEGIN
	insert	[CDental].[dbo].[Trabajos]
			([Cita]
			,[Pieza]
			,[TipoEstadoPieza]
			,[Descripción])
	values (@PCITA,
			@PPIEZA,
			@PTIPOESTADOPIEZA,
			@PDESCRIPCION)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_TRABAJOS_ELIMINAR]
(
	@PTRABAJO	INT = 0,
	@PCITA		INT = 0
)
AS
BEGIN
	DELETE	[CDental].[dbo].[Trabajos]
	WHERE	Trabajo = @PTRABAJO
	and		Cita = @PCITA
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CITA_SELECCIONAR_RESERVADAS]
(
	@PFECHACITA DATE
)
AS
BEGIN	
	SELECT CI.Cita
		  ,CI.Expediente
		  ,CI.Fecha
		  ,CI.Observaciones
	FROM	CDental.dbo.Cita CI WITH(NOLOCK)
	WHERE YEAR(CI.Fecha) = YEAR(@PFECHACITA)
	AND MONTH(CI.Fecha) = MONTH(@PFECHACITA)
	AND DAY(CI.Fecha) = DAY(@PFECHACITA)
	
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_RPT_HISTORIAL_DENTAL]
(
	@PCEDULA VARCHAR(12)
)
AS
BEGIN	
	SELECT  CL.Nombre,
			CL.Apellido1,
			CL.Apellido2,
			CL.Cedula,
			EX.Expediente,
			ED.Pieza,
			ED.FechaCambioEstado,
			EP.Descripcion,
			PO.Descripcion,
			ED.Observaciones
			
			
		  	FROM CDental.dbo.Cliente CL WITH(NOLOCK)
		  	JOIN CDental.dbo.Expediente EX on (CL.Cedula = EX.Cedula)
		  	JOIN CDental.dbo.ExamenEncabezado EC on (EX.Expediente = EC.Expediente)
		  	JOIN CDental.dbo.ExamenDetalle ED on (EC.Examen = ED.Examen)
		  	JOIN CDental.dbo.TipoEstadoPieza EP on (ED.TipoEstadoPieza = EP.TipoEstadoPieza)
		  	JOIN CDental.dbo.TipoPosicion PO on (ED.TipoPosicion = PO.TipoPosicion)
		  	
			WHERE	CL.Cedula = @PCEDULA		
			ORDER BY ED.Pieza
	
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_RPT_CITAS_USUARIO]
(
	@PEXPEDIENTE INTEGER
)
AS
BEGIN	
SELECT [Fecha]
      ,[Observaciones]
  FROM [CDental].[dbo].[Cita]
			WHERE	Expediente  = @PEXPEDIENTE
	
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CLIENTE_SELECCIONAR]
(
	@PCEDULA VARCHAR(12)
)
AS
BEGIN
	SELECT	Cedula
		  ,	Nombre
		  ,	Apellido1
		  ,	Apellido2
		  ,	FechaNacimiento
		  ,	Dama
		  ,	TipoOcupacion
		  ,	Medico
		  ,	EmergenciaAvisar
	FROM	CDental.dbo.Cliente CL WITH(NOLOCK)
	WHERE	CL.Cedula = @PCEDULA;
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CLIENTE_MODIFICAR]
(
	@PCEDULA			varchar(12)
   ,@PNOMBRE			Varchar(100)
   ,@PAPELLIDO1			varchar(100)
   ,@PAPELLIDO2			varchar(100)
   ,@PFECHANACIMIENTO	date
   ,@PDAMA				bit
   ,@PTIPOOCUPACION		int
   ,@PMEDICO			Varchar(50)
   ,@PEMERGENCIAAVISAR	varchar(12)
)
AS
BEGIN
	UPDATE [CDental].[dbo].[Cliente]
	SET [Nombre]			= @PNOMBRE
      ,	[Apellido1]			= @PAPELLIDO1
      ,	[Apellido2]			= @PAPELLIDO2
      ,	[FechaNacimiento]	= @PFECHANACIMIENTO
      ,	[Dama]				= @PDAMA
      ,	[TipoOcupacion]		= @PTIPOOCUPACION
      ,	[Medico]			= @PMEDICO
      ,	[EmergenciaAvisar]	= @PEMERGENCIAAVISAR
	WHERE	[Cedula]		= @PCEDULA
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CLIENTE_INSERTAR]
(
	@PCEDULA			varchar(12)
   ,@PNOMBRE			varchar(100)
   ,@PAPELLIDO1			varchar(100)
   ,@PAPELLIDO2			varchar(100)
   ,@PFECHANACIMIENTO	date
   ,@PDAMA				bit
   ,@PTIPOOCUPACION		int
   ,@PMEDICO			varchar(50)
   ,@PEMERGENCIAAVISAR	varchar(12)
)
AS
BEGIN
	INSERT INTO [CDental].[dbo].[Cliente]
           (Cedula
           ,Nombre
           ,Apellido1
           ,Apellido2
           ,FechaNacimiento
           ,Dama
           ,TipoOcupacion
           ,Medico
           ,EmergenciaAvisar)
     VALUES
           ( @PCEDULA
			,@PNOMBRE
			,@PAPELLIDO1
			,@PAPELLIDO2
			,@PFECHANACIMIENTO
			,@PDAMA
			,@PTIPOOCUPACION
			,@PMEDICO
			,@PEMERGENCIAAVISAR);
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CLIENTE_ELIMINAR]
(
	@PCEDULA			varchar(12)
)
AS
BEGIN
	DELETE	FROM CDental.dbo.Cliente
	WHERE	Cedula = @PCEDULA;
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CLIENTE_LISTAR]
AS
BEGIN
	SELECT	Cedula
		  ,	Nombre
		  ,	Apellido1
		  ,	Apellido2
		  ,	FechaNacimiento
		  ,	Dama
		  ,	TipoOcupacion
		  ,	Medico
		  ,	EmergenciaAvisar
	FROM	CDental.dbo.Cliente CL
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CANTON_SELECCIONAR]
(
	@PID_PROVINCIA	INT,
	@PID_CANTON		INT
)
AS
BEGIN
	SELECT	Id_provincia
		   ,Id_canton
           ,Descripcion
	FROM	CDental.dbo.Canton CAN WITH(NOLOCK)
	WHERE	CAN.Id_provincia= (	CASE @PID_PROVINCIA
									WHEN 0 THEN CAN.Id_provincia
									ELSE @PID_PROVINCIA
								END)
	AND		CAN.Id_canton	= (	CASE @PID_CANTON
									WHEN 0 THEN CAN.Id_canton
									ELSE @PID_CANTON
								END);
	
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_PROVINCIA_SELECCIONAR]
(
	@PID_PROVINCIA	INT
)
AS
BEGIN
	SELECT	Id_provincia
		  ,	Descripcion
	FROM	CDental.dbo.Provincia PRO WITH(NOLOCK)
	WHERE	PRO.Id_provincia= (	CASE @PID_PROVINCIA
									WHEN 0 THEN PRO.Id_provincia
									ELSE @PID_PROVINCIA
								END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_DISTRITO_SELECCIONAR]
(
	@PID_PROVINCIA	INT,
	@PID_CANTON		INT,
	@PID_DISTRITO	INT
)	
AS
BEGIN	
	SELECT  Id_provincia
		  ,	Id_canton
		  ,	Id_distrito
		  ,	Descripcion
	FROM	CDental.dbo.Distrito DIS WITH(NOLOCK)
	WHERE	DIS.Id_provincia= (	CASE @PID_PROVINCIA
									WHEN 0 THEN DIS.Id_provincia
									ELSE @PID_PROVINCIA
								END)
	AND		DIS.Id_canton	= (	CASE @PID_CANTON
									WHEN 0 THEN DIS.Id_canton
									ELSE @PID_CANTON
								END)
	AND		DIS.Id_distrito	= (	CASE @PID_DISTRITO
									WHEN 0 THEN DIS.Id_distrito
									ELSE @PID_DISTRITO
								END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_PAIS_SELECCIONAR]
(
	@PID_PAIS INT
)
AS
BEGIN
	SELECT	PA.Id_pais,
			PA.Descripcion,
			PA.Nacionalidad	
	FROM	CDental.dbo.Pais PA WITH(NOLOCK)
	WHERE	PA.Id_pais = (CASE @PID_PAIS
							WHEN 0	THEN PA.Id_pais
							ELSE @PID_PAIS
						  END)
END

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CITA_ELIMINAR]
(
	@PCITA			INT
)
AS
BEGIN	
	DELETE	CDental.dbo.Cita
	WHERE	Cita	= @PCITA
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CITA_SELECCIONAR]
(
	@PCITA INT,
	@PEXPEDIENTE INT = 0
)
AS
BEGIN	
	SELECT CI.Cita
		  ,CI.Expediente
		  ,CI.Fecha
		  ,CI.Observaciones
	  FROM	CDental.dbo.Cita CI WITH(NOLOCK)
	  WHERE	CI.Cita =			(CASE @PCITA
								 WHEN 0 THEN CI.Cita
								 ELSE @PCITA
								 END)
					   
	  AND	CI.Expediente =		(CASE @PEXPEDIENTE
								 WHEN 0 THEN CI.Expediente
								 ELSE @PEXPEDIENTE
							     END)
	
END 

GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CITA_INSERTAR]
(
	@PEXPEDIENTE	INT,
	@PFECHA			DATETIME,
	@POBSERVACIONES	VARCHAR(MAX)
)
AS
BEGIN	
	INSERT	INTO CDental.dbo.Cita
		   (CI.Expediente
		   ,CI.Fecha
		   ,CI.Observaciones)
	VALUES (@PEXPEDIENTE,
			@PFECHA,
			@POBSERVACIONES)
END 
GO

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SP_CITA_MODIFICAR]
(
	@PCITA			INT,
	@PEXPEDIENTE	INT,
	@PFECHA			DATE,
	@POBSERVACIONES	VARCHAR(MAX)
)
AS
BEGIN	
	UPDATE	CDental.dbo.Cita
	SET		Expediente		= @PEXPEDIENTE,
			Fecha			= @PFECHA,
			Observaciones	= @POBSERVACIONES
	WHERE	Cita			= @PCITA
END 
GO

GO

--Indexes of table dbo.Canton
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Canton] ADD CONSTRAINT [PK_Canton] PRIMARY KEY CLUSTERED ([Id_provincia], [Id_canton]) 
GO

--Indexes of table dbo.Cita
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Cita] ADD CONSTRAINT [PK_Cita] PRIMARY KEY CLUSTERED ([Cita]) 
GO

--Indexes of table dbo.Cliente
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Cliente] ADD CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED ([Cedula]) 
GO

--Indexes of table dbo.Cuentas
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Cuentas] ADD CONSTRAINT [PK_Cuentas] PRIMARY KEY CLUSTERED ([CodigoCuenta]) 
GO

--Indexes of table dbo.CuentasHistorico
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[CuentasHistorico] ADD CONSTRAINT [PK_CuentasHistorico] PRIMARY KEY CLUSTERED ([CodigoCuenta], [Fecha]) 
GO

--Indexes of table dbo.DireccionesCliente
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[DireccionesCliente] ADD CONSTRAINT [PK_DireccionesCliente] PRIMARY KEY CLUSTERED ([Cedula], [TipoDireccion]) 
GO

--Indexes of table dbo.Distrito
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Distrito] ADD CONSTRAINT [PK_Distrito] PRIMARY KEY CLUSTERED ([Id_provincia], [Id_canton], [Id_distrito]) 
GO

--Indexes of table dbo.ExamenDetalle
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[ExamenDetalle] ADD CONSTRAINT [PK_ExamenDetalle] PRIMARY KEY CLUSTERED ([Examen], [Pieza], [TipoPosicion]) 
GO

--Indexes of table dbo.ExamenEncabezado
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[ExamenEncabezado] ADD CONSTRAINT [PK_ExamenEncabezado] PRIMARY KEY CLUSTERED ([Examen]) 
GO

--Indexes of table dbo.Expediente
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Expediente] ADD CONSTRAINT [PK_Expediente] PRIMARY KEY CLUSTERED ([Expediente]) 
GO

--Indexes of table dbo.Pais
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Pais] ADD CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED ([Id_pais]) 
GO

--Indexes of table dbo.ParentescoCliente
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[ParentescoCliente] ADD CONSTRAINT [PK_ParentescoCliente] PRIMARY KEY CLUSTERED ([Identificador]) 
GO

--Indexes of table dbo.Piezas
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Piezas] ADD CONSTRAINT [PK_Piezas] PRIMARY KEY CLUSTERED ([Pieza]) 
GO

--Indexes of table dbo.Provincia
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Provincia] ADD CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED ([Id_provincia]) 
GO

--Indexes of table dbo.Telefonos
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Telefonos] ADD CONSTRAINT [PK_Telefonos] PRIMARY KEY CLUSTERED ([Cedula], [TipoTelefono]) 
GO

--Indexes of table dbo.TipoDireccion
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[TipoDireccion] ADD CONSTRAINT [PK_TipoDireccion] PRIMARY KEY CLUSTERED ([TipoDireccion]) 
GO

--Indexes of table dbo.TipoEstadoPieza
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[TipoEstadoPieza] ADD CONSTRAINT [PK_TipoEstadoPieza] PRIMARY KEY CLUSTERED ([TipoEstadoPieza]) 
GO

--Indexes of table dbo.TipoOcupacion
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[TipoOcupacion] ADD CONSTRAINT [PK_TipoOcupacion] PRIMARY KEY CLUSTERED ([Ocupacion]) 
GO

--Indexes of table dbo.TipoParentesco
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[TipoParentesco] ADD CONSTRAINT [PK_TipoParentesco] PRIMARY KEY CLUSTERED ([TipoParentesco]) 
GO

--Indexes of table dbo.TipoPosicion
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[TipoPosicion] ADD CONSTRAINT [PK_TipoPosicion] PRIMARY KEY CLUSTERED ([TipoPosicion]) 
GO

--Indexes of table dbo.TipoTelefono
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[TipoTelefono] ADD CONSTRAINT [PK_TipoTelefono] PRIMARY KEY CLUSTERED ([TipoTelefono]) 
GO

--Indexes of table dbo.Usuarios
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Usuarios] ADD CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED ([Usuario]) 
GO

--Foreign Keys

USE [CDental]
GO
ALTER TABLE [dbo].[Canton] WITH CHECK ADD CONSTRAINT [FK_Canton_Provincia] 
	FOREIGN KEY ([Id_provincia]) REFERENCES [dbo].[Provincia] ([Id_provincia])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Canton] CHECK CONSTRAINT [FK_Canton_Provincia]
GO
ALTER TABLE [dbo].[Cita] WITH CHECK ADD CONSTRAINT [FK_Cita_Expediente] 
	FOREIGN KEY ([Expediente]) REFERENCES [dbo].[Expediente] ([Expediente])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [FK_Cita_Expediente]
GO
ALTER TABLE [dbo].[Cliente] WITH CHECK ADD CONSTRAINT [FK_Cliente_TipoOcupacion] 
	FOREIGN KEY ([TipoOcupacion]) REFERENCES [dbo].[TipoOcupacion] ([Ocupacion])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_TipoOcupacion]
GO
ALTER TABLE [dbo].[Cuentas] WITH CHECK ADD CONSTRAINT [FK_Cuentas_Expediente] 
	FOREIGN KEY ([Expediente]) REFERENCES [dbo].[Expediente] ([Expediente])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Cuentas] CHECK CONSTRAINT [FK_Cuentas_Expediente]
GO
ALTER TABLE [dbo].[CuentasHistorico] WITH CHECK ADD CONSTRAINT [FK_CuentasHistorico_Cuentas] 
	FOREIGN KEY ([CodigoCuenta]) REFERENCES [dbo].[Cuentas] ([CodigoCuenta])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[CuentasHistorico] CHECK CONSTRAINT [FK_CuentasHistorico_Cuentas]
GO
ALTER TABLE [dbo].[CuentasHistorico] WITH CHECK ADD CONSTRAINT [FK_CuentasHistorico_Usuarios] 
	FOREIGN KEY ([Usuario]) REFERENCES [dbo].[Usuarios] ([Usuario])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[CuentasHistorico] CHECK CONSTRAINT [FK_CuentasHistorico_Usuarios]
GO
ALTER TABLE [dbo].[DireccionesCliente] WITH CHECK ADD CONSTRAINT [FK_DireccionesCliente_Cliente] 
	FOREIGN KEY ([Cedula]) REFERENCES [dbo].[Cliente] ([Cedula])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[DireccionesCliente] CHECK CONSTRAINT [FK_DireccionesCliente_Cliente]
GO
ALTER TABLE [dbo].[DireccionesCliente] WITH CHECK ADD CONSTRAINT [FK_DireccionesCliente_Distrito] 
	FOREIGN KEY ([Id_provincia], [Id_canton], [Id_distrito])
	REFERENCES [dbo].[Distrito] ([Id_provincia], [Id_canton], [Id_distrito])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[DireccionesCliente] CHECK CONSTRAINT [FK_DireccionesCliente_Distrito]
GO
ALTER TABLE [dbo].[DireccionesCliente] WITH CHECK ADD CONSTRAINT [FK_DireccionesCliente_Pais] 
	FOREIGN KEY ([Id_pais]) REFERENCES [dbo].[Pais] ([Id_pais])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[DireccionesCliente] CHECK CONSTRAINT [FK_DireccionesCliente_Pais]
GO
ALTER TABLE [dbo].[DireccionesCliente] WITH CHECK ADD CONSTRAINT [FK_DireccionesCliente_TipoDireccion] 
	FOREIGN KEY ([TipoDireccion]) REFERENCES [dbo].[TipoDireccion] ([TipoDireccion])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[DireccionesCliente] CHECK CONSTRAINT [FK_DireccionesCliente_TipoDireccion]
GO
ALTER TABLE [dbo].[Distrito] WITH CHECK ADD CONSTRAINT [FK_Distrito_Canton] 
	FOREIGN KEY ([Id_provincia], [Id_canton])
	REFERENCES [dbo].[Canton] ([Id_provincia], [Id_canton])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Distrito] CHECK CONSTRAINT [FK_Distrito_Canton]
GO
ALTER TABLE [dbo].[ExamenDetalle] WITH CHECK ADD CONSTRAINT [FK_ExamenDetalle_ExamenEncabezado] 
	FOREIGN KEY ([Examen]) REFERENCES [dbo].[ExamenEncabezado] ([Examen])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ExamenDetalle] CHECK CONSTRAINT [FK_ExamenDetalle_ExamenEncabezado]
GO
ALTER TABLE [dbo].[ExamenDetalle] WITH CHECK ADD CONSTRAINT [FK_ExamenDetalle_Piezas] 
	FOREIGN KEY ([Pieza]) REFERENCES [dbo].[Piezas] ([Pieza])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ExamenDetalle] CHECK CONSTRAINT [FK_ExamenDetalle_Piezas]
GO
ALTER TABLE [dbo].[ExamenDetalle] WITH CHECK ADD CONSTRAINT [FK_ExamenDetalle_TipoEstadoPieza] 
	FOREIGN KEY ([TipoPosicion]) REFERENCES [dbo].[TipoEstadoPieza] ([TipoEstadoPieza])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ExamenDetalle] CHECK CONSTRAINT [FK_ExamenDetalle_TipoEstadoPieza]
GO
ALTER TABLE [dbo].[ExamenDetalle] WITH CHECK ADD CONSTRAINT [FK_ExamenDetalle_TipoPosicion] 
	FOREIGN KEY ([TipoPosicion]) REFERENCES [dbo].[TipoPosicion] ([TipoPosicion])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ExamenDetalle] CHECK CONSTRAINT [FK_ExamenDetalle_TipoPosicion]
GO
ALTER TABLE [dbo].[ExamenEncabezado] WITH CHECK ADD CONSTRAINT [FK_ExamenEncabezado_Expediente] 
	FOREIGN KEY ([Expediente]) REFERENCES [dbo].[Expediente] ([Expediente])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ExamenEncabezado] CHECK CONSTRAINT [FK_ExamenEncabezado_Expediente]
GO
ALTER TABLE [dbo].[Expediente] WITH CHECK ADD CONSTRAINT [FK_Expediente_Cliente] 
	FOREIGN KEY ([Cedula]) REFERENCES [dbo].[Cliente] ([Cedula])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Expediente] CHECK CONSTRAINT [FK_Expediente_Cliente]
GO
ALTER TABLE [dbo].[ExpedienteOpcional] WITH CHECK ADD CONSTRAINT [FK_ExpedienteOpcional_Expediente] 
	FOREIGN KEY ([Expediente]) REFERENCES [dbo].[Expediente] ([Expediente])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ExpedienteOpcional] CHECK CONSTRAINT [FK_ExpedienteOpcional_Expediente]
GO
ALTER TABLE [dbo].[ParentescoCliente] WITH CHECK ADD CONSTRAINT [FK_ParentescoCliente_Cliente] 
	FOREIGN KEY ([Cliente1]) REFERENCES [dbo].[Cliente] ([Cedula])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ParentescoCliente] CHECK CONSTRAINT [FK_ParentescoCliente_Cliente]
GO
ALTER TABLE [dbo].[ParentescoCliente] WITH CHECK ADD CONSTRAINT [FK_ParentescoCliente_Cliente1] 
	FOREIGN KEY ([Cliente2]) REFERENCES [dbo].[Cliente] ([Cedula])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ParentescoCliente] CHECK CONSTRAINT [FK_ParentescoCliente_Cliente1]
GO
ALTER TABLE [dbo].[ParentescoCliente] WITH CHECK ADD CONSTRAINT [FK_ParentescoCliente_TipoParentesco] 
	FOREIGN KEY ([TipoParentesco]) REFERENCES [dbo].[TipoParentesco] ([TipoParentesco])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ParentescoCliente] CHECK CONSTRAINT [FK_ParentescoCliente_TipoParentesco]
GO
ALTER TABLE [dbo].[Telefonos] WITH CHECK ADD CONSTRAINT [FK_Telefonos_Cliente] 
	FOREIGN KEY ([Cedula]) REFERENCES [dbo].[Cliente] ([Cedula])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Telefonos] CHECK CONSTRAINT [FK_Telefonos_Cliente]
GO
ALTER TABLE [dbo].[Telefonos] WITH CHECK ADD CONSTRAINT [FK_Telefonos_TipoTelefono] 
	FOREIGN KEY ([TipoTelefono]) REFERENCES [dbo].[TipoTelefono] ([TipoTelefono])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Telefonos] CHECK CONSTRAINT [FK_Telefonos_TipoTelefono]
GO
ALTER TABLE [dbo].[Usuarios] WITH CHECK ADD CONSTRAINT [FK_Usuarios_Cliente] 
	FOREIGN KEY ([Cedula]) REFERENCES [dbo].[Cliente] ([Cedula])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Cliente]
GO

USE [master]
GO
/****** Object:  Database [tareas]    Script Date: 25/04/2018 12:33:36 a. m. ******/
CREATE DATABASE [tareas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tareas', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\tareas.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tareas_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\tareas_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [tareas] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tareas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tareas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tareas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tareas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tareas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tareas] SET ARITHABORT OFF 
GO
ALTER DATABASE [tareas] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [tareas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tareas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tareas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tareas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tareas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tareas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tareas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tareas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tareas] SET  ENABLE_BROKER 
GO
ALTER DATABASE [tareas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tareas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tareas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tareas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tareas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tareas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tareas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tareas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [tareas] SET  MULTI_USER 
GO
ALTER DATABASE [tareas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tareas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tareas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tareas] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [tareas] SET DELAYED_DURABILITY = DISABLED 
GO
USE [tareas]
GO
/****** Object:  Table [dbo].[ApartadosM]    Script Date: 25/04/2018 12:33:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApartadosM](
	[idApartadosM] [int] IDENTITY(1,1) NOT NULL,
	[idApartado] [int] NULL,
	[idProducto] [int] NULL,
	[Cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idApartadosM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 25/04/2018 12:33:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1000,1) NOT NULL,
	[Nombre] [varchar](150) NULL,
	[ApPaterno] [varchar](150) NULL,
	[ApMaterno] [varchar](150) NULL,
	[Telefono] [varchar](50) NULL,
	[Calle] [varchar](150) NULL,
	[Numero] [varchar](50) NULL,
	[CodigoPostal] [varchar](50) NULL,
	[Colonia] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 25/04/2018 12:33:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventario](
	[IdProducto] [int] IDENTITY(1000,1) NOT NULL,
	[IdProveedor] [int] NULL,
	[Modelo] [int] NULL,
	[Color] [varchar](50) NULL,
	[Material] [varchar](50) NULL,
	[Marca] [varchar](50) NULL,
	[Talla] [float] NULL,
	[PrecioCompra] [float] NULL,
	[PrecioVenta] [float] NULL,
	[CantidadExistente] [int] NULL,
	[ImagenProducto] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 25/04/2018 12:33:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[idProvedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[RFC] [varchar](50) NULL,
	[Folio] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idProvedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SistemaApartado]    Script Date: 25/04/2018 12:33:38 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SistemaApartado](
	[idApartado] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NULL,
	[Precio] [float] NULL,
	[Enganche] [float] NULL,
	[Debe] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[idApartado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ApartadosM] ON 

INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (2, 3, 1000, 1)
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (3, 4, 1000, 1)
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (4, 5, 1002, 1)
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (5, 6, 1009, 1)
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (6, 3, 1008, 1)
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (7, 8, 1005, 1)
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (8, 9, 1004, 1)
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (9, 10, 1006, 1)
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (10, 11, 1009, 5)
SET IDENTITY_INSERT [dbo].[ApartadosM] OFF
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1000, N'Matt', N'Bellamy', N'Bellamy', N'561', N'London', N'13244', N'65465', N'Muse')
INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1001, N'Irvin Eliud', N'Garcia', N'Perez', N'12345', N'Motorama', N'13', N'23456', N'Rusia')
INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1002, N'Leon', N'Casas', N'Venados', N'1345', N'Anaranjado', N'23435', N'345', N'Locacion')
INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1003, N'Juan', N'Armijo', N'Bosques', N'12345', N'Alocados', N'234', N'324', N'Calanos')
INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1005, N'Nicolas', N'Oscar', N'Flores', N'111111551111', N'Callosa', N'544', N'1321', N'Colonos')
INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1006, N'Chris', N'Pacheco', N'Maca', N'191', N'London', N'123444', N'666', N'Muse')
INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1007, N'Gerard', N'Arthur', N'Way', N'21', N'LA', N'5466', N'1321', N'MCR')
INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1008, N'H', N'P', N'Lovecraft', N'666666666', N'London', N'56565', N'232323', N'Cuthulu')
INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1009, N'Alberto', N'Missael', N'Granados', N'34367798', N'Apodaca', N'65656', N'1321', N'Apodaca')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Inventario] ON 

INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1000, 1, 101, N'Blanco', N'Cuero', N'Principe', 10, 50, 200, 31, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1001, 2, 102, N'Azul', N'Sintético', N'Andrea', 6, 400, 450, 0, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1002, 3, 103, N'Gris', N'Sintético', N'Andrea', 4, 400, 600, 0, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1004, 5, 105, N'Negro', N'Sintético', N'Flexi', 7, 750, 900, 8, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1005, 6, 106, N'Café', N'Plástico', N'Flexi', 9, 800, 1200, 5, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1006, 7, 107, N'Negro', N'Piel', N'Flexi', 10, 1000, 1500, 14, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1007, 8, 108, N'Azul', N'Piel', N'Flexi', 11, 1500, 2000, 13, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1008, 9, 109, N'Café Oscuro', N'Piel', N'Flexi', 12, 900, 1100, 11, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1009, 10, 1666163, N'Azul', N'Vaquita Marina', N'DeforestacionMundial', 5.5, 800, 1000, 15, NULL)
SET IDENTITY_INSERT [dbo].[Inventario] OFF
SET IDENTITY_INSERT [dbo].[Proveedores] ON 

INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (1, N'Primero', N'AQA250502MU3', N'00001', N'Cerro del Fraile #1205')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (2, N'EREZ', N'RUPE250502B74', N'00002', N'Tepeyac #615')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (3, N'converses', N'SADFG4654EWR', N'00006', N'POR HYA')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (4, N'Nike', N'GDSGF456ER42', N'01026', N'SAN ISIDRO')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (5, N'Irwing Aaron', N'IATV050HNLL', N'20', N'Pino 301')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (7, N'Pirma', N'AS055HJJ', N'0000502', N'Correccional de menores #50')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (8, N'Elirwing', N'sadfg54t1ua', N'000010', N'Macroplaza #1111')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (9, N'Vegeta', N'ASDASD565645', N'00000050', N'España #777')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (10, N'LaRosa', N'ADJASDHA4564', N'00007', N'Cerro de la Silla #5555')
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
SET IDENTITY_INSERT [dbo].[SistemaApartado] ON 

INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (1, 1001, 0, 1, 50)
INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (2, 1001, 0, 1, 11)
INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (3, 1001, 0, 1, 403)
INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (4, 1002, 986, 1, 885)
INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (6, 1004, 50, 1, 505)
INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (7, 1008, 123, 1, 120)
INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (8, 1007, 5050, 1, 700)
INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (9, 1009, 606, 1, 600)
INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (10, 1005, 30, 1, 405)
SET IDENTITY_INSERT [dbo].[SistemaApartado] OFF
USE [master]
GO
ALTER DATABASE [tareas] SET  READ_WRITE 
GO

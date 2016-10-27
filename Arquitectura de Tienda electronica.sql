CREATE DATABASE TiendaElectronica
CREATE TABLE [dbo].[categoria](
	[idCategoria] [int] IDENTITY(1,1) NOT NULL,
	[nombreCategoria] [nvarchar](50) NOT NULL,
	[descripcionCategoria] [nvarchar](1000) NULL,
	[codigoImagen] [nvarchar](60) UNIQUE,
	PRIMARY KEY(idCategoria)
 );
GO
create table producto_categoria(
	idCategoria int NOT NULL,
	idProducto int NOT NULL,
	FOREIGN KEY(idCategoria) REFERENCES categoria(idCategoria),
	FOREIGN KEY(idProducto) REFERENCES producto(idProducto)
);
GO
CREATE TABLE [dbo].[datos_tecnicos](
[idProducto] int NOT NULL,
[titulo_dato] varchar(30) NOT NULL,
[contenido] varchar(100) NOT NULL,
FOREIGN KEY(idProducto) REFERENCES producto(idProducto)
);
CREATE TABLE [dbo].[producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombreProducto] [nvarchar](50) NOT NULL,
	[descripcionProducto] [nvarchar](max) NOT NULL,
	[precio] [money] NOT NULL,
	[idModelo] int NOT NULL,
	[codigoImagen] [nvarchar](50) NOT NULL UNIQUE,
	[disponible] bit NOT NULL,
	PRIMARY KEY(idProducto),
	FOREIGN KEY(idModelo) REFERENCES modelo_marca(idModelo)
	);
	go
CREATE TABLE [dbo].[marca](
	[idMarca] int identity(1,1) NOT NULL,
	[nombreMarca] varchar(40) NOT NULL,
	[descripcionMarca] varchar(200) NOT NULL,
	PRIMARY KEY(idMarca)
);
go
CREATE TABLE [dbo].[modelo_marca](
	[idModelo] int identity(1,1) NOT NULL,
	[idMarca] int NOT NULL,
	[nombreModelo] varchar(50) NOT NULL,
	PRIMARY KEY(idModelo),
	FOREIGN KEY(idMarca) REFERENCES marca(idMarca)
);
go
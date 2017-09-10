CREATE DATABASE CIBERTEC


CREATE TABLE Usuario
(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR(MAX) NOT NULL,
	Clave VARCHAR(MAX) NOT NULL,
	Habilitado Bit NOT NULL
)
GO
CREATE PROCEDURE CrearUsuario
	@Nombre NVARCHAR(MAX),
	@Clave VARCHAR(MAX),
	@Habilitado Bit
AS
BEGIN
	INSERT INTO Usuario(Name,Clave,Habilitado)
	VALUES (@Nombre,@Clave,@Habilitado)
END

GO

CREATE PROCEDURE ListarTodosLosUsuarios
AS
BEGIN
	SELECT	Id,
			Name,
			Clave,
			Habilitado
	FROM Usuario
END


select * from Usuario
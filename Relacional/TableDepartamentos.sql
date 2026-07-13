CREATE TABLE Departamentos
(
	DepartamentoId INT PRIMARY KEY IDENTITY(1,1),
	NombreDepartamento VARCHAR(75)
);
GO

CREATE TABLE Empleados
(
	EmpleadoId INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(75) NOT NULL,
	DepartamentoId INT REFERENCES Departamentos(DepartamentoId),
	Sueldo DECIMAL(18,5) NOT NULL 
);
GO

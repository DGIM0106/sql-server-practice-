CREATE TABLE Empleados
(
	EmpleadoId INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(75) NOT NULL,
	Departamento VARCHAR(100) NOT NULL,
	--Decimal(18,5) significa que hay 18 numeros totales y 5 de ellos son decimales en total 13 enteros y 5 decimales
	Sueldo DECIMAL(18,5) NOT NULL 
);

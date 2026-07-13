INSERT INTO [dbo].[Departamentos] ([NombreDepartamento])
VALUES ('Sistemas'),
('Marketing');
GO

INSERT INTO [dbo].[Empleados] ([Nombre],[DepartamentoId],[Sueldo])
VALUES ('Juan',1,1500.00),
('Matias',2,2100.50),
('Diana',1,1800.75);
GO

INSERT INTO [dbo].[Empleados] ([Nombre],[DepartamentoId],[Sueldo])
VALUES ('Carlos',10,5000);

--DELETE FROM [dbo].[Empleados];

--TRUNCATE TABLE Empleados;
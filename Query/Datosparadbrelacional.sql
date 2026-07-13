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

SELECT *
FROM [dbo].[Departamentos]

SELECT *
FROM [dbo].[Empleados]

--muestra lo especificado y si un dato no extiste lo ignora
SELECT E.[Nombre], D.[NombreDepartamento], E.[Sueldo]
FROM [dbo].[Empleados] AS E
INNER JOIN [dbo].[Departamentos] AS D ON E.[DepartamentoId] = D.[DepartamentoId];

--left join Trae absolutamente todas las filas de la tabla de la izquierda (la primera que escribes después del FROM), sin importar si tienen o no coincidencia en la tabla de la derecha
SELECT E.[Nombre], D.[NombreDepartamento], E.[Sueldo]
FROM [dbo].[Empleados] AS E
LEFT JOIN [dbo].[Departamentos] AS D ON E.[DepartamentoId] = D.[DepartamentoId];

SELECT D.[NombreDepartamento], AVG(E.[Sueldo]) AS SueldoPromedio
FROM [dbo].[Empleados] AS E
INNER JOIN [dbo].[Departamentos] AS D ON E.[DepartamentoId] = D.[DepartamentoId]
GROUP BY D.[NombreDepartamento];
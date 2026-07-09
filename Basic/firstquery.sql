--General query
SELECT *
FROM [dbo].[Empleados]
GO
--Specific query
SELECT [Nombre], [Sueldo]
FROM [dbo].[Empleados]
WHERE [Departamento] = 'Sistemas';
GO
--More Specific query
SELECT [Nombre], [Departamento], [Sueldo]
FROM [dbo].[Empleados]
WHERE ([Departamento] = 'Sistemas' AND [Sueldo] > 1600) OR ([Departamento] = 'Marketing');
GO

--Order By
SELECT [Nombre], [Departamento], [Sueldo]
FROM [dbo].[Empleados]
WHERE ([Departamento] = 'Sistemas' AND [Sueldo] > 1600) OR ([Departamento] = 'Marketing')
ORDER BY [Sueldo];
GO
--ORDER BY DESCENDENTE
SELECT [Nombre], [Departamento], [Sueldo]
FROM [dbo].[Empleados]
WHERE ([Departamento] = 'Sistemas' AND [Sueldo] > 1600) OR ([Departamento] = 'Marketing')
ORDER BY [Sueldo] DESC;
GO
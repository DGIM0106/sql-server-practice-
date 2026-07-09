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

--COUNT Y GRUOP BY 
--Cualquier columna que pongas en el SELECT que no esté dentro de una función de agregación (como SUM o AVG), debe aparecer obligatoriamente en la cláusula GROUP BY
SELECT [Departamento], AVG([Sueldo]) AS [SueldoPromedio]
FROM [dbo].[Empleados]
GROUP BY [Departamento];
GO

SELECT [Departamento], SUM([Sueldo]) AS [SueldoSUM]
FROM [dbo].[Empleados]
GROUP BY [Departamento]
ORDER BY [SueldoSUM] DESC;
GO
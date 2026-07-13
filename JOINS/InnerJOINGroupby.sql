SELECT D.[NombreDepartamento], AVG(E.[Sueldo]) AS SueldoPromedio
FROM [dbo].[Empleados] AS E
INNER JOIN [dbo].[Departamentos] AS D ON E.[DepartamentoId] = D.[DepartamentoId]
GROUP BY D.[NombreDepartamento];
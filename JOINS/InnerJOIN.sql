--muestra lo especificado y si un dato no extiste lo ignora
SELECT E.[Nombre], D.[NombreDepartamento], E.[Sueldo]
FROM [dbo].[Empleados] AS E
INNER JOIN [dbo].[Departamentos] AS D ON E.[DepartamentoId] = D.[DepartamentoId];
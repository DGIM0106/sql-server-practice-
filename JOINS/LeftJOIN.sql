--left join Trae absolutamente todas las filas de la tabla de la izquierda (la primera que escribes después del FROM), sin importar si tienen o no coincidencia en la tabla de la derecha
SELECT E.[Nombre], D.[NombreDepartamento], E.[Sueldo]
FROM [dbo].[Empleados] AS E
LEFT JOIN [dbo].[Departamentos] AS D ON E.[DepartamentoId] = D.[DepartamentoId];
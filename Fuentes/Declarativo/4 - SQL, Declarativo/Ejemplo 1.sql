-- Ventas por empleado
SELECT Employees.EmployeeID
	,Employees.FirstName
	,Employees.LastName
	,count(Orders.OrderId) NumeroVentas
FROM Employees
INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.EmployeeID
	,Employees.FirstName
	,Employees.LastName

--Obtener los clientes que no han realizado una compra desde 1997
SELECT CustomerID
	,CompanyName
FROM Customers
WHERE NOT EXISTS (
		SELECT *
		FROM orders
		WHERE Customers.CustomerID = ORders.CustomerID
			AND OrderDate > '1997-12-31'
		)

--Obtener los jefes intermedios, estos son jefes que tiene personal a su cargo, en el ultimo nivel jeraquico 
-- (la gente que depende de el, no tiene a su vez a gente que dependa de ellos)
SELECT *
FROM Employees JefesIntermedios
WHERE EXISTS (
		SELECT *
		FROM Employees Dependientes
		WHERE Dependientes.EmployeeID = JefesIntermedios.ReportsTo
			AND NOT EXISTS (
				SELECT *
				FROM Employees DependientesUltimoNivel
				WHERE DependientesUltimoNivel.EmployeeID = Dependientes.ReportsTo
				)
		)


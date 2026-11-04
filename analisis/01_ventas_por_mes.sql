--Cuanto vendi cada mes :D--
SELECT 
strftime('%Y-%m',fecha) As mes,
SUM(cantidad * precio_unitario) As total_ventas
FROM ventas
GROUP BY mes
ORDER BY mes;

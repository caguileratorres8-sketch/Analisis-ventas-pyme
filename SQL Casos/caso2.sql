--En este caso voy a crear una tabla para ps empezar a probar SQL en donde distintos clientes ficticios realicen una compra--
DROP table if exists ventas;
Create table ventas (
 --Configuramos como queremos nuestros parametros a nuestra tabla--
  id_factura Integer,
  fecha text,
  cliente text, 
  producto text,
  cantidad integer,
  precio_unitario integer
  );
 Insert into ventas values
 --Creamos a nuestros clientes ficticios--
  (1, '2026-01-05', 'Mauricio Montaña', 'Petuche', 10, 5000),
  (2,'2026-01-12','Alison Vargas', 'Lapicero',1,1500),
  (3, '2026-02-03', 'Totidid', 'Resma de papel', 5, 18000),
(4, '2026-02-15', 'Duarte', 'Cuaderno', 20, 3500),
(5, '2026-03-01', 'Diosito', 'Resma de papel', 8, 18000);
--Creamos una consulta en donde miremos el total de ventas por el periodo de enero(mes 1) hasta ps marzo(mes 3)
SELECT
    strftime('%Y-%m', fecha) AS mes,
    SUM(cantidad * precio_unitario) AS total_ventas
FROM ventas
GROUP BY mes
ORDER BY mes;
--Resuelto en SQLiteonline por si acaso*--

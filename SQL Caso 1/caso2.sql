--Borramos tablas en caso de que no sirvan o se hayan creado accidentalmente en la consulta--
Drop table if exists ventas;
Create table ventas (
  --Volvemos a denominar nuestros parametros para el caso 2--
 id_factura integer,
  fecha text,
  cliente text, 
  pais text,
  producto text,
  cantidad integer,
  precio_unitario integer
);
insert into ventas values
--Actualizamos nuestros clientes--
 (1, '2026-01-05', 'Cristian Aguilera','Colombia','Computador',1,1500000),
  (2,'2026-01-12','Alison Nicol','Venezuela','Armgripper',1,16500),
 (3, '2026-02-03', 'Fernando Alarcon', 'Nicaragua','Iphone',1,5000000),
(4, '2026-02-15', 'Duarte', 'Colombia', 'xbox',1,360000),
(5, '2026-03-01', 'Diosito','Italia', 'Valentino Born in Roma',1,150000);
-- Ahora como consulta para este caso 2 añadimos perfumes y productos varios, vamos a calcular cuanto ha comprado cada cliente--
SELECT
    cliente,
    SUM(cantidad * precio_unitario) AS total_comprado
FROM ventas
GROUP BY cliente
ORDER BY total_comprado DESC;
--Hecho por Cristian Aguilera en SQLliteonline (again)--

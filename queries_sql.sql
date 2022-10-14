SELECT id, "cost", name_peli
FROM public.ticket_cost;
-- Salida de resultado
id|cost|name_peli|
--+----+---------+
 1|  10|Peli1    |
 2|  15|Peli2    |
 3|  15|Peli3    |
 4|  25|Peli4    |
 5|  35|Peli5    |
 6|  15|Peli6    |
 7|  18|Peli7    |
 8|  19|Peli8    |
 9|  20|Peli9    |
10|  21|Peli10   |
11|  22|Peli11   |
12|  23|Peli12   |
13|  24|Peli13   |
--suma de costo total de peliculas
select sum(cost) as suma
from ticket_cost
select power(suma,5) as total_diario;
--Resultado de la salida
suma|
----+
 262|
--Total de la semana

select power((select sum(cost) as suma from ticket_cost) ,5) as total_semana;
--Resultado de la consola
total_semana                  |
------------------------------+
1234543668832.0000000000000000|
-- Cacular el valor promedio de peliculas en el dia
select avg(cost) from ticket_cost
-- salida de resultados
avg                |
-------------------+
20.1538461538461538|
-- Seleccionar el costo minimo de una pelicula
select min(cost) from ticket_cost;
--salida de resultado
min|
---+
 10|
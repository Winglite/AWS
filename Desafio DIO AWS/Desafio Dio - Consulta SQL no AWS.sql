--Desafio Queries Athena AWS

--Somar a população
select
	sum(population)
from "population"."population";


--Selecionar a polulação filtrando por cidade
select city, population
from "population"."population"
where city='Foz do Iguaçu';

--Mostrar os 15 registros da tabela
select * from "population"."population" limit 15

--Selecionar os dados por região organizando por nome
select region,
	sum(population)
from "population"."population"
where region='Sul'
group by region;


--Seleconar os dados por região, estado, cidade
SELECT region, state, city 
SUM(population) AS Pupulação total
FROM "population"."population"
GROUP BY city;
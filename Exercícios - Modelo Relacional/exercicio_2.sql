#Exercício 2 - Crie as seguintes consultas:
#- Lista dos 5 melhores/piores vendedores (2 consultas);
#- Campos: nome do vendedor, total de vendas;
#- Agrupado por vendedor;
#- Ordenado pelo total de vendas.

#5 MELHORES VENDEDORES:
SELECT 
	v.nome, 
	COUNT(vendas.idvenda) AS total
FROM relacional.vendedores AS v
INNER JOIN relacional.vendas AS vendas ON (vendas.idvendedor = v.idvendedor) 
GROUP BY v.nome
ORDER BY total DESC
LIMIT 5;

#5 PIORES VENDEDORES:
SELECT 
	v.nome, 
	COUNT(vendas.idvenda) AS total
FROM relacional.vendedores AS v
INNER JOIN relacional.vendas AS vendas ON (vendas.idvendedor = v.idvendedor) 
GROUP BY v.nome
ORDER BY total ASC
LIMIT 5;

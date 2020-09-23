#Exercício 3 - Crie a seguinte consulta:
#- Total de vendas em período;
#- Campos: Produto, total de vendas;
#- Agrupado por produto;
#- Filtro de mês e ano.

SELECT 
	p.produto, 
	COUNT(v.idvenda) as qtdeTotal 
FROM relacional.produtos AS p
INNER JOIN relacional.ItensVenda AS iv ON (iv.idproduto = p.idproduto)
INNER JOIN relacional.vendas AS v ON (v.idvenda = iv.idvenda)
WHERE v.data BETWEEN '01-01-2016' AND '01-02-2016'
GROUP BY p.produto; 

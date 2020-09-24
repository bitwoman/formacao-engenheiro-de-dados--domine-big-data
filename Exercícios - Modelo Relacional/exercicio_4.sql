#Exercício 4 - Crie a seguinte consulta:
#- Produtos com maiores descontos;
#- Campos: Produto, total de descontos;
#- Agrupado por produtos.

SELECT 
	p.produto, 
	SUM(iv.desconto) AS total
FROM relacional.produtos AS p
INNER JOIN relacional.itensvenda AS iv ON (iv.idproduto = p.idproduto)
GROUP BY p.produto
ORDER BY total DESC;

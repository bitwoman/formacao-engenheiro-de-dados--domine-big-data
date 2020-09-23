#Exercício 1 - Crie a seguinte consulta:
#- Compras de um cliente específico;
#- Campos: nome do cliente, produto, quantidade, valor total, data da venda;
#- Filtros: Código do cliente.

SELECT c.cliente, 
       p.produto, 
       iv.quantidade, 
       iv.valortotal, 
       v.data 
FROM relacional.Vendas AS v
INNER JOIN relacional.clientes AS c ON (c.idcliente = v.idcliente) 
INNER JOIN relacional.ItensVenda AS iv ON (iv.idvenda = v.idvenda) 
INNER JOIN relacional.produtos AS p ON (p.idproduto = iv.idproduto)
WHERE c.idcliente = 1;

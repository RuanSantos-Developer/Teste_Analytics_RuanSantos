
-- Listar o nome do produto, categoria e a soma total de vendas (Quantidade * Preço) para cada produto. Ordene o resultado pelo valor total de vendas em ordem decrescente.

SELECT 
    nome AS nome_produto,
    categoria AS categoria_produto,
    total_vendas AS valor_total_vendas
FROM 
    data_clean
ORDER BY
     valor_total_vendas DESC;


--Identificar os produtos que venderam menos no mês de junho de 2023. 

SELECT 
    nome AS nome_produto,
    categoria AS categoria_produto,
    SUM(quantidade) AS total_quantidade_vendida
FROM 
    data_clean
WHERE 
    data_venda BETWEEN '2023-06-01' AND '2023-06-30'
GROUP BY 
    nome_produto, categoria_produto
ORDER BY 
    total_quantidade_vendida ASC
LIMIT 10;
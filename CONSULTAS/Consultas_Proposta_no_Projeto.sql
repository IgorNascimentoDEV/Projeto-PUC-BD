/*
	Pelo menos 1 consulta com JUNÇÃO MÚLTIPLA (junção de 3 ou mais tabelas usando join ou inner join)
*/

SELECT 
	t1.Funcionario_cpf, 
	t2.nome AS Nome_Funcionario,
	t1.Cliente_cpf, 
	t3.cpf AS Nome_Cliente,
	t4.forma_pagamento, 
	t1.Data_hora,
	t6.descricao, 
	t6.quantidade, 
	t6.preco
FROM veterinaria.Venda t1

LEFT JOIN veterinaria.funcionario t2 ON
	t1.Funcionario_cpf = t2.cpf

LEFT JOIN veterinaria.Cliente t3 ON
	t1.Cliente_cpf = t3.cpf

LEFT JOIN veterinaria.pagamento t4 ON
	t1.pagamento_id = t4.id

LEFT JOIN veterinaria.itens_venda t5 ON 
	t1.id = t5.Venda_idVenda

LEFT JOIN veterinaria.Produto t6 ON
	t5.Produto_id = t6.id;
    
    
/* ==================================================================== */


/*
	pelo menos 1 consulta com a cláusula GROUP BY (com ou sem o HAVING)
*/

SELECT 
	t2.nome AS Nome_Funcionario,
	t4.forma_pagamento,  
	SUM(t6.quantidade) AS Qdte_Total, 
	(SUM(t6.quantidade) * SUM(t6.preco)) AS Valor_Total
FROM veterinaria.Venda t1

LEFT JOIN veterinaria.funcionario t2 ON
	t1.Funcionario_cpf = t2.cpf

LEFT JOIN veterinaria.Cliente t3 ON
	t1.Cliente_cpf = t3.cpf

LEFT JOIN veterinaria.pagamento t4 ON
	t1.pagamento_id = t4.id

LEFT JOIN veterinaria.itens_venda t5 ON 
	t1.id = t5.Venda_idVenda

LEFT JOIN veterinaria.Produto t6 ON
	t5.Produto_id = t6.id

GROUP BY
	t1.Funcionario_cpf, 
	t4.forma_pagamento;
    
    
/* ==================================================================== */

/*
	Pelo menos 1 consulta que possua a cláusula ORDER BY.
*/


SELECT 
	t1.Cliente_cpf, 
	t3.cpf AS Nome_Cliente, 
	SUM(t6.quantidade) AS Qdte_Total, 
	(SUM(t6.quantidade) * SUM(t6.preco)) AS Valor_Total
FROM veterinaria.Venda t1

LEFT JOIN veterinaria.funcionario t2 ON
	t1.Funcionario_cpf = t2.cpf

LEFT JOIN veterinaria.Cliente t3 ON
	t1.Cliente_cpf = t3.cpf

LEFT JOIN veterinaria.pagamento t4 ON
	t1.pagamento_id = t4.id

LEFT JOIN veterinaria.itens_venda t5 ON 
	t1.id = t5.Venda_idVenda

LEFT JOIN veterinaria.Produto t6 ON
	t5.Produto_id = t6.id

GROUP BY 
	t1.Cliente_cpf, 
	t3.cpf

ORDER BY 
	Valor_Total DESC;
    
    
/* ==================================================================== */

/* 
	Pelo menos 1 consulta usando o operador LIKE
*/

SELECT 
	t1.nome AS Nome_Animal, 
	t1.especie, 
	t1.idade, 
	t1.peso, 
	t2.nome AS Nome_Cliente
FROM veterinaria.Animal t1

LEFT JOIN veterinaria.Cliente t2 ON
	t1.Cliente_cpf = t2.cpf

WHERE -- Filtrar nome de animal que termine com a letra "o"
	t1.nome LIKE '%o';


-- Pelo menos 2 consultas aninhadas (subconsultas) usando os operadores EXIST, NOT EXIST, IN ou NOT IN

-- Consulta 1: Selecionar funcionários que tenham realizado vendas
SELECT nome
FROM veterinaria.funcionario
WHERE EXISTS (
    SELECT 1
    FROM veterinaria.Venda
    WHERE Venda.Funcionario_cpf = funcionario.cpf
);

-- Consulta 2: Selecionar produtos que nunca foram vendidos
-- Consulta 2: Selecionar produtos que nunca foram vendidos
SELECT id, descricao
FROM veterinaria.Produto AS P
WHERE NOT EXISTS (
    SELECT 1
    FROM veterinaria.itens_venda AS IV
    WHERE IV.Produto_id = P.id
);


-- Pelo menos 1 consulta externa (usando LEFT, RIGHT ou FULL OUTER JOIN)

-- Consulta externa: Mostrar todas as vendas, mesmo aquelas que não possuem itens
SELECT V.id, V.Funcionario_cpf, V.Cliente_cpf, V.pagamento_id, V.Data_hora, IV.`servico-produto_codigo`, IV.Produto_id
FROM veterinaria.Venda V
LEFT JOIN veterinaria.itens_venda IV ON V.id = IV.Venda_idVenda;

-- Pelo menos 1 consulta contendo 2 funções de agregação (count, sum, max, min, avg)


-- Consulta: Contar o número total de vendas realizadas por cada cliente
SELECT C.cpf AS Cliente_cpf, 
       C.nome AS Nome_Cliente,
       COUNT(*) AS Total_Vendas
FROM veterinaria.Venda V
JOIN veterinaria.Cliente C ON V.Cliente_cpf = C.cpf
GROUP BY Cliente_cpf, Nome_Cliente;



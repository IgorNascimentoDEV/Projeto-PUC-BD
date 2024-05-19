-- populando tabela pagamento

INSERT INTO veterinaria.pagamento (id, forma_pagamento) VALUES
(1, 'Cartão de Crédito'),
(2, 'Cartão de Débito'),
(3, 'Dinheiro'),
(4, 'Pix');

-- populando tabela venda

INSERT INTO veterinaria.Venda (id, Funcionario_cpf, Cliente_cpf, pagamento_id, Data_hora) VALUES
(1, 123456789, '12057103021', 1, '2023-05-19 10:30:00'),
(2, 987654321, '12057193021', 2, '2023-05-19 11:00:00'),
(3, 456789123, '14719263038', 3, '2023-05-19 11:30:00'),
(4, 789123456, '18315064088', 4, '2023-05-19 12:00:00');

-- populando tabela itens_vendas

INSERT INTO veterinaria.itens_venda (Venda_idVenda, `servico-produto_codigo`, Produto_id) VALUES
(1, NULL, 1),
(2, 1, NULL),
(3, NULL, 2),
(4, 2, NULL);

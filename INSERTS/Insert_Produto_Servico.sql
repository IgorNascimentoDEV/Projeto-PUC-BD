-- populando tabela servico

INSERT INTO veterinaria.Servico (id, descricao, preco, Funcionario_cpf) VALUES
(1, 'Consulta Veterinária', 100.00, 123456789),
(2, 'Vacinação', 50.00, 123456789),
(3, 'Banho e Tosa', 70.00, 456789123),
(4, 'Exame de Sangue', 150.00, 789123456);

-- populando tabela produto
INSERT INTO veterinaria.Produto (id, descricao, quantidade, preco) VALUES
(1, 'Ração Canina', 50, '100.00'),
(2, 'Ração Felina', 30, '80.00'),
(3, 'Medicamento A', 20, '150.00'),
(4, 'Brinquedo para Cães', 40, '30.00');

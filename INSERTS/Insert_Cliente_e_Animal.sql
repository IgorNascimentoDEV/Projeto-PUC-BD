/*
	os cpf foram gerados de forma aleatória no seguinte site: https://www.4devs.com.br/gerador_de_cpf
	os nomes dos clientes também foram gerados pelo site: https://www.4devs.com.br/gerador_de_nomes
*/
-- populando tabela de cliente
INSERT INTO veterinaria.Cliente (cpf, nome, fone, email) VALUES
('12057103021', 'Bumbwe', '(11) 99876-5432', 'bumbwe@email.com'),
('12057193021', 'Forond', '(21) 99456-7821', 'forond@email.com'),
('14719263038', 'Reaion', '(31) 99234-5678', 'reaion@email.com'),
('18315064088', 'Geurt', '(41) 99123-4567', 'geurt@email.com'),
('66739827052', 'Irloaim', '(51) 99765-4321', 'irloaim@email.com'),
('79601875093', 'Nusriogu', '(61) 99654-3210', 'nusriogu@email.com'),
('37861896099', 'Arangaxu', '(71) 99543-2109', 'arangaxu@email.com'),
('94136733062', 'Nuawuidir', '(81) 99321-0987', 'nuawuidir@email.com'),
('57439573048', 'Zavukas', '(91) 99432-1098', 'zavukas@email.com'),
('11871755018', 'Yatudiotub', '(48) 99234-7654', 'yatudiotub@email.com');

-- populando tabela de animais 
INSERT INTO `veterinaria`.`Animal` (`id`, `nome`, `especie`, `idade`, `peso`, `Cliente_cpf`) VALUES
(1, 'Rex', 'Cachorro', 5, 20.5, '12057103021'),
(2, 'Dory', 'Peixe', 3, 0.1, '12057193021'),
(3, 'Bolinha', 'Cachorro', 2, 10.4, '12057103021'),
(4, 'Pipoca', 'Papagaio', 1, 0.9, '12057103021'),
(5, 'Luna', 'Cachorro', 4, 15.6, '14719263038'),
(6, 'Mel', 'Gato', 6, 5.3, '66739827052'),
(7, 'Blu', 'Arara', 3, 1.2, '18315064088'),  -- Corrigido Cliente_cpf
(8, 'Felix', 'Gato', 2, 4.1, '14719263038'), -- Corrigido Cliente_cpf
(9, 'Apolo', 'Cachorro', 7, 30.0, '66739827052'),
(10, 'Simba', 'Gato', 5, 6.5, '79601875093'),
(11, 'Zoe', 'Coelho', 8, 4.4, '79601875093'),
(12, 'Olaf', 'Furão', 4, 1.7, '37861896099'),
(13, 'Lola', 'Cachorro', 6, 12.2, '37861896099'),
(14, 'Bella', 'Gato', 7, 4.7, '94136733062'),
(15, 'Max', 'Cachorro', 9, 33.3, '57439573048'),
(16, 'Tom', 'Tucano', 10, 1.7, '57439573048'),
(17, 'Amora', 'Cachorro', 11, 24.4, '11871755018'),
(18, 'Jerry', 'Rato', 12, 0.1, '11871755018');






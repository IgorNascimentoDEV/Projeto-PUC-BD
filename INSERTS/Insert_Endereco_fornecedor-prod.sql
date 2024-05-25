-- Endereços para fornecedores
INSERT INTO `veterinaria`.`Endereco` (`uf`, `cep`, `numero`, `bairro`, `Cliente_cpf`, `Fornecedor_id`)
VALUES 
('SP', '01234-567', 123, 'Centro', NULL, '98.765.432/0001-99'),
('RJ', '98765-432', 456, 'Copacabana', NULL, '12.345.678/0001-00'),
('MG', '54321-098', 789, 'Industrial', NULL, '11.223.344/0001-11'),
('SP', '13579-246', 987, 'Comercial', NULL, '55.667.778/0001-22');

-- Endereços para clientes
INSERT INTO `veterinaria`.`Endereco` (`uf`, `cep`, `numero`, `bairro`, `Cliente_cpf`, `Fornecedor_id`)
VALUES 
('SP', '12345-678', 321, 'Jardim Paulista', '12057103021', NULL),
('RJ', '23456-789', 654, 'Copacabana', '12057193021', NULL),
('MG', '34567-890', 987, 'Centro', '14719263038', NULL),
('PR', '45678-901', 123, 'Batel', '18315064088', NULL),
('RS', '56789-012', 456, 'Moinhos de Vento', '66739827052', NULL),
('DF', '67890-123', 789, 'Asa Sul', '79601875093', NULL),
('BA', '78901-234', 987, 'Barra', '37861896099', NULL),
('PE', '89012-345', 123, 'Boa Viagem', '94136733062', NULL),
('PA', '90123-456', 456, 'Nazaré', '57439573048', NULL),
('SC', '01234-567', 789, 'Centro', '11871755018', NULL),
('SP', '54321-098', 321, 'Moema', '12057103122', NULL),
('RJ', '65432-109', 654, 'Leblon', '12057193123', NULL),
('MG', '76543-210', 987, 'Savassi', '14719263124', NULL),
('PR', '87654-321', 123, 'Centro', '18315064125', NULL),
('RS', '98765-432', 456, 'Moinhos de Vento', '66739827126', NULL),
('DF', '09876-543', 789, 'Asa Sul', '79601875127', NULL),
('BA', '98765-654', 987, 'Barra', '37861896128', NULL),
('PE', '87654-321', 123, 'Boa Viagem', '94136733129', NULL),
('PA', '76543-210', 456, 'Nazaré', '57439573130', NULL),
('SC', '65432-109', 789, 'Centro', '11871755131', NULL),
('SP', '54321-098', 321, 'Moema', '13047103222', NULL),
('RJ', '65432-109', 654, 'Leblon', '14057193223', NULL),
('MG', '76543-210', 987, 'Savassi', '15719263324', NULL),
('PR', '87654-321', 123, 'Centro', '18315064225', NULL),
('RS', '98765-432', 456, 'Moinhos de Vento', '66739827226', NULL),
('DF', '09876-543', 789, 'Asa Sul', '79601875227', NULL),
('BA', '98765-654', 987, 'Barra', '37861896228', NULL),
('PE', '87654-321', 123, 'Boa Viagem', '94136733229', NULL),
('PA', '76543-210', 456, 'Nazaré', '57439573230', NULL),
('SC', '65432-109', 789, 'Centro', '11871755231', NULL),
('SP', '54321-098', 321, 'Moema', '13047103332', NULL),
('RJ', '65432-109', 654, 'Leblon', '14057193333', NULL),
('MG', '76543-210', 987, 'Savassi', '15719263434', NULL),
('PR', '87654-321', 123, 'Centro', '18315064335', NULL),
('RS', '98765-432', 456, 'Moinhos de Vento', '66739827336', NULL),
('DF', '09876-543', 789, 'Asa Sul', '79601875337', NULL),
('BA', '98765-654', 987, 'Barra', '37861896338', NULL),
('PE', '87654-321', 123, 'Boa Viagem', '94136733339', NULL),
('PA', '76543-210', 456, 'Nazaré', '57439573340', NULL),
('SC', '65432-109', 789, 'Centro', '11871755341', NULL);


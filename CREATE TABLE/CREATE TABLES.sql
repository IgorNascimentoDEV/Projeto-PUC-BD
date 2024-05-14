CREATE DATABASE veterinaria;

USE veterinaria;

CREATE TABLE IF NOT EXISTS `veterinaria`.`Cliente` (
  `cpf` VARCHAR(16) PRIMARY KEY NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `fone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL);


-- -----------------------------------------------------
-- Table `veterinaria`.`Animal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `veterinaria`.`Animal` (
  `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(20) NOT NULL,
  `especie` VARCHAR(45) NOT NULL,
  `idade` INT NULL,
  `peso` FLOAT NULL,
  `Cliente_cpf` VARCHAR(16) NOT NULL,
    FOREIGN KEY (`Cliente_cpf`) REFERENCES `veterinaria`.`Cliente` (`cpf`));

-- -----------------------------------------------------
-- Table `veterinaria`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `veterinaria`.`Funcionario` (
  `cpf` INT PRIMARY KEY NOT NULL,
  `nome` VARCHAR(45) NULL,
  `funcao` VARCHAR(45) NULL);


-- -----------------------------------------------------
-- Table `veterinaria`.`pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `veterinaria`.`pagamento` (
  `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `forma_pagamento` VARCHAR(45) NULL);


-- -----------------------------------------------------
-- Table `veterinaria`.`Venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `veterinaria`.`Venda` (
  `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Funcionario_cpf` INT NOT NULL,
  `Cliente_cpf` VARCHAR(16) NOT NULL,
  `pagamento_id` INT NOT NULL,
  `Data_hora` DATETIME NOT NULL,
   FOREIGN KEY (`Funcionario_cpf`) REFERENCES `veterinaria`.`Funcionario` (`cpf`),
   FOREIGN KEY (`Cliente_cpf`) REFERENCES `veterinaria`.`Cliente` (`cpf`),
   FOREIGN KEY (`pagamento_id`) REFERENCES `veterinaria`.`pagamento` (`id`));


-- -----------------------------------------------------
-- Table `veterinaria`.`Servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `veterinaria`.`Servico` (
  `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `preco` DECIMAL NOT NULL,
  `Funcionario_cpf` INT NOT NULL,
    FOREIGN KEY (`Funcionario_cpf`) REFERENCES `veterinaria`.`Funcionario` (`cpf`));


-- -----------------------------------------------------
-- Table `veterinaria`.`Fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `veterinaria`.`Fornecedor` (
  `CNPJ` VARCHAR(20) PRIMARY KEY NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `fone` VARCHAR(15) NOT NULL,
  `email` VARCHAR(45) NOT NULL);


-- -----------------------------------------------------
-- Table `veterinaria`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `veterinaria`.`Endereco` (
  `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `uf` VARCHAR(2) NOT NULL,
  `cep` VARCHAR(9) NOT NULL,
  `numero` INT NOT NULL,
  `bairro` VARCHAR(45) NULL,
  `Cliente_cpf` VARCHAR(16) NULL,
  `Fornecedor_id` VARCHAR(20) NULL,
   FOREIGN KEY (`Cliente_cpf`) REFERENCES `veterinaria`.`Cliente` (`cpf`),
   FOREIGN KEY (`Fornecedor_id`) REFERENCES `veterinaria`.`Fornecedor` (`CNPJ`));



-- -----------------------------------------------------
-- Table `veterinaria`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `veterinaria`.`Produto` (
  `id` INT PRIMARY KEY NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `quantidade` INT NOT NULL,
  `preco` VARCHAR(45) NULL);


-- -----------------------------------------------------
-- Table `veterinaria`.`itens_venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `veterinaria`.`itens_venda` (
  `Venda_idVenda` INT PRIMARY KEY NOT NULL,
  `servico-produto_codigo` INT NULL,
  `Produto_id` INT NULL,
    FOREIGN KEY (`Venda_idVenda`) REFERENCES `veterinaria`.`Venda` (`id`),
    FOREIGN KEY (`servico-produto_codigo`) REFERENCES `veterinaria`.`Servico` (`id`),
    FOREIGN KEY (`Produto_id`) REFERENCES `veterinaria`.`Produto` (`id`));


-- -----------------------------------------------------
-- Table `veterinaria`.`Fornece_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `veterinaria`.`Fornece_produto` (
  `Fornecedor_id` VARCHAR(20) PRIMARY KEY NOT NULL,
  `Produto_id` INT NOT NULL,
    FOREIGN KEY (`Fornecedor_id`) REFERENCES `veterinaria`.`Fornecedor` (`CNPJ`),
    FOREIGN KEY (`Produto_id`) REFERENCES `veterinaria`.`Produto` (`id`));


-- -----------------------------------------------------
-- Table `veterinaria`.`Cliente_Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `veterinaria`.`Cliente_Produto` (
  `Cliente_cpf` VARCHAR(16) NULL,
  `Produto_id` INT NULL,
    FOREIGN KEY (`Cliente_cpf`) REFERENCES `veterinaria`.`Cliente` (`cpf`),
    FOREIGN KEY (`Produto_id`) REFERENCES `veterinaria`.`Produto` (`id`));

-- -----------------------------------------------------
-- Table `veterinaria`.`Cliente_Servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `veterinaria`.`Cliente_Servico` (
  `Cliente_cpf` VARCHAR(16) NULL,
  `Servico_id` INT NULL,
    FOREIGN KEY (`Cliente_cpf`) REFERENCES `veterinaria`.`Cliente` (`cpf`),
    FOREIGN KEY (`Servico_id`) REFERENCES `veterinaria`.`Servico` (`id`));
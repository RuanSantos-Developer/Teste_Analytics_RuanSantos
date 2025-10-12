-- Criação do banco de dados para testes em SGBD de preferência (MySQL, PostgreSQL, etc.)

CREATE DATABASE IF NOT EXISTS vendas_db;
USE vendas_db;

--- Criação da tabela data_clean com os dados fornecidos

CREATE TABLE IF NOT EXISTS data_clean (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    categoria VARCHAR(100),
    quantidade INT,
    pagamento VARCHAR(50),
    preco DECIMAL(10, 2),
    data_venda DATE
);

--- Inserção dos dados na tabela data_clean

INSERT INTO data_clean (id, data_venda, nome, categoria, quantidade, pagamento, preco) VALUES
(1, '2023-07-09', 'Parafusadeira', 'Ferramentas', 450, 'Pix', 429.00),
(2, '2023-11-22', 'Serrote', 'Ferramentas', 266, 'Débito', 64.90),
(3, '2023-02-10', 'Regador', 'Jardinagem', 184, 'Débito', 39.90),
(4, '2023-05-27', 'Cimento', 'Construção e Estrutura', 491, 'Pix', 39.90),
(5, '2023-07-23', 'Chave de Fenda', 'Ferramentas', 315, 'Transferência Bancária', 24.50),
(6, '2023-12-16', 'Máscara Respiratória', 'Segurança e EPI', 205, 'Débito', 29.90),
(7, '2023-11-13', 'Pá', 'Jardinagem', 389, 'Dinheiro', 74.90),
(8, '2023-08-24', 'Capacete', 'Segurança e EPI', 456, 'Dinheiro', 49.90),
(9, '2023-05-11', 'Disjuntor', 'Elétrica', 418, 'Carteira Digital', 45.00),
(10, '2023-03-14', 'Argamassa', 'Construção e Estrutura', 179, 'Transferência Bancária', 24.90),
(11, '2023-02-02', 'Enxada', 'Jardinagem', 50, 'Transferência Bancária', 89.90),
(12, '2023-10-15', 'Verniz', 'Tintas e Acabamento', 251, 'Boleto', 139.90),
(13, '2023-11-08', 'Registro de Água', 'Hidráulica', 108, 'Dinheiro', 54.90),
(14, '2023-10-06', 'Verniz', 'Tintas e Acabamento', 192, 'Carteira Digital', 139.90),
(15, '2023-04-09', 'Capacete', 'Segurança e EPI', 272, 'Crédito', 49.90),
(16, '2023-03-01', 'Tinta Esmalte', 'Tintas e Acabamento', 242, 'Transferência Bancária', 229.00),
(17, '2023-12-02', 'Lixa', 'Tintas e Acabamento', 129, 'Débito', 4.90),
(18, '2023-10-14', 'Bomba de água', 'Hidráulica', 341, 'Crédito', 899.00),
(19, '2023-12-21', 'Botina', 'Segurança e EPI', 148, 'Carteira Digital', 149.00),
(20, '2023-05-11', 'Registro de Água', 'Hidráulica', 38, 'Carteira Digital', 54.90),
(21, '2023-04-25', 'Alicate', 'Ferramentas', 183, 'Carteira Digital', 41.90),
(22, '2023-05-31', 'Alicate', 'Ferramentas', 394, 'Crédito', 41.90),
(23, '2023-08-04', 'Selador', 'Tintas e Acabamento', 257, 'Transferência Bancária', 99.90),
(24, '2023-05-01', 'Lanterna', 'Elétrica', 286, 'Carteira Digital', 59.90),
(25, '2023-06-26', 'Válvula de Descarga', 'Hidráulica', 3, 'Carteira Digital', 119.00),
(26, '2023-09-16', 'Colete Reflexivo', 'Segurança e EPI', 288, 'Débito', 39.90),
(27, '2023-04-18', 'Interruptor', 'Elétrica', 140, 'Carteira Digital', 12.90),
(28, '2023-09-02', 'Tijolo', 'Construção e Estrutura', 236, 'Carteira Digital', 2.00),
(29, '2023-06-18', 'Argamassa', 'Construção e Estrutura', 179, 'Crédito', 24.90),
(30, '2023-07-20', 'Trena', 'Ferramentas', 210, 'Transferência Bancária', 32.00),
(31, '2023-07-24', 'Capacete', 'Segurança e EPI', 414, 'Carteira Digital', 49.90),
(32, '2023-07-13', 'Registro de Água', 'Hidráulica', 27, 'Transferência Bancária', 54.90),
(33, '2023-09-06', 'Registro de Água', 'Hidráulica', 42, 'Débito', 54.90),
(34, '2023-03-22', 'Mangueira Jardim', 'Jardinagem', 435, 'Débito', 69.90),
(35, '2023-04-03', 'Parafusadeira', 'Ferramentas', 32, 'Crédito', 429.00),
(36, '2023-01-24', 'Alicate', 'Ferramentas', 257, 'Débito', 41.90),
(37, '2023-04-28', 'Tomada', 'Elétrica', 191, 'Transferência Bancária', 9.90),
(38, '2023-03-05', 'Regador', 'Jardinagem', 46, 'Crédito', 39.90),
(39, '2023-01-17', 'Máscara Respiratória', 'Segurança e EPI', 402, 'Débito', 29.90),
(40, '2023-03-03', 'Tinta Acrílica', 'Tintas e Acabamento', 451, 'Carteira Digital', 249.00),
(41, '2023-07-29', 'Cimento', 'Construção e Estrutura', 161, 'Dinheiro', 39.90),
(42, '2023-06-10', 'Lâmpada LED', 'Categoria desconhecida', 176, 'Carteira Digital', 14.90),
(43, '2023-01-17', 'Cano PVC', 'Hidráulica', 314, 'Pix', 29.90),
(44, '2023-06-08', 'Parafusadeira', 'Ferramentas', 492, 'Crédito', 429.00),
(45, '2023-11-09', 'Rolo de Pintura', 'Tintas e Acabamento', 56, 'Transferência Bancária', 24.90),
(46, '2023-05-21', 'Lanterna', 'Elétrica', 409, 'Boleto', 59.90),
(47, '2023-02-28', 'Bloco de Concreto', 'Categoria desconhecida', 312, 'Boleto', 6.00),
(48, '2023-08-03', 'Carrinho de Mão', 'Jardinagem', 226, 'Boleto', 359.00),
(49, '2023-12-25', 'Rolo de Pintura', 'Tintas e Acabamento', 402, 'Carteira Digital', 24.90),
(50, '2023-05-08', 'Óculos de Proteção', 'Segurança e EPI', 437, 'Carteira Digital', 24.90);

-- Adicionar coluna total_vendas que calcula a soma total de vendas (Quantidade * Preço)

ALTER TABLE data_clean
ADD COLUMN total_vendas AS (quantidade * preco);
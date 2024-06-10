INSERT INTO UNIDADE (NOME, CLASSE, RANGE_NASCIMENTO) VALUES
	('Executiva', 'Diretoria', '[0001-01-01,2008-07-01]'),
    ('Gato do Mato', 'Amigo', '[2012-07-01,2013-06-30]'),
    ('Gato do Deserto', 'Amigo', '[2012-07-01,2013-06-30]'),
    ('Jaguatirica', 'Companheiro', '[2012-07-01,2013-06-30]'),
    ('Oncilla', 'Companheiro', '[2012-07-01,2013-06-30]'),
    ('Lince', 'Pesquisador', '[2011-07-01,2012-06-30]'),
    ('Caracal', 'Pesquisador', '[2011-07-01,2012-06-30]'),
    ('Suçuarana', 'Pioneiro', '[2010-07-01,2011-06-30]'),
    ('Chita', 'Pioneiro', '[2010-07-01,2011-06-30]'),
    ('Onça Pintada', 'Excursionista', '[2009-07-01,2010-06-30]'),
    ('Onça Preta', 'Excursionista', '[2009-07-01,2010-06-30]'),
    ('Tigre', 'Guia', '[2008-07-01,2009-06-30]'),
    ('Jaguar', 'Amigo', '[2012-07-01,2013-06-30]'),
    ('Jaguarundi', 'Amigo', '[2012-07-01,2013-06-30]'),
    ('Pantera Negra', 'Companheiro', '[2012-07-01,2013-06-30]'),
    ('Pantera Nebulosa', 'Companheiro', '[2012-07-01,2013-06-30]'),
    ('Guepardo', 'Pesquisador', '[2011-07-01,2012-06-30]'),
    ('Guepardo Real', 'Pesquisador', '[2011-07-01,2012-06-30]'),
    ('Leopardo das Neves', 'Pioneiro', '[2010-07-01,2011-06-30]'),
    ('Leopardo', 'Pioneiro', '[2010-07-01,2011-06-30]'),
    ('Puma Selvagem', 'Excursionista', '[2009-07-01,2010-06-30]'),
    ('Leão', 'Guia', '[2008-07-01,2009-06-30]');
	
INSERT INTO membro (NOME, SEXO, DATA_NASCIMENTO, CERTIDAO_NASCIMENTO, RG, ORG_EXPEDIDOR, CPF, TELEFONE, EMAIL) VALUES
    ('Maria Silva', 'F', '1990-05-15', 'ABC123456789', '123456789', 'SSP', '12345678901', '123456789', 'maria@example.com'),
    ('João Santos', 'M', '1985-10-20', 'DEF987654321', '987654321', 'SSP', '98765432109', '987654321', 'joao@example.com'),
    ('Ana Souza', 'F', '1995-02-28', 'GHI246813579', '246813579', 'SSP', '24681357902', '246813579', 'ana@example.com'),
    ('Pedro Oliveira', 'M', '1980-12-10', 'JKL135792468', '135792468', 'SSP', '13579246803', '135792468', 'pedro@example.com'),
    ('Juliana Pereira', 'F', '1988-09-03', 'MNO579246813', '579246813', 'SSP', '57924681304', '579246813', 'juliana@example.com'),
    ('Lucas Ferreira', 'M', '1992-03-25', 'PQR468135792', '468135792', 'SSP', '46813579205', '468135792', 'lucas@example.com'),
    ('Carolina Costa', 'F', '1983-07-12', 'STU357924681', '357924681', 'SSP', '35792468106', '357924681', 'carolina@example.com'),
    ('Felipe Martins', 'M', '1998-11-08', 'VWX913824675', '913824675', 'SSP', '91382467507', '913824675', 'felipe@example.com'),
    ('Aline Lima', 'F', '1993-06-30', 'YZA792468135', '792468135', 'SSP', '79246813508', '792468135', 'aline@example.com'),
    ('Rafaela Santos', 'F', '1987-04-17', 'BCD246813579', '346813579', 'SSP', '24681357909', '246813579', 'rafaela@example.com');

-- Dados para a tabela RESPONSAVEL usando os membros fornecidos
INSERT INTO RESPONSAVEL (NOME, SEXO, DATA_NASCIMENTO, CERTIDAO_NASCIMENTO, RG, ORG_EXPEDIDOR, CPF, TELEFONE, EMAIL) VALUES
    ('Maria Silva', 'F', '1990-05-15', 'ABC123456789', '123456789', 'SSP', '12345678901', '123456789', 'maria@example.com'),
    ('João Santos', 'M', '1985-10-20', 'DEF987654321', '987654321', 'SSP', '98765432109', '987654321', 'joao@example.com'),
    ('Ana Souza', 'F', '1995-02-28', 'GHI246813579', '246813579', 'SSP', '24681357902', '246813579', 'ana@example.com'),
    ('Pedro Oliveira', 'M', '1980-12-10', 'JKL135792468', '135792468', 'SSP', '13579246803', '135792468', 'pedro@example.com'),
    ('Juliana Pereira', 'F', '1988-09-03', 'MNO579246813', '579246813', 'SSP', '57924681304', '579246813', 'juliana@example.com'),
    ('Lucas Ferreira', 'M', '1992-03-25', 'PQR468135792', '468135792', 'SSP', '46813579205', '468135792', 'lucas@example.com'),
    ('Carolina Costa', 'F', '1983-07-12', 'STU357924681', '357924681', 'SSP', '35792468106', '357924681', 'carolina@example.com'),
    ('Felipe Martins', 'M', '1998-11-08', 'VWX913824675', '913824675', 'SSP', '91382467507', '913824675', 'felipe@example.com'),
    ('Aline Lima', 'F', '1993-06-30', 'YZA792468135', '792468135', 'SSP', '79246813508', '792468135', 'aline@example.com'),
    ('Rafaela Santos', 'F', '1987-04-17', 'BCD246813579', '446813579', 'SSP', '24681357909', '246813579', 'rafaela@example.com');


-- Dados para a tabela MEMBRO_RESPONSAVEL usando os membros fornecidos e os IDs atualizados dos responsáveis
INSERT INTO MEMBRO_RESPONSAVEL (membro_id, responsavel_id) VALUES
    (1, 1), -- Maria Silva é responsável por ela mesma
    (2, 2), -- João Santos é responsável por ele mesmo
    (5,8)

-- Dados para a tabela SAUDE usando os membros fornecidos
INSERT INTO SAUDE (membro_id, SUS, TIPO_SANGUINEO, PESO, ALTURA, ALERGIA, CIRURGIA) VALUES
    (1, '123456789012345', 'A+', 65.5, 1.70, false, false),
    (2, '234567890123456', 'O-', 75.2, 1.80, true, false),
    (3, '345678901234567', 'B+', 55.8, 1.65, false, true),
    (4, '456789012345678', 'AB-', 80.0, 1.75, true, true),
    (5, '567890123456789', 'A+', 70.0, 1.72, false, false),
    (6, '678901234567890', 'O+', 68.5, 1.78, true, false),
    (7, '789012345678901', 'B-', 60.3, 1.67, false, true),
    (8, '890123456789012', 'A-', 72.1, 1.82, true, true),
    (9, '901234567890123', 'AB+', 64.7, 1.69, false, false),
    (10, '012345678901234', 'O+', 78.9, 1.76, true, false);
	
-- Dados para a tabela PLANO_SAUDE
INSERT INTO PLANO_SAUDE (saude_id, CONVENIO, CATEGORIA, CARTEIRA) VALUES
    (1, 'Unimed', 'Premium', '1234567890'),
    (2, 'SulAmérica', 'Básico', '2345678901'),
    (3, 'Amil', 'Executivo', '3456789012'),
    (4, 'Bradesco Saúde', 'Padrão', '4567890123'),
    (5, 'Golden Cross', 'Especial', '5678901234'),
    (6, 'NotreDame Intermédica', 'Completo', '6789012345'),
    (7, 'Hapvida', 'Essencial', '7890123456'),
    (8, 'Green Line', 'Familiar', '8901234567'),
    (9, 'Porto Seguro', 'Premium', '9012345678'),
    (10, 'Amil Dental', 'Individual', '0123456789');

-- Dados para a tabela ALERGIA
INSERT INTO ALERGIA (saude_id, TIPO, DESCRICAO, RECOMENDACAO) VALUES
    (2, 'Medicamentosa', 'Reação alérgica a amoxicilina', 'Evitar o uso de antibióticos da classe das penicilinas'),
    (4, 'Alimentar', 'Alergia a camarão', 'Evitar o consumo de frutos do mar'),
    (6, 'Respiratória', 'Rinite alérgica', 'Evitar contato com poeira e ácaros'),
    (8, 'Medicamentosa', 'Reação alérgica a dipirona', 'Utilizar analgésicos alternativos'),
    (10, 'Alimentar', 'Alergia a amendoim', 'Evitar o consumo de alimentos que contenham amendoim');

-- Dados para a tabela CIRURGIA
INSERT INTO CIRURGIA (saude_id, TIPO, DESCRICAO, DATA) VALUES
    (3, 'Cirurgia Cardíaca', 'Implante de marca-passo', '2022-04-10'),
    (5, 'Cirurgia Oftalmológica', 'Cirurgia de catarata', '2021-11-25'),
    (7, 'Cirurgia Plástica', 'Rinoplastia', '2023-07-15'),
    (9, 'Cirurgia Bucomaxilofacial', 'Extração de siso', '2022-09-30');

-- Dados para a tabela endereco
INSERT INTO endereco (membro_id, CEP, rua, BAIRRO, CIDADE, ESTADO, PAIS, NUMERO, COMPLEMENTO) VALUES
    (1, '12345678', 'Rua da Paz', 'Centro', 'São Paulo', 'SP', 'Brasil', 100, 'Apto 101'),
    (2, '23456789', 'Avenida Brasil', 'Jardim América', 'Rio de Janeiro', 'RJ', 'Brasil', 200, 'Casa 201'),
    (3, '34567890', 'Rua das Flores', 'Boa Vista', 'Curitiba', 'PR', 'Brasil', 300, 'Bloco B'),
    (4, '45678901', 'Rua do Comércio', 'Centro', 'Belo Horizonte', 'MG', 'Brasil', 400, 'Loja 401'),
    (5, '56789012', 'Avenida Paulista', 'Jardins', 'São Paulo', 'SP', 'Brasil', 500, NULL),
    (6, '67890123', 'Rua da Praia', 'Ponta Negra', 'Natal', 'RN', 'Brasil', 600, 'Casa 601'),
    (7, '78901234', 'Rua da Liberdade', 'Centro', 'Porto Alegre', 'RS', 'Brasil', 700, 'Apto 701'),
    (8, '89012345', 'Avenida das Palmeiras', 'Alphaville', 'Barueri', 'SP', 'Brasil', 800, NULL),
    (9, '90123456', 'Rua dos Girassóis', 'Jardim Botânico', 'Brasília', 'DF', 'Brasil', 900, 'Casa 901'),
    (10, '01234567', 'Rua das Castanheiras', 'Centro', 'Florianópolis', 'SC', 'Brasil', 1000, NULL);

select * from unidade

-- Dados para a tabela MEMBRO_UNIDADE
INSERT INTO MEMBRO_UNIDADE (membro_id, unidade_id, CARGO) VALUES
    (1, 9, 'Desbravador'),
    (2, 2, 'Desbravador'),
    (3, 3, 'Desbravador'),
    (4, 4, 'Desbravador'),
    (5, 5, 'Desbravador'),
    (5, 9, 'Conselheiro'),
    (6, 1, 'Tesoureira'),
    (7, 1, 'Secretaria'),
    (8, 1, 'Diretor Associado'),
    (9, 1, 'Diretor');

-- Dados para a tabela SOLICITACAO
INSERT INTO SOLICITACAO (membro_id, REUNIAO, STATUS) VALUES
    (5, '2024-05-15', 'pendente'),
    (5, '2024-05-16', 'enviado'),
    (5, '2024-05-17', 'devolvido'),
    (6, '2024-05-18', 'pendente'),
    (8, '2024-05-19', 'enviado'),
    (5, '2024-05-20', 'devolvido'),
    (6, '2024-05-21', 'pendente'),
    (7, '2024-05-22', 'enviado'),
    (8, '2024-05-23', 'devolvido'),
    (9, '2024-05-24', 'pendente');
	
-- Dados para a tabela PASTRIMONIO
INSERT INTO PATRIMONIO (ITEM, QUANTIDADE, STATUS) VALUES
    ('Computador', 5, 'disponivel'),
    ('Cadeira', 10, 'disponivel'),
    ('Mesa', 7, 'disponivel'),
    ('Projetor', 2, 'quebrado'),
    ('Impressora', 3, 'manutencao');

-- Dados para a tabela EVENTO
INSERT INTO EVENTO (NOME, DATA, VALOR) VALUES
    ('Conferência', '[2024-06-10, 2024-06-12]', 50.00),
    ('Seminário', '[2024-07-15, 2024-07-17]', 30.00),
    ('Workshop', '[2024-08-20, 2024-08-22]', 20.00),
    ('Curso', '[2024-09-25, 2024-09-27]', 100.00),
    ('Palestra', '[2024-10-30, 2024-11-01]', 10.00);


-- Dados para a tabela STORE
INSERT INTO STORE (ITEM, VALOR) VALUES
    ('Caneta', 2.50),
    ('Caderno', 5.00),
    ('Agenda', 10.00),
    ('Mouse', 15.00),
    ('Teclado', 20.00);

-- Dados para a tabela MENSALIDADE_MEMBRO
INSERT INTO MENSALIDADE_MEMBRO (membro_id, DATA_PAGAMENTO, TYPE) VALUES
    (1, '2024-05-01', 'mensal'),
    (3, '2024-05-01', 'anual'),
    (2, '2024-05-01', 'mensal'),
    (5, '2024-05-01', 'anual'),
    (6, '2024-05-01', 'mensal');
	
	-- Dados para a tabela STORE_MEMBRO
INSERT INTO STORE_MEMBRO (store_id, membro_id) VALUES
    (1, 1),
    (2, 2),
    (3, 5),
    (4, 6),
    (5, 7),
    (1, 8),
    (2, 9),
    (3, 6),
    (4, 1),
    (5, 2);

-- Dados para a tabela SOLICITACAO_PATRIMONIO
INSERT INTO SOLICITACAO_PATRIMONIO (patrimonio_id, solcitacao_id) VALUES
    (6, 1),
    (7, 2),
    (8, 3),
    (9, 4),
    (10, 5),
    (9, 6),
    (8, 7),
    (7, 8),
    (6, 9);



    
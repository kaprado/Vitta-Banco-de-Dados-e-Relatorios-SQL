-- Inserindo dados na tabela BENEFICIARIO
INSERT INTO BENEFICIARIO VALUES (1, 'Ana Paula Lima',    'an4p4ul4',  'F', 'Rua das Flores, 142',    '11976432810', 'ana.plima@gmail.com',      '12345678901');
INSERT INTO BENEFICIARIO VALUES (2, 'Carlos Souza',      'c4rl0s92',  'M', 'Av. Brasil, 87',         '11985621347', 'carlossouza92@gmail.com',  '23456789012');
INSERT INTO BENEFICIARIO VALUES (3, 'Fernanda Costa',    'fecosta1',  'F', 'Rua 7 de Setembro, 318', '11942387651', 'fer.costa@hotmail.com',    '34567890123');
INSERT INTO BENEFICIARIO VALUES (4, 'Roberto Alves',     'r0b3rt0!',  'M', 'Travessa Nova, 53',      '11991234876', 'rob.alves@outlook.com',    '45678901234');
INSERT INTO BENEFICIARIO VALUES (5, 'Juliana Martins',   'jul1mart',  'F', 'Rua Ipê, 79',            '11963748291', 'ju.martins@gmail.com',     '56789012345');
INSERT INTO BENEFICIARIO VALUES (6, 'Marcos Pereira',    'm4rcos7',   'M', 'Av. Paulista, 1538',     '11978345612', 'marcos.per@gmail.com',     '67890123456');
INSERT INTO BENEFICIARIO VALUES (7, 'Patrícia Oliveira', 'p4tr1c14',  'F', 'Rua das Acácias, 27',   '11954872163', 'pat.oliveira@hotmail.com', '78901234567');

-- Inserindo dados na tabela DENTISTA
INSERT INTO DENTISTA VALUES (1, 'Dr. João Mendes',    'CRM-SP12345', '11987634521', 'joao.mendes@clinica.com',   '08:00-17:00');
INSERT INTO DENTISTA VALUES (2, 'Dra. Cláudia Reis',  'CRM-SP23456', '11976543287', 'claudia.reis@clinica.com',  '09:00-18:00');
INSERT INTO DENTISTA VALUES (3, 'Dr. Bruno Faria',    'CRM-SP34567', '11965438712', 'bruno.faria@clinica.com',   '07:00-16:00');
INSERT INTO DENTISTA VALUES (4, 'Dra. Letícia Nunes', 'CRM-SP45678', '11993821456', 'leticia.nunes@clinica.com', '10:00-19:00');
INSERT INTO DENTISTA VALUES (5, 'Dr. Paulo Saraiva',  'CRM-SP56789', '11978231964', 'paulo.saraiva@clinica.com', '08:00-14:00');
INSERT INTO DENTISTA VALUES (6, 'Dra. Aline Torres',  'CRM-SP67890', '11961537428', 'aline.torres@clinica.com',  '13:00-20:00');
INSERT INTO DENTISTA VALUES (7, 'Dr. Rafael Mota',    'CRM-SP78901', '11984372615', 'rafael.mota@clinica.com',   '08:00-17:00');

-- Inserindo dados na tabela PROCEDIMENTO
INSERT INTO PROCEDIMENTO VALUES (1, 'Limpeza Dental',        35,  'Profilaxia e remoção de tártaro');
INSERT INTO PROCEDIMENTO VALUES (2, 'Extração Simples',      40,  'Extração de dente sem complicações');
INSERT INTO PROCEDIMENTO VALUES (3, 'Restauração',           55,  'Restauração com resina composta');
INSERT INTO PROCEDIMENTO VALUES (4, 'Canal Radicular',       110, 'Tratamento endodôntico completo');
INSERT INTO PROCEDIMENTO VALUES (5, 'Clareamento Dental',    85,  'Clareamento com peróxido de hidrogênio');
INSERT INTO PROCEDIMENTO VALUES (6, 'Aplicação de Flúor',    25,  'Fluoretação preventiva');
INSERT INTO PROCEDIMENTO VALUES (7, 'Colocação de Aparelho', 65,  'Instalação de aparelho ortodôntico');

-- Inserindo dados na tabela CONSULTA
INSERT INTO CONSULTA VALUES (1, TO_DATE('2025-01-10','YYYY-MM-DD'), '09:15', 'Cárie em molar inferior',         1, 1);
INSERT INTO CONSULTA VALUES (2, TO_DATE('2025-01-15','YYYY-MM-DD'), '10:30', 'Gengivite leve',                  2, 2);
INSERT INTO CONSULTA VALUES (3, TO_DATE('2025-02-05','YYYY-MM-DD'), '11:45', 'Necessita canal no dente 36',     3, 3);
INSERT INTO CONSULTA VALUES (4, TO_DATE('2025-02-20','YYYY-MM-DD'), '14:20', 'Fratura em incisivo',             4, 4);
INSERT INTO CONSULTA VALUES (5, TO_DATE('2025-03-01','YYYY-MM-DD'), '08:40', 'Manchas por fluorose',            5, 5);
INSERT INTO CONSULTA VALUES (6, TO_DATE('2025-03-18','YYYY-MM-DD'), '15:10', 'Dor de dente - provável pulpite', 6, 6);
INSERT INTO CONSULTA VALUES (7, TO_DATE('2025-04-02','YYYY-MM-DD'), '09:50', 'Avaliação ortodôntica',           7, 7);

-- Inserindo dados na tabela TRIAGEM_SOCIAL
INSERT INTO TRIAGEM_SOCIAL VALUES (1, TO_DATE('2025-01-09','YYYY-MM-DD'), 'Renda baixa, elegível para atendimento gratuito',   1);
INSERT INTO TRIAGEM_SOCIAL VALUES (2, TO_DATE('2025-01-14','YYYY-MM-DD'), 'Renda média, coparticipação de 30%',                2);
INSERT INTO TRIAGEM_SOCIAL VALUES (3, TO_DATE('2025-02-04','YYYY-MM-DD'), 'Vulnerabilidade social confirmada',                 3);
INSERT INTO TRIAGEM_SOCIAL VALUES (4, TO_DATE('2025-02-19','YYYY-MM-DD'), 'Sem vulnerabilidade, plano padrão',                 4);
INSERT INTO TRIAGEM_SOCIAL VALUES (5, TO_DATE('2025-02-28','YYYY-MM-DD'), 'Beneficiário idoso, atendimento prioritário',       5);
INSERT INTO TRIAGEM_SOCIAL VALUES (6, TO_DATE('2025-03-17','YYYY-MM-DD'), 'Renda baixa, elegível para atendimento gratuito',   6);
INSERT INTO TRIAGEM_SOCIAL VALUES (7, TO_DATE('2025-04-01','YYYY-MM-DD'), 'Criança, atendimento prioritário pelo programa',    7);

-- Inserindo dados na tabela CONSULTA_PROCEDIMENTO
INSERT INTO CONSULTA_PROCEDIMENTO VALUES (1, 1, 163.50);
INSERT INTO CONSULTA_PROCEDIMENTO VALUES (2, 6,  87.90);
INSERT INTO CONSULTA_PROCEDIMENTO VALUES (3, 4, 874.00);
INSERT INTO CONSULTA_PROCEDIMENTO VALUES (4, 3, 312.75);
INSERT INTO CONSULTA_PROCEDIMENTO VALUES (5, 5, 489.90);
INSERT INTO CONSULTA_PROCEDIMENTO VALUES (6, 2, 218.00);
INSERT INTO CONSULTA_PROCEDIMENTO VALUES (7, 7, 1175.50);

COMMIT;
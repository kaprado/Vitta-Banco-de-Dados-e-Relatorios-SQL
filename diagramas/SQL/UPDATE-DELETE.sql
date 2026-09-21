-- UPDATE 1: Atualizar telefone de um beneficiário
UPDATE BENEFICIARIO
SET telefone = '11999991111'
WHERE id_beneficiario = 1;

-- UPDATE 2: Alterar horário de atendimento de um dentista
UPDATE DENTISTA
SET horario_atendimento = '08:00-18:00'
WHERE id_dentista = 3;

-- UPDATE 3: Corrigir valor de um procedimento na consulta
UPDATE CONSULTA_PROCEDIMENTO
SET valor = 950.00
WHERE id_consulta = 3 AND id_procedimento = 4;

COMMIT;

-- DELETE 1: Remover um procedimento de uma consulta
DELETE FROM CONSULTA_PROCEDIMENTO
WHERE id_consulta = 6 AND id_procedimento = 2;

-- DELETE 2: Remover triagem social de um beneficiário
DELETE FROM TRIAGEM_SOCIAL
WHERE id_triagem = 7;

-- DELETE 3: Remover uma consulta (sem dependências restantes)
DELETE FROM CONSULTA
WHERE id_consulta = 7;

COMMIT;
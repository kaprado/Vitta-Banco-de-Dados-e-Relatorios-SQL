-- Relatório de beneficiários ordenados por nome em ordem alfabética
-- ASC = do menor para o maior

SELECT
    id_beneficiario,
    nome,
    sexo,
    telefone,
    email
FROM BENEFICIARIO
ORDER BY nome ASC;
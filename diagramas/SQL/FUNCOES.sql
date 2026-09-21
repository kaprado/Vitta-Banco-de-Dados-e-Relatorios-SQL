-- Criando relatório com função numérica simples
-- Relatório de procedimentos com cálculo de acréscimo de 10% sobre o valor

SELECT
    cp.id_consulta,
    p.nome_procedimento,
    cp.valor                  AS valor_original,
    ROUND(cp.valor * 0.10, 2) AS valor_acrescimo,
    ROUND(cp.valor * 1.10, 2) AS valor_com_acrescimo
FROM CONSULTA_PROCEDIMENTO cp
JOIN PROCEDIMENTO p ON cp.id_procedimento = p.id_procedimento
ORDER BY cp.valor DESC;
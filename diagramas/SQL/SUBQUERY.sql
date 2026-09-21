-- Criando relatório com subconsulta
-- Relatório de beneficiários com consultas que possuem valor acima da média 

SELECT
    b.id_beneficiario,
    b.nome        AS beneficiario,
    c.id_consulta,
    c.data,
    cp.valor
FROM BENEFICIARIO b
JOIN CONSULTA c               ON b.id_beneficiario = c.id_beneficiario
JOIN CONSULTA_PROCEDIMENTO cp ON c.id_consulta     = cp.id_consulta
WHERE cp.valor > (
    SELECT AVG(valor)
    FROM CONSULTA_PROCEDIMENTO
)
ORDER BY cp.valor DESC;
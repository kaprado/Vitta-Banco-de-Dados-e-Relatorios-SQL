-- Criando relatório com função de grupo(GROUP BY)
-- Relatório de receita total e ticket médio por dentista

SELECT
    d.id_dentista,
    d.nome                  AS dentista,
    COUNT(cp.id_consulta)   AS total_procedimentos,
    SUM(cp.valor)           AS receita_total,
    ROUND(AVG(cp.valor), 2) AS ticket_medio,
    MIN(cp.valor)           AS menor_valor,
    MAX(cp.valor)           AS maior_valor
FROM DENTISTA d
JOIN CONSULTA c               ON d.id_dentista = c.id_dentista
JOIN CONSULTA_PROCEDIMENTO cp ON c.id_consulta = cp.id_consulta
GROUP BY d.id_dentista, d.nome
ORDER BY receita_total DESC;
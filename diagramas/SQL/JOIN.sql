-- Criando relatório com junção de tabelas (JOIN)
-- Relatório completo de consultas com beneficiário, dentista, procedimento e situação social

SELECT
    c.id_consulta,
    c.data                AS data_consulta,
    c.hora,
    b.nome                AS beneficiario,
    b.cpf,
    d.nome                AS dentista,
    d.crm,
    p.nome_procedimento,
    p.tempo               AS duracao_min,
    cp.valor,
    ts.avaliacao_condicao AS situacao_social
FROM CONSULTA c
JOIN BENEFICIARIO b               ON c.id_beneficiario = b.id_beneficiario
JOIN DENTISTA d                   ON c.id_dentista      = d.id_dentista
JOIN CONSULTA_PROCEDIMENTO cp     ON c.id_consulta      = cp.id_consulta
JOIN PROCEDIMENTO p               ON cp.id_procedimento = p.id_procedimento
LEFT JOIN TRIAGEM_SOCIAL ts       ON b.id_beneficiario  = ts.id_beneficiario
ORDER BY c.data, c.hora;
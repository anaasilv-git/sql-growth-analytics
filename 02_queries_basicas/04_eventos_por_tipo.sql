-- Query 4: Distribuição de eventos por tipo
-- Objetivo: entender quais tipos de eventos são mais frequentes.
-- Tabela usada: events

SELECT
    event_type,
    COUNT(*) AS qtd_eventos
FROM
    events
GROUP BY
    event_type
ORDER BY
    qtd_eventos DESC;

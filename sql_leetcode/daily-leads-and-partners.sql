SELECT L.date_id, L.make_name, L.unique_leads, P.unique_partners
FROM (
    SELECT date_id, make_name, COUNT(DISTINCT lead_id) AS unique_leads
    FROM DailySales
    GROUP BY date_id, make_name
) AS L
JOIN (
    SELECT date_id, make_name, COUNT(DISTINCT partner_id) AS unique_partners
    FROM DailySales
    GROUP BY date_id, make_name
) AS P
ON L.date_id = P.date_id AND L.make_name = P.make_name;


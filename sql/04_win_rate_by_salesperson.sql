SELECT
    salesperson,
    COUNT(*) AS total_bids,
    SUM(CASE WHEN status = 'WON' THEN 1 ELSE 0 END) AS won_bids,
    ROUND(SUM(CASE WHEN status = 'WON' THEN 1 ELSE 0 END) * 1.0 / COUNT(*), 2) AS win_rate,
    ROUND(SUM(CASE WHEN status = 'WON' THEN project_total ELSE 0 END), 0) AS won_revenue,
    ROUND(AVG(project_total), 0) AS avg_bid_size
FROM bids
WHERE salesperson IS NOT NULL
  AND salesperson <> ''
GROUP BY salesperson
HAVING COUNT(*) >= 3
ORDER BY win_rate DESC, won_revenue DESC;

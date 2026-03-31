SELECT
    ROUND(product_gp, -1) AS gp_band,
    COUNT(*) AS bids,
    ROUND(SUM(CASE WHEN status = 'WON' THEN 1 ELSE 0 END) * 1.0 / COUNT(*), 2) AS win_rate
FROM bids
GROUP BY gp_band
ORDER BY gp_band;

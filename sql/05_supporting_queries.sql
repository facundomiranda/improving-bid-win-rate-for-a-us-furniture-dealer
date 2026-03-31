-- QUERY 1: WIN RATE BY INDUSTRY AND GP BAND
-- =========================================================

SELECT
    industry,
    CASE
        WHEN product_gp < 10 THEN '0-9%'
        WHEN product_gp < 15 THEN '10-14%'
        WHEN product_gp < 20 THEN '15-19%'
        WHEN product_gp < 25 THEN '20-24%'
        ELSE '25%+'
    END AS gp_band,
    COUNT(*) AS total_bids,
    SUM(CASE WHEN status = 'WON' THEN 1 ELSE 0 END) AS won_bids,
    ROUND(SUM(CASE WHEN status = 'WON' THEN 1 ELSE 0 END) * 1.0 / COUNT(*), 2) AS win_rate,
    ROUND(AVG(project_total), 0) AS avg_project_total
FROM bids
GROUP BY industry,
         CASE
             WHEN product_gp < 10 THEN '0-9%'
             WHEN product_gp < 15 THEN '10-14%'
             WHEN product_gp < 20 THEN '15-19%'
             WHEN product_gp < 25 THEN '20-24%'
             ELSE '25%+'
         END
ORDER BY industry, gp_band;

-- =========================================================
-- QUERY 2: INDUSTRY PRIORITIZATION VIEW
-- =========================================================

SELECT
    industry,
    COUNT(*) AS total_bids,
    SUM(CASE WHEN status = 'WON' THEN 1 ELSE 0 END) AS won_bids,
    ROUND(SUM(CASE WHEN status = 'WON' THEN 1 ELSE 0 END) * 1.0 / COUNT(*), 2) AS win_rate,
    ROUND(AVG(project_total), 0) AS avg_project_total,
    ROUND(SUM(CASE WHEN status = 'WON' THEN project_total ELSE 0 END), 0) AS won_revenue
FROM bids
GROUP BY industry
ORDER BY win_rate DESC, won_revenue DESC;

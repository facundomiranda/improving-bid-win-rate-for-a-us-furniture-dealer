SELECT
    CASE
        WHEN project_total >= 1000000 OR revisions >= 5 THEN 'high'
        WHEN project_total >= 500000 OR revisions BETWEEN 1 AND 3 THEN 'medium'
        ELSE 'low'
    END AS bid_complexity,
    COUNT(*) AS bids,
    SUM(CASE WHEN status = 'WON' THEN 1 ELSE 0 END) AS won_bids,
    ROUND(SUM(CASE WHEN status = 'WON' THEN 1 ELSE 0 END) * 1.0 / COUNT(*), 2) AS win_rate,
    ROUND(AVG(project_total), 0) AS avg_project_total,
    ROUND(AVG(revisions), 2) AS avg_revisions
FROM bids
GROUP BY bid_complexity
ORDER BY
    CASE
        WHEN bid_complexity = 'low' THEN 1
        WHEN bid_complexity = 'medium' THEN 2
        ELSE 3
    END; complexity;

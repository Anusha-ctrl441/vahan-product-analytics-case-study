
SELECT
    lead_source,
    SUM(uploaded_leads) AS total_leads,
    SUM(attempted) AS attempted,
    SUM(connected) AS connected,
    SUM(interested) AS interested,
    SUM(ft_after_upload) AS ft_after_upload,
    ROUND(
        SUM(ft_after_upload) * 100.0 /
        NULLIF(SUM(uploaded_leads), 0),
        2
    ) AS ft_conversion_rate
FROM leads
GROUP BY lead_source
ORDER BY ft_conversion_rate DESC;
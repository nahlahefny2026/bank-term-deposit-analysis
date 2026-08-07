SELECT COUNT(*) AS Total_Customers
FROM dbo.bankadditionalfull
SELECT y AS Subscription_Status,
       COUNT(*) AS Total_Customers
FROM dbo.bankadditionalfull
GROUP BY y;
SELECT job,
       COUNT(*) AS Total_Customers
FROM dbo.bankadditionalfull
GROUP BY job
ORDER BY Total_Customers DESC;
SELECT education,
       COUNT(*) AS Subscribed_Customers
FROM dbo.bankadditionalfull
WHERE y = 1
GROUP BY education
ORDER BY Subscribed_Customers DESC;
SELECT job,
       COUNT(*) AS Total_Customers
FROM dbo.bankadditionalfull
GROUP BY job
HAVING COUNT(*) > 5000
ORDER BY Total_Customers DESC;
SELECT
    CASE
        WHEN age < 30 THEN 'Under 30'
        WHEN age BETWEEN 30 AND 50 THEN '30-50'
        ELSE 'Above 50'
    END AS Age_Group,
    COUNT(*) AS Total_Customers
FROM dbo.bankadditionalfull
GROUP BY
    CASE
        WHEN age < 30 THEN 'Under 30'
        WHEN age BETWEEN 30 AND 50 THEN '30-50'
        ELSE 'Above 50'
    END
ORDER BY Total_Customers DESC;
SELECT TOP 5
       job,
       COUNT(*) AS Subscribed_Customers
FROM dbo.bankadditionalfull
WHERE y = 1
GROUP BY job
ORDER BY Subscribed_Customers DESC;
SELECT
    MAX(age) AS Max_Age,
    MIN(age) AS Min_Age,
    AVG(age) AS Average_Age
FROM dbo.bankadditionalfull;

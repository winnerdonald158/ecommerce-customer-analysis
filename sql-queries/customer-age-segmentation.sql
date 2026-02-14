                                    CUSTOMER SEGMENTATION BY AGE GROUP
   BUSINESS QUESTION:
 We need to understand our customer base demographics.Show me how many customers we have in each age group(Under 25, 25-35, 36-50, Over 50) and their average
 lifetime spending to identify our most valuable segments.

 QUERY
SELECT
    CASE
        WHEN Customer_Age < 25 THEN '<25'
        WHEN Customer_Age BETWEEN 25 AND 35 THEN '25-35'
        WHEN Customer_Age BETWEEN 36 AND 50 THEN '36-50'
        WHEN Customer_Age > 50 THEN '>50'
        ELSE 'Unknown'
    END AS AgeGroup,
    COUNT(DISTINCT c.Customer_ID) AS No_of_customers, 
    AVG(t.Total_Purchase_Amount) AS avg_transaction_spending,
    SUM(t.Total_Purchase_Amount) / COUNT(DISTINCT c.Customer_ID) AS avg_lifetime_spending 
FROM customer AS c
INNER JOIN transactions AS t
ON c.Customer_ID = t.Customer_ID
GROUP BY
    CASE
        WHEN Customer_Age < 25 THEN '<25'
        WHEN Customer_Age BETWEEN 25 AND 35 THEN '25-35'
        WHEN Customer_Age BETWEEN 36 AND 50 THEN '36-50'
        WHEN Customer_Age > 50 THEN '>50'
        ELSE 'Unknown'
    END
ORDER BY avg_lifetime_spending DESC;

            KEY FINDINGS:
Customer below 25 years had a total customers of 6688 and  generated an average lifetime spending of2616.1751952718,while customers between the age 25 and 35 had a total number of 10262
and generated an average lifetime spending of 2653.6186995967, customers between the age of 36-50 had a total number of 14021 and generated an average lifetimespending of 2719.1371702705 ,
then customers above 50 years had a totalnumber of 18702 and generated an average lifetime spending of 2808.4743146862
         
              RECOMMENDATION: 
Focus on the age group above 50 years (18,702 customers, 37.6% of base) with targeted retention programs given their highest lifetime value of $2,808.
Launch youth engagement initiatives for under-25 customers to increase their spending trajectory and build early brand loyalty.

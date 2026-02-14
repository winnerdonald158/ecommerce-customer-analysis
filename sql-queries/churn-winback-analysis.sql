              CUSTOMER CHURN & WIN-BACK OPPORTUNITY ANALYSIS

               BUSINESS QUESTION:
 Sales wants to identify customers who haven't purchased since 2023 for a win-back campaign. Show customer names, their last purchase date, and total historical spendingto prioritize outreach efforts.
 
                QUERY
SELECT
    c.Customer_Name,
    MAX(t.Purchase_Date) AS Last_Purchase_Date,
    SUM(t.Total_Purchase_Amount) total_spending
FROM customer AS c
INNER JOIN transactions AS t
ON c.Customer_ID = t.Customer_ID
GROUP BY c.Customer_Name
HAVING MAX(YEAR(t.Purchase_Date)) < 2023
ORDER BY Last_Purchase_Date DESC;

                
          KEY FINDINGS:
A total of 13,584 customers (27.3% churn rate) haven't purchased since 2023. 

             
           RECOMMENDATION:
Launch targeted email campaign to high-value inactive customers offering personalized incentives based ontheir historical purchase patterns.

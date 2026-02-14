                                    REVENUE ANALYSIS BY GENDER & PRODUCT CATEGORY

                    BUSINESS QUESTION:
Marketing needs to understand gender-based purchasing patterns. For each product category, show total revenue from male vs female customers and identify which gender dominates each category.

        QUERY
SELECT
    t.Product_Category,
    SUM(CASE WHEN c.Gender = 'Male' THEN t.Total_Purchase_Amount ELSE 0 END) AS male_total_revenue,
    SUM(CASE WHEN c.Gender = 'Female' THEN t.Total_Purchase_Amount ELSE 0 END) AS female_total_revenue,
    CASE 
        WHEN SUM(CASE WHEN c.Gender = 'Male' THEN t.Total_Purchase_Amount ELSE 0 END) > 
             SUM(CASE WHEN c.Gender = 'Female' THEN t.Total_Purchase_Amount ELSE 0 END)
        THEN 'Male'
        ELSE 'Female'
    END AS top_gender
FROM customer AS c
INNER JOIN transactions AS t
ON c.Customer_ID = t.Customer_ID
GROUP BY t.Product_Category
ORDER BY male_total_revenue DESC;

                      
                              KEY FINDINGS:
Female customers drive higher purchase volume in the Home, Books, and Clothing categories, while male customers record the highest purchase value and total spending overall.

                         Recommendation

The sales team should ensure consistent availability of products that appeal strongly to female customers, particularly in the Home, Books, and Clothing categories, to avoid 
stockouts and maximize revenue opportunities.

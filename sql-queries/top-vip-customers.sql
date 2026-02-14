                         TOP 20 VIP CUSTOMERS BY LIFETIME VALUE
         
                           BUSINESS QUESTION:
Identify our top 20 customers by total spending top prioritize retention efforts and personalized service. Include their purchase frequency and demographics.

               QUERY
SELECT TOP 20
	c.Customer_Name,
	c.Customer_Age,
	c.Gender,
	SUM(t.Total_Purchase_Amount) AS total_amount_spent,
	COUNT(*) AS no_of_purchases
	FROM customer AS c
	INNER JOIN transactions AS t
	ON c.Customer_ID =t.Customer_ID
	GROUP BY c.Customer_Name, c.Customer_Age,c.Gender
	ORDER BY total_amount_spent DESC

                           KEY FINDINGS:
Top 20 customers generated $4,385,452.00 in revenue
                      
                           RECOMMENDATION: 
Implement VIP loyalty program with dedicated account management for these high-value customers.

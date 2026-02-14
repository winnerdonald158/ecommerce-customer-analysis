                                                        PRODUCT RETURN RATE ANALYSIS
                       BUSINESS QUESTION:
 Finance is concerned about returns impacting profitability. Show return rate by product category to identify quality issues and calculate the financial impact.

         Query             
SELECT 
	Product_Category,
	COUNT(transaction_ID) AS total_number_transaction,
	COUNT(Returns) NO_of_returns,
	(SUM(Returns)*100/ COUNT(*)) AS returns_rate_percentage
	FROM transactions
	GROUP BY Product_Category
	ORDER BY returns_rate_percentage DESC


                    KEY FINDINGS:
Clothing and Books generate the highest transaction volume, making them the strongest revenue-driving categories.
However, Home and Electronics products record the highest return rates, which may be negatively impacting overall profitability in those categories. 

                   RECOMMENDATION: 
Reduce Return Rates in Home & Electronics by Improving product category  descriptions and specifications also add  clearer images and detailed features where necessary
Continue to maintain strong inventory levels For Clothing and BooksProduct category

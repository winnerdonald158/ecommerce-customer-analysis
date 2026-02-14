                                            PAYMENT METHOD PREFERENCE ANALYSIS
                          
                                BUSINESS QUESTION:
 Operations wants to understand payment method usage to optimize checkout experience and payment processing costs. Show distribution of payment methods and customer demographics for each.

                          QUERY
SELECT
t.Payment_Method,
COUNT(DISTINCT c.Customer_ID) AS No_of_customers,
AVG(c.Customer_Age) AS Avg_customer_age
FROM customer AS c
INNER JOIN transactions AS t
ON c.Customer_ID = t.Customer_ID
GROUP BY Payment_Method
ORDER BY AVG(c.Customer_Age)

                           KEY FINDINGS:
Payment method breakdown -The credit card has the  highest number of customers who uses it, with a total number of customers 43298 at an avg age of 43 years, followed by paypal with a total number
of customers 38811 at  an avg age customer of 44, then cash on delivery with a total number of customers 31391 at an avg customer age of 43, lastly crypto with  a total number of customers 19567 at
an avg customer  of 44 year

                        RECOMMENDATION: 
Ensure seamless payment processing for Credit Card and PayPal methods. Minimize transaction failures.
Introduce small incentives to encourage Cash on Delivery methods (to reduce cancellation risk)
Monitor Crypto growth trends before allocating marketing budget

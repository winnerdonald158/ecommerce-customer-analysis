                                                MONTHLY SALES TREND ANALYSIS (2022)
                        
                              BUSINESS QUESTION:
The analytics team wants to identify seasonality patterns and monthly performance trends. Show monthly revenue and transaction volume for 2022 to inform inventory and staffing decisions.

     
        QUERY                                           
 SELECT
DATEPART(Year,Purchase_Date)Year,
DATEPART(Month,Purchase_Date)Month_number,
SUM(Total_Purchase_Amount) total_revenue,
COUNT(transaction_id) total_transaction
FROM transactions
WHERE DATEPART(Year,Purchase_Date)= 2022
GROUP BY DATEPART(Year,Purchase_Date),
DATEPART(Month,Purchase_Date)
ORDER BY DATEPART(Month,Purchase_Date)
               

                          KEY FINDINGS:
January represents a clear seasonal peak in both transaction volume and revenue. This indicates strong customer purchasing activity at the beginning of the year

                        RECOMMENDATION: 
If January performed well because of: Discounts, Promotions, Campaigns. Then similar campaigns should be introduced in lower-performing months to stabilize revenue across the year.
If too much revenue comes from January, the business becomes vulnerable. Introduce quarterly sales events, mid-year promotional pushes.

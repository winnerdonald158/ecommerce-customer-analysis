          E-Commerce Customer Behavior Analysis
SQL and Power BI analysis of 250,000 transactions across 49,673 customers to identify revenue drivers, customer segmentation patterns, and churn risk.

📊 Project Overview
This project analyzes an e-commerce transaction data to answer key business questions about revenue performance, customer behavior, and retention opportunities. Using SQL for data extraction and Power BI for visualization, I identified actionable insights that could drive a 27% reduction in customer churn and optimize inventory allocation across product categories.
Tools: Microsoft SQL Server | Power BI Desktop | T-SQL
Skills Demonstrated:Data cleaning, JOIN operations, aggregate functions, CASE statements, DAX measures, dashboard design, business storytelling

🎯 Business Objectives
1. Identify top revenue-generating product categories to inform inventory decisions
2. Segment customers by demographics and spending patterns for targeted marketing
3. Detect at-risk customers for win-back campaigns (13,584 inactive customers identified)
4. Analyze gender-based purchasing behavior across product lines
5. Uncover seasonality trends for resource planning

 📁 Repository Structure
 sql-queries/           # 8 business analysis queries with documented findings
 dashboard/             # Power BI dashboard screenshots
README.md             # Project documentation

💡 Key Findings
    Revenue Analysis
-Total Revenue: $681.3M across 250K transactions
-Top Categories: Books ($204.9M, 30.1%) and Clothing ($204.5M, 30.0%) drive 60% of revenue
- Trend: Revenue declined 28% from 2020 to 2023, indicating retention challenges

     Customer Insights
- Customer Base: 49,673 unique customers
- Demographics: Customers over 50 represent 36% of the base with highest average transaction value ($2,808)
- Churn Rate: 27.3% (13,584 inactive customers since 2023)

     Behavioral Patterns
- Payment Preferences; Credit Card dominate (40%), followed by  PayPal (30%),
- Gender Patterns: Female customers lead in Home, Books, and Clothing purchases; Male customers dominate Electronics
- Return Rates: All categories maintain healthy return rates below 2%

📈 Dashboard Preview

Sales Performance Overview
[Sales Dashboard](Dashboardi.png)
Sales-performance-overview.png tracks revenue trends, product category performance, customer age distribution, and payment method preferences with interactive filtering by year and product category.

 Customer Analytics
[Customer Dashboard](Dashboardii.png)
Customer-analytics.png deep-dive into customer segmentation, VIP analysis, churn risk identification, and gender-based purchasing patterns to inform retention and marketing strategies.

🔍 Technical Approach
Data Processing:
- Normalized raw transaction data into 3 relational tables (customers, products, transactions)
- Created calculated columns for age grouping and customer status
- Applied data quality checks to handle nulls and duplicates

  Analysis Techniques:
- JOIN operations to combine customer demographics with transaction history
- Aggregate functions (SUM, AVG, COUNT) with GROUP BY for segmentation
- CASE statements for age bucketing and conditional logic
- Window functions for ranking and time-based analysis
- DAX measures for dynamic KPI calculations in Power BI

💼 Business Recommendations
1. Inventory Strategy: Maintain strong stock levels for Books and Clothing (60% of revenue) while testing promotional campaigns for Electronics and Home categories

2. Marketing Focus: Develop age-specific messaging for the 50+ demographic (highest lifetime value) while creating engagement programs for younger segments

3. Gender-Based Campaigns: Tailor product recommendations by gender - promote Home/Books/Clothing to female customers, Electronics to male customers

4. Retention Investigation: Conduct customer interviews to understand the 28% revenue decline from 2020-2023 and address root causes

Connect With Me

Winner Donald  
📧 winnerdonald158@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/winner-donald)  
💻 [GitHub](https://github.com/winnerdonald158)  
📍 Abuja, Nigeria


 📝 Notes

This is a portfolio project using synthetic e-commerce data generated for educational purposes. All insights and recommendations are based on the sample dataset and demonstrate analytical capabilities rather than real business outcomes.


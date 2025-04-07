# Sales_Insights_SQL
This project interrogates customer transactions with sales trends and business performance through SQL query analysis. 
# Objectives
Below are the key objectives;
- Evaluate sales transactions bringing out forward trends in transaction data i.e yearly revenue statistics alongside transaction counts and shopping patterns among customers.
- Revenue Analysis to uncover revenue splits between different product groups and the sections that generate the highest profits while tracking annual revenue increases.
- Evaluate product performance with focus on identifying best-selling items and single product counts by category and market demand fluctuations between product ranges.
- Coming up with Customer Insights, find high-value customers and monitor their transaction behavior, purchasing frequencies and evaluatet their cross-category purchase trends.
- A review of sales performance conducted across different locations to uncover new markets for business operations expansion.
- Sales Growth Trends; analysis of monthly sales development with yearly sales performance data along with customer spending patterns.
- Analyze Company consumers churn or reduced buying habits and instigate measures to stop customer departures through specific advertising campaigns.
# Dataset provided
- Sales transaction table; This table contains product name alongside category information and quantity details and total amount information and transaction date records.
- Customer information table; It contains information about the customers.
# Tools Utilized
- Aiven(free version); to create a PostgreSQL to Act as the database management system to process customer and sales information with high efficiency.
- Query Language; The DBMS uses SQL (Structured Query Language) for retrieving and processing data through aggregation operations while filtering and performing analytical calculations.
- Debeaver utilized it for query execution and database administration.
# Key Findings(Query scenarios)
- Locations/City with higher sales transaction counts. North Michael,South Vicki & Seanburgh had the highest transactions counts display business opportunities for new ventures.
  
  <img width="406" alt="image" src="https://github.com/user-attachments/assets/b37c6437-07f2-42c8-bab4-202c3003cba0" />


  <img width="236" alt="image" src="https://github.com/user-attachments/assets/e898d279-d0ea-454f-942e-d2613eb910bd" />

- The list of top five most purchased products. Allows businesses to understand which products customers prefer and which ones generate increased demand. In this case; Microwave,Fridge,Smartphone,Sneakers,Fridge are the top 5 most purchased products.
  
 <img width="356" alt="image" src="https://github.com/user-attachments/assets/e538bbea-cd8f-423c-9768-c816e02a37c6" />

 <img width="191" alt="image" src="https://github.com/user-attachments/assets/be11cb68-2466-425f-9d7b-4bc6d5040133" />

- Payment method that has the highest sales. Payment Methods Analysis allows businesses to determine optimal payment methods by examining their customer purchasing behavior. From the analysis we found that PayPal was the most preffered method of payment then bank, creditcard,cash, and finally Debit card closed the top five respectively.
  
  <img width="439" alt="image" src="https://github.com/user-attachments/assets/a193aed2-cfe3-4045-a32c-e3570d2a9bd0" />

  <img width="248" alt="image" src="https://github.com/user-attachments/assets/96f99c0e-ec1e-41ff-a34c-02c9516726df" />

- Average transaction amount per category.This metric enables companies to identify the product categories resulting in maximum revenue generation. From this analysis, Furniture category had the highest average amount transactions followed by Electronics then Home Appliances then Accessories and finally Footwear.

  <img width="616" alt="image" src="https://github.com/user-attachments/assets/4d396423-7e18-48bd-8866-e84e64a32da1" />

  <img width="252" alt="image" src="https://github.com/user-attachments/assets/aa031f09-b339-4f28-ab7f-2dd85d41ad0e" />

- The Last 6 Months of Customer Registration without Transactions. Serves as tool for marketing campaign planning towards new customers. From the analysis, no customer has been registered in the last 6 months. This shows that there's customer churn risk.
  
  <img width="509" alt="image" src="https://github.com/user-attachments/assets/3e1229cf-f8aa-444d-ae7e-47094c5834ef" />

  <img width="263" alt="image" src="https://github.com/user-attachments/assets/426abc8b-759c-457e-8713-6034d4bced00" />

- Customers with at Least 4 Transactions – Identifies loyal and repeat customers. From analysis, there was no customer who had made more than 5 transactions.

  <img width="641" alt="image" src="https://github.com/user-attachments/assets/c35dfbcf-9792-4991-852f-17cd6868e265" />

  <img width="290" alt="image" src="https://github.com/user-attachments/assets/98213ae5-ceb5-4b66-b7a4-0d391e7492e4" />

- Yearly Revenue Trends – Evaluates business growth and sales performance over time. From the analysis, 2023 had the most sales followed by 2024, 2022, then 2025.

  <img width="746" alt="image" src="https://github.com/user-attachments/assets/c3ad1867-9315-4138-a831-bec256cf2dc8" />

  <img width="229" alt="image" src="https://github.com/user-attachments/assets/07c1646d-a86c-4c20-92d4-56423c571ed3" />

- Customers who have made purchases across at least 3 different product categories. The analysis system detects customers who buy items within different categories through this feature for delivering personalized recommendations.


  <img width="661" alt="image" src="https://github.com/user-attachments/assets/15c6c718-faa1-40f4-b230-6238ef9f5afe" />

  <img width="233" alt="image" src="https://github.com/user-attachments/assets/a6f35da0-e12a-4720-a9a6-7663fd973df6" />

- Number of unique products sold in each category.A business can measure inventory variety through counting unique product sales per product category. From the analysis, we had 10 unique products sold in each category namely:Headphones,Tablet,Bed,Sofa,Washing Machine,Smartphone,Microwave,Fridge,Laptop,Sneakers.

 <img width="431" alt="image" src="https://github.com/user-attachments/assets/302dc125-508d-4121-b814-955178ede5b7" />

 <img width="223" alt="image" src="https://github.com/user-attachments/assets/aa49412b-3a95-4be6-90eb-48313c03165a" />

# Advanced analysis
- The list of Top 5 Customers by Spending in the Last 12 Months assists in developing retention programs for valuable clients. From the analyis we had customers of id 1283 with the total spending of 15,811 , customer of id 1405 with the total spending of 15,191 and customer of id 1788 with the total spending of 13,828 as the top 3 customers respectively.

  <img width="545" alt="image" src="https://github.com/user-attachments/assets/cea64bf5-0144-494e-b7ef-2162e8e088e8" />

  <img width="428" alt="image" src="https://github.com/user-attachments/assets/bd5b26bd-37f4-4655-9305-d0064f5ef527" />

- Determine the percentage of total revenue contributed by each product category. Assessing revenue production through various categories permits more effective resource and budget distribution for marketing purposes. From the analysis Electronics Category had the highest revenue contribution of 333646.00 followed by Furniture, Home Appliances, Accessories and finally Footwear category in that order.

  <img width="852" alt="image" src="https://github.com/user-attachments/assets/73a23a39-84b1-435b-9309-067817ef77df" />

  <img width="337" alt="image" src="https://github.com/user-attachments/assets/6013f0b0-754e-42ce-aed7-0e02e72ef91b" />

- Find the first purchase date for each customer(a snap shot of the first 15). Helps in customer lifecycle and retention strategies.

  <img width="590" alt="image" src="https://github.com/user-attachments/assets/40f71d81-9079-475b-a62b-76b536192d90" />

  <img width="293" alt="image" src="https://github.com/user-attachments/assets/6f9dc2be-fad8-4314-b5c3-95fdfde566f6" />

- Identify customers who have increased their spending by at least 50% compared to the previous year. Customers with Increased Spending by 50% – Identifies potential VIP customers.

  <img width="572" alt="image" src="https://github.com/user-attachments/assets/aea2a87a-c4f1-43b0-811c-dfbe14cf41e7" />

  <img width="431" alt="image" src="https://github.com/user-attachments/assets/5ec482c7-85a8-456c-9195-deacf6f95af8" />

- Find the month-over-month sales growth for the last 12 months. Month-over-Month Sales Growth – Analyzes business growth patterns.

  <img width="761" alt="image" src="https://github.com/user-attachments/assets/7c8ac8f8-5acc-4500-b8d9-74870b27b6c5" />

  <img width="421" alt="image" src="https://github.com/user-attachments/assets/57ab8f59-9f84-4b6c-a7a4-0a148f7a52c1" />






















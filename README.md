# Retail Sales Analysis SQL Project

# 🛒 Retail Sales Analysis SQL Project

## 📌 Project Overview

This project focuses on **data cleaning** and **data analysis** using SQL to derive business insights from a retail sales dataset. The dataset includes transactional data such as customer information, product category, quantity sold, and sales amount.

---

## 📂 Dataset Schema

**Table Name:** `retailsales`

| Column           | Data Type   | Description                        |
|------------------|-------------|------------------------------------|
| transactions_id  | INT         | Unique identifier for each sale    |
| sale_date        | DATE        | Date of transaction                |
| sale_time        | TIME        | Time of transaction                |
| customer_id      | INT         | ID of the customer                 |
| gender           | VARCHAR(10) | Gender of customer                 |
| age              | INT         | Age of customer                    |
| category         | VARCHAR(30) | Product category                   |
| quantity         | INT         | Number of items sold               |
| price_per_unit   | FLOAT       | Price per unit of the product      |
| cogs             | FLOAT       | Cost of goods sold                 |
| total_sale       | FLOAT       | Total sale amount                  |

---

## 🧹 Data Cleaning Steps

1. **Null Check:**  
   Identified and removed rows with any `NULL` values in critical columns.

2. **Column Rename:**  
   Fixed a typo by renaming `quantiy` to `quantity`.

---

## 📊 Business Questions Answered

| #  | Question                                                                                     | SQL Used |
|----|----------------------------------------------------------------------------------------------|----------|
| 1  | Sales made on a specific date (e.g., `2022-11-05`)                                           | ✅        |
| 2  | Clothing transactions where quantity > 3 in Nov 2022                                         | ✅        |
| 3  | Total sales per category                                                                     | ✅        |
| 4  | Average age of customers in the 'Beauty' category                                            | ✅        |
| 5  | Transactions with sales > 1000                                                               | ✅        |
| 6  | Number of transactions by gender and category                                                | ✅        |
| 7  | Best-selling month of each year based on average sales                                       | ✅        |
| 8  | Top 5 customers with highest total sales                                                     | ✅        |
| 9  | Number of unique customers by product category                                               | ✅        |
| 10 | Sales distribution by shift (Morning, Afternoon, Evening) based on `sale_time`              | ✅        |

---

## 🛠 Tools & Technologies

- **Database:** PostgreSQL
- **Language:** SQL
- **IDE:** pgAdmin / DBeaver / Any SQL Editor

---

## 📈 Key Insights

- Certain categories like **Clothing** and **Beauty** have significant patterns when filtered by time or quantity.
- Majority of high-value sales occur in specific months, making **seasonality** a key factor.
- Customer segmentation by gender and shift timing reveals user behavior that can be leveraged for **targeted marketing**.

---

## 🚀 How to Run This Project

1. Use PostgreSQL and any SQL editor (like pgAdmin).
2. Copy and paste the SQL code from the `retailsales.sql` file.
3. Execute the statements step-by-step for full data cleaning and analysis.

---

## 📄 License

This project is open-source and free to use for educational purposes.




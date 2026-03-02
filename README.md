# 🏦 Banking Analytics Dashboard | Power BI + SQL Server

A end-to-end data analytics project simulating a real-world banking use case. A synthetic dataset of **10,000+ records** was generated in SQL Server, cleaned in Power Query Editor, and visualized in a 2-page interactive Power BI dashboard with **11 KPIs**.

---

## 🛠️ Tools & Technologies

| Tool               | Purpose                                 |
|--------------------||----------------------------------------|
| SQL Server         | Database creation and data storage      |
| SSMS               | Writing and executing SQL queries       |
| Power BI Desktop   | Dashboard development and visualization |
| Power Query Editor | Data cleaning and transformation        |
| DAX                | KPI measures and calculated columns     |

---

## 📂 Project Structure

```
Banking-Analytics-PowerBI/
│
├── 01_create_tables.sql        # Creates Customers, Accounts, Transactions tables
├── 02_insert_customers.sql     # Inserts customer records
├── 03_insert_accounts.sql      # Inserts account records
├── 04_insert_transactions.sql  # Generates 10,000+ transaction records
└── BankingDashboard.pbix       # Power BI report file
```

---

## 🗄️ Database Schema

Three relational tables were created in SQL Server:

- **Customers** — CustomerID, Name, Gender, DateOfBirth, Address, City
- **Accounts** — AccountID, CustomerID, AccountType, Balance, DateOpened
- **Transactions** — TransactionID, AccountID, TransactionDate, TransactionType, Amount, Description, Currency

---

## 🧹 Data Cleaning (Power Query Editor)

The dataset was intentionally created with data quality issues to simulate real-world scenarios:

- Removed duplicate records
- Handled null and missing values
- Fixed data type mismatches
- Standardized date formats
- Cleaned inconsistent text formatting

---

## 📊 Dashboard Overview

### Page 1 — Transaction & Balance Analysis

| KPI                                  | Visual          | Description                          |
|--------------------------------------|-----------------|--------------------------------------|
| Transactions by Type                 | Pie Chart       | Credit vs Debit volume               |
| Monthly Transaction Amount           | Area Chart      | Total transaction value by month     |
| Top N Customers by Transaction Value | Top N Bar Chart | Highest value customers              |
| Average Account Balance              | Gauge           | Mean balance per account             |
| Total Balance by Account Type        | Clustered Bar   | Aggregate balance per account type   |
| Inactive Accounts (Last 90 Days)     | Table / Bar     | Accounts with no recent transactions |

### Page 2 — Customer & Account Overview

| KPI                            | Visual        | Description                         |
|--------------------------------|---------------|-------------------------------------|
| Customer Gender Distribution   | Donut Chart   | Proportion of customers by gender   |
| Customers by Age Group         | Column Chart  | Distribution across age brackets    |
| Accounts by Account Type       | Clustered Bar | Number of accounts per type         |
| Transaction Volume Trend       | Line Chart    | Monthly transaction count over time |
| Customer Location Distribution | Filled Map    | Geographic spread of customers      |



---

## 📐 Sample DAX Measures

```dax
-- Average Account Balance
Average Balance = AVERAGE(CombinedBankingDataset[Balance])

-- Monthly Transaction Amount
Monthly Transaction Amount = 
CALCULATE(
    SUM(CombinedBankingDataset[Amount]),
    ALLEXCEPT(CombinedBankingDataset, CombinedBankingDataset[TransactionDate].[Month])
)

-- Inactive Accounts (Last 90 Days)
Inactive Accounts = 
CALCULATE(
    DISTINCTCOUNT(CombinedBankingDataset[Account_AccountID]),
    FILTER(
        VALUES(CombinedBankingDataset[Account_AccountID]),
        CALCULATE(MAX(CombinedBankingDataset[TransactionDate])) < TODAY() - 90
    )
)

-- Customer Age Group
Customer Age Group = 
SWITCH(
    TRUE(),
    [Customer Age] <= 25, "≤25",
    [Customer Age] <= 35, "26-35",
    [Customer Age] <= 50, "36-50",
    "51+"
)
```

---

## 🚀 How to Run This Project

1. Open **SQL Server Management Studio (SSMS)**
2. Create a new database: `CREATE DATABASE power_bi_2`
3. Run the SQL scripts in order:
   - `01_create_tables.sql`
   - `02_insert_customers.sql`
   - `03_insert_accounts.sql`
   - `04_insert_transactions.sql`
4. Open `BankingDashboard.pbix` in **Power BI Desktop**
5. Update the data source connection to your SQL Server instance
6. Refresh the data and explore the dashboard

---

## 💡 Key Insights This Dashboard Can Answer

- What is the gender and age breakdown of our customer base?
- Which cities have the highest customer concentration?
- Which account types hold the most total balance?
- Who are our top customers by transaction value?
- How many accounts have been inactive in the last 90 days?

---

## 👤 Author

Pratiksha Dandriyal
Aspiring Data Analyst  
[LinkedIn Profile](http://www.linkedin.com/in/pratikshadandriyal) | [GitHub Profile] (https://github.com/pratikshadandriyal)

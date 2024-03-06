# Little Lemon Capstone Project

This is the capstone project from the Meta Database Engineer Professional Certificate provided on Coursera. The objective of this project is to optimize querying data from the MySQL database using various database objects and to create visualization using Tableau.

Database: MySQL
<br>Visualization: Tableau

## Set up

Make sure both MySQL server and MySQL Workbench are downloaded and installed on your machine.

MySQL Community: https://dev.mysql.com/downloads/mysql/
<br>MySQL Workbench: https://dev.mysql.com/downloads/workbench/

### Step 1. Create Server Instance

Create a server instance using Workbench.

![Server Instance](./images/setup/01_server_instance.png)

### Step 2. Load Database Model

Load database model and utilize forward engineering to create tables for storing data.

Model File: `little_lemon_model.mwb`
<br>You can double click on the file to open it on in Workbench.

![Load Model](./images/setup/02_load_modal.png)
![Forward Engineering](./images/setup/03_forward_engineering.png)
![Forward Engineering 2](./images/setup/04_forward_engineering_2.png)

### Step 3. Run SQL script

1. Double click on `data.sql` to load data
2. Double click on each SQL script to open and run in Workbench

## Database ERD

![Database ERD](./images/db_model.png)

## Visualization with Tableau

> **NOTE:** Data used in Tableau is a excel file provided by Meta, hence different from the data in `data.sql`.

### Customers Sales

![Customers Sales](./images/customers_sales.png)

### Profits between 2019 and 2022

![Profits](./images/profits_chart.png)

### Customers Bubble Chart

![Customers Bubble](./images/customer_bubble_chart.png)

### Cuisine Sales and Profits

![Cuisine S&P](./images/cuisine_s&p.png)

### Dashboard

![Dashboard](./images/sales_dashboard.png)

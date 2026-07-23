CREATE DATABASE ApexPlanet_Task2;

USE ApexPlanet_Task2;

SELECT * FROM Cleaned_Data

--How many records are there in the dataset?
SELECT COUNT(*) AS Total_Records FROM Cleaned_Data

SELECT COUNT(Order_ID) AS Total_Orders FROM Cleaned_Data
--What is the total sales revenue?
SELECT SUM(Total_Sales) AS Total_Revenue FROM Cleaned_Data

--How many orders are there in each product category?
SELECT Category, COUNT(Order_ID) AS Toatal_Orders FROM Cleaned_Data GROUP BY Category ORDER BY Toatal_Orders DESC

--Which city generated the highest total sales?
SELECT City, SUM(Total_Sales) AS Total_Revenue FROM Cleaned_Data GROUP BY City ORDER BY Total_Revenue DESC

--What is the average sales amount per order?
SELECT AVG(Total_Sales) AS Average_Order_Value FROM Cleaned_Data

--Which are the Top 5 products by total revenue?
SELECT TOP 5 Product, SUM(Total_Sales) AS Total_Revenue FROM Cleaned_Data GROUP BY Product ORDER BY Total_Revenue DESC

--What is the average age of customers by gender?
SELECT Gender, AVG(Age) AS Average_Age FROM Cleaned_Data GROUP BY Gender

--Which cities have the highest average sales per order?
SELECT City, AVG(Total_Sales) AS Average_Sales FROM Cleaned_Data GROUP BY City ORDER BY Average_Sales DESC

--Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity_Sold FROM Cleaned_Data
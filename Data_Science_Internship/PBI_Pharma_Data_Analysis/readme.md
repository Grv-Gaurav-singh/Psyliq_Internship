# Project Instructions

In this project, it is recommended to clean and sort the data after loading in Power BI Query for better practice and understanding of the tool.  
Below are the instructions detailing each task:

1. **Schema Design:**  
   - Create a Power BI data model with appropriate tables and relationships, considering the Distributor, Customer Name, City, and other relevant columns.

2. **Relationships:**  
   - Establish the necessary relationships between the tables in your data model. For instance, connect the "Sales" table to the "Customers" table.

3. **Role-Playing Dimensions:**  
   - Demonstrate how you'd handle role-playing dimensions for "Sales Rep" and "Manager" in your data model.

4. **Schemas:**  
   - Build a star schema based on the data and explain how your schema design helps optimize report performance.

5. **Row-Level Security:**  
   - Set up row-level security in your data model, restricting access for a specific sales team. Show which measures are affected.

6. **Calculated Columns vs. Measures:**  
   - Calculate the total sales for each product both as a calculated column and a measure. Compare the results and explain the differences.

7. **Time Intelligence:**  
   - Using DAX, create a measure that calculates the year-to-date (YTD) sales for each month.

8. **Filter Context vs. Row Context:**  
   - Write a DAX calculation that shows the total quantity sold by each sales rep. Explain how filter and row contexts apply.

9. **Ranking:**  
   - Create a DAX measure that ranks products by sales. Display the top 5 products by rank in a visual.

10. **Parent-Child Hierarchies:**  
    - If there's a hierarchy in your data, such as categories and subcategories, create a DAX measure to summarize sales at the subcategory level.

11. **Drill-Through:**  
    - Build a report where users can drill through from a summary to detailed data. For example, starting from a map, drill through to a table of individual sales for a specific city.

12. **Custom Visuals:**  
    - Use a custom visual in your report to visualize sales data in a unique way. Explain why you chose this custom visual.

13. **Bookmarks and Buttons:**  
    - Create a report with bookmarks and buttons that allow users to navigate between different pages or states within the report.

14. **Conditional Formatting:**  
    - Apply conditional formatting to a measure so that it changes color when sales exceed a certain target value.

15. **Calculated Columns:**  
    - Add a calculated column to your data model that calculates the total cost of each product (Quantity x Price).

16. **New Column from Example:**  
    - Use the "New Column from Example" feature to add a column that categorizes cities into regions based on a predefined mapping.

17. **Time-Based Calculations:**  
    - Create a measure that calculates the year-over-year (YoY) growth in sales for each month.

18. **Cumulative Total:**  
    - Develop a measure to show the cumulative total of sales over time and visualize it in a line chart.


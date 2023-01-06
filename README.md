# Inventory Project

## Project Description

This project is being done to showcase and improve on the following skills: SQL, Excel/Google Sheets and both Python and Tableau for data visualisation.

I had the opportunity to volunteer at a beautician's small business where I offered to record their current inventory and answer any related questions.

The data was recorded on a spreadsheet, uploaded onto BigQuery and data visuals created using Python and Tableau.

### Problem
- The business owner would like to improve on how their inventory is organised
- They would like to make more cost effective decisions

## Layout

For the spreadsheet from which sql queries and data visualisations were based on, please see <mark>csv file</mark>.

For data visuals, please see <mark>data visualisations</mark>. This will include a Jupyter Notebook
(JN) file showing a couple of visuals made using Python and a markdown file containing a link to a Tableau dashboard.

For the questions and queries completed using SQL please see <mark>sql</mark>.

## Inventory spreadsheet

An important note to add is that one of the goals of the business owner is to improve on how their inventory is organised. This is why some products have no known product manufacturer or no idea where the product was bought from. The business owner was asked what they would consider something that is 'low' in stock and thus consider taking action. I used the “If” statement to complete the column named, 'status': =if(E2 < 3, "Low", "Good").

## SQL

Initially I was going to create the table on BigQuery and alter the table. However, BigQuery doesn't allow for this on the free to use version.
The questions asked by the business owner were noted down and used to carry out queries on BigQuery. From the results of the queries, I would base visuals around those that I feel would help solve the business owners problem.

## Data visualisation

Data visuals were first created on Tableau as it's much more interactive than using JN and slightly easier. Furthermore, I would know what my visual needs to look like when I've run the code on JN.

A pie chart was used instead of a histogram in Tableau because from my experience some confuse the histogram with a bar chart.

The visuals were presented through Tableau and those made through JN were made for me to practice and showcase.

## Action to be taken

Based on the results, I've informed the business owner to take action by removing items that are in excessive quantity or condense those items to make space for other items so that all the inventory is in one location.

I've suggested to the owner to make timely decisions on the status of a product to prevent shortages or ordering too much of the product. This can potentially save on money.

The owner now knows what products are from an unknown manufacturer or bought from an unknown site or location. Based on this, I've suggested they pick a cost effective company and location to source their products from, record this and maintain this custom until a more cost effective solution is found.
-- Q1 How many products have manufacturers that are “Unknown” and what are those products?

SELECT 
  product_manufacturer, 
  product_name, 
  COUNT(*) as unk_pm 
FROM 
  `inventory-control-managment.inventorydataset.inventory_table` 
WHERE 
  product_manufacturer = 'Unknown' 
GROUP BY 
  product_manufacturer, 
  product_name 
ORDER BY 
  product_manufacturer DESC;

-- Query result

| product_manufacturer | product_name             | unk_pm |
|----------------------|--------------------------|--------|
| Unknown              | Towels                   | 8      |
| Unknown              | Box of 100 Waxing Strips | 1      |
| Unknown              | Eye Protection           | 1      |



-- Q2 What is the list of different items they have?

SELECT 
  DISTINCT product_name 
FROM 
  `inventory-control-managment.inventorydataset.inventory_table`

-- Query result

| product_name                           |
|----------------------------------------|
| Towels                                 |
| Box of 100 Razors                      |
| Couch Roll                             |
| Box of 100 Spatulas                    |
| Box of 10 Peel Off Wax                 |
| Box of 100 Waxing Strips               |
| Box of 100 Gloves                      |
| Box of 200 Gloves                      |
| Cleansing Lotion                       |
| Instant Painless Peel                  |
| Skin Toner                             |
| 2 in 1 Gel Vitamin C                   |
| Moisturising Essence                   |
| Sunshield Care                         |
| Box of 5 X3M Pure Pore Minimiser Masks |
| Box of 6 Tissues                       |
| Rose Water                             |
| Nail Polish Remover                    |
| Depilatory Oil                         |
| Ultrasound Gel                         |
| ECG Gel                                |
| Eye Protection                         |
| Body and Face Moisturising Cream       |
| Box of 25 Return Plate                 |
| Box of 18 Baby Wipes                   |
| Peelable Wax                           |



-- Q3 How many of the products are sourced from an, “Unknown” place?

SELECT 
  DISTINCT product_name 
FROM 
  `inventory-control-managment.inventorydataset.inventory_table` 
WHERE 
  where_bought = 'Unknown'

-- Query result

| product_name      |
|-------------------|
| Towels            |
| Box of 100 Gloves |


-- Q4 What item do they hold the most of?

SELECT 
  * 
FROM 
  `inventory-control-managment.inventorydataset.inventory_table` 
ORDER BY 
  quantity DESC 
LIMIT 
  5

-- Query result

| product_name | product_price | product_manufacturer | size   | quantity | colour | where_bought | status |
|--------------|---------------|----------------------|--------|----------|--------|--------------|--------|
| Towels       | 0             | Unknown              | Large  | 12       | White  | Unknown      | Good   |
| Couch Roll   | 47.41         | Amazon Commercial    | N/A    | 11       | White  | Amazon       | Good   |
| Towels       | 0             | Unknown              | Medium | 9        | White  | Unknown      | Good   |
| Towels       | 0             | Unknown              | Small  | 8        | White  | Unknown      | Good   |
| Towels       | 0             | Unknown              | Large  | 8        | Grey   | Unknown      | Good   |
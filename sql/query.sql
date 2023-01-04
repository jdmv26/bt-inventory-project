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


-- Q5 What’s the most expensive item?

SELECT 
  * 
FROM 
  `inventory-control-managment.inventorydataset.inventory_table` 
ORDER BY 
  product_price DESC 
LIMIT 
  1

-- Query result

| product_name           | product_price | product_manufacturer | size | quantity | colour | where_bought | status |
|------------------------|---------------|----------------------|------|----------|--------|--------------|--------|
| Box of 25 Return Plate | 96            | Lumenis              | N/A  | 2        | N/A    | Lumenis      | Low    |


-- Q6 Which items require attention i.e low in stock?

SELECT 
  * 
FROM 
  `inventory-control-managment.inventorydataset.inventory_table` 
WHERE 
  status = 'Low' 
ORDER BY 
  product_price DESC

-- Query result

| product_name                           | product_price | product_manufacturer  | size   | quantity | colour | where_bought              | status |
|----------------------------------------|---------------|-----------------------|--------|----------|--------|---------------------------|--------|
| Box of 25 Return Plate                 | 96            | Lumenis               | N/A    | 2        | N/A    | Lumenis                   | Low    |
| Moisturising Essence                   | 60            | Clinicare             | 500ml  | 1        | N/A    | 4T Medical                | Low    |
| Body and Face Moisturising Cream       | 60            | NuRevital             | 500ml  | 1        | N/A    | Lumenis                   | Low    |
| 2 in 1 Gel Vitamin C                   | 45            | Clinicare             | 500ml  | 1        | N/A    | 4T Medical                | Low    |
| Box of 10 Peel Off Wax                 | 41.59         | Casmara               | N/A    | 1        | Gold   | Chris and Sons            | Low    |
| Instant Painless Peel                  | 35            | Clinicare             | 250ml  | 2        | N/A    | 4T Medical                | Low    |
| ECG Gel                                | 31            | Camcare Health        | 5kg    | 2        | N/A    | Camcare Health            | Low    |
| Skin Toner                             | 28.9          | Clinicare             | 500ml  | 2        | N/A    | 4T Medical                | Low    |
| Depilatory Oil                         | 23.88         | Cirepil               | 1l     | 2        | N/A    | Ellisons                  | Low    |
| Cleansing Lotion                       | 21.5          | Clinicare             | 500ml  | 1        | N/A    | 4T Medical                | Low    |
| Box of 100 Razors                      | 20.34         | Justlife              | N/A    | 2        | N/A    | Aesthetic Beauty Supplies | Low    |
| Box of 5 X3M Pure Pore Minimiser Masks | 20            | Clinicare             | N/A    | 1        | N/A    | 4T Medical                | Low    |
| Rose Water                             | 17.4          | Strictly Professional | 4l     | 1        | N/A    | Chris and Sons            | Low    |
| Box of 200 Gloves                      | 14.47         | sempercare            | Small  | 1        | Blue   | Amazon                    | Low    |
| Peelable Wax                           | 13.86         | Outback Organics      | 800g   | 1        | Jade   | Ellisons                  | Low    |
| Sunshield Care                         | 12.5          | Clinicare             | 50ml   | 1        | N/A    | 4T Medical                | Low    |
| Ultrasound Gel                         | 10            | Anagel                | 5l     | 0        | N/A    | Anagel                    | Low    |
| Box of 6 Tissues                       | 9.19          | Kleenex               | N/A    | 0        | N/A    | Costco                    | Low    |
| Box of 100 Gloves                      | 6.39          | TouchFlex             | Medium | 1        | Blue   | Amazon                    | Low    |
| Box of 100 Waxing Strips               | 5.89          | Unknown               | N/A    | 1        | Pink   | Ebay                      | Low    |
| Nail Polish Remover                    | 2.76          | Pro Impressions       | 125ml  | 1        | N/A    | Pro Impressions           | Low    |


-- Q7 What is the average price of the listed items?

SELECT 
  AVG(product_price) as average_price 
FROM 
  `inventory-control-managment.inventorydataset.inventory_table`


-- Query result

| average_price |
|---------------|
| 18.97117647   |


-- Q8 Where are most of the products bought from?

SELECT 
  where_bought, 
  COUNT(*) as cw_b 
FROM 
  `inventory-control-managment.inventorydataset.inventory_table` 
GROUP BY 
  where_bought 
ORDER BY 
  cw_b DESC

-- Query result

| where_bought              | cw_b |
|---------------------------|------|
| Unknown                   | 9    |
| 4T Medical                | 7    |
| Amazon                    | 5    |
| Lumenis                   | 3    |
| Chris and Sons            | 2    |
| Ellisons                  | 2    |
| Aesthetic Beauty Supplies | 1    |
| Ebay                      | 1    |
| Costco                    | 1    |
| Pro Impressions           | 1    |
| Anagel                    | 1    |
| Camcare Health            | 1    |
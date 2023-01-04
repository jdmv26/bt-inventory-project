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

| product_manufacturer | product_name | unk_pm |
| :--- | :--- | :--- |
| Unknown | Towels | 8 |
| Unknown | Box of 100 Waxing Strips | 1 |
| Unknown | Eye Protection | 1 |
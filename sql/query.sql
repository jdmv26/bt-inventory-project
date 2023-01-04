~~~~sql
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
~~~~



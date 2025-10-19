-- QUERY 4: Identify the most frequently ordered products
-- Purpose: Identify the most frequently ordered products based on 
--          the number of orders and total quantity sold.
-- Insight: Helps prioritize inventory stocking, marketing focus,
--          and promotions on high-demand items.

USE blinkit;

SELECT 
    p.product_ID, 
    p.product_name, 
    p.category,
    COUNT(DISTINCT oi.order_ID) AS total_orders,
    SUM(oi.quantity) AS total_quantity_sold
FROM blinkit_order_items oi
INNER JOIN blinkit_products p 
    ON oi.product_ID = p.product_ID
GROUP BY 
    p.product_ID, 
    p.product_name, 
    p.category
ORDER BY 
    total_orders DESC, 
    total_quantity_sold DESC
LIMIT 10;

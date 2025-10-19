-- QUERY 5: Analyze the most common reasons for customer dissatisfaction
-- Purpose: Identify key areas of customer dissatisfaction based on feedback.
-- Insight: Helps in improving customer service and product quality by
--          highlighting frequent complaint categories.

USE blinkit;

SELECT 
    f.feedback_category, 
    COUNT(f.feedback_ID) AS feedback_count
FROM blinkit_customer_feedback f
GROUP BY f.feedback_category
ORDER BY feedback_count DESC
LIMIT 10;

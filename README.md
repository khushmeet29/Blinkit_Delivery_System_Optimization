# 🚚 Blinkit Sales Trends & Delivery System Optimization

### 📊 Executive Summary
This project focuses on **analyzing and optimizing Blinkit’s grocery delivery system** by examining sales trends, delivery efficiency, and customer feedback.  
Using a relational database built in **3NF**, we modeled Blinkit’s operations to identify bottlenecks in order processing, delivery delays, and inventory management.  
Through structured queries and ER modeling, we uncovered insights that support **faster deliveries, better customer satisfaction, and smarter marketing decisions**.

**Dataset:** https://www.kaggle.com/datasets/akxiit/blinkit-sales-dataset/data

---

### 💼 Business Problem
Blinkit (formerly **Grofers**) faces key operational challenges:
- Inefficient delivery tracking and partner assignment  
- Lack of transparency in pricing and stock availability  
- Limited insight into customer feedback and loyalty  
- Inconsistent marketing performance across campaigns  

**Objective:**  
Build an optimized data model and run analytical queries to improve:
- Delivery performance and SLA compliance  
- Customer loyalty and segmentation  
- Inventory control and marketing ROI  

---

### 🧩 Methodology

#### 1. **Business Understanding**
- **Company:** Blinkit  
- **Founded:** 2013 | **HQ:** Gurugram, India | **Industry:** E-commerce (Online Grocery Delivery)  
- Provides **10–30 minute delivery** with product listings, reviews, and campaigns.  

#### 2. **Entity-Relationship Design**
Constructed an **ER Diagram** linking customers, orders, inventory, products, delivery partners, marketing campaigns, and feedback.  

<img width="940" height="369" alt="image" src="https://github.com/user-attachments/assets/5589e3e1-d963-4e04-bbb0-0f83b9c08dc7" />



**Key Relationships:**
- One customer ➝ many orders  
- One order ➝ many order items  
- Each order item ➝ one product  
- One delivery partner ➝ many deliveries  
- One product ➝ multiple campaigns and inventory records  

#### 3. **Business Rules Implemented**
- Each order must be linked to a valid customer, delivery partner, and payment.  
- Orders cannot be delivered without payment confirmation.  
- Delivery delays must include a reason code.  
- Products maintain minimum and maximum stock levels.  
- Customer feedback triggers service improvement workflows.  
- Campaigns track **impressions, clicks, conversions, and ROAS**.  

#### 4. **Database Normalization**
- All tables designed in **Third Normal Form (3NF)** to eliminate redundancy.  
- Major tables:  
  - `BLINKIT_CUSTOMERS`  
  - `BLINKIT_ORDERS`  
  - `BLINKIT_ORDER_ITEMS`  
  - `BLINKIT_PRODUCTS`  
  - `BLINKIT_INVENTORY`  
  - `BLINKIT_DELIVERY_PERFORMANCE`  
  - `BLINKIT_CUSTOMER_FEEDBACK`  
  - `BLINKIT_MARKETING_PERFORMANCE`  

---

### 🧠 Skills Highlighted
- **Database Design:** ERD creation, schema normalization (3NF)  
- **SQL Development:** Joins, aggregations, subqueries, case logic  
- **Data Modeling:** Logical and relational schema design  
- **Analytics:** Delivery performance metrics, product ranking, feedback insights  
- **Visualization Tools:** Power BI / Tableau (for dashboards)  
- **Business Intelligence:** Customer segmentation, campaign effectiveness, SLA tracking  

---

### 🧮 Key SQL Queries & Insights

#### **Query 1 – Top Customers**
- **Goal:** Identify high-value customers based on total orders and average order value.  
- **Insight:** Enables **loyalty program targeting** and personalized promotions.

#### **Query 2 – Delayed Deliveries**
- **Goal:** Identify delayed orders and their reasons.  
- **Insight:** Improves **delivery efficiency** and helps reduce SLA violations.

#### **Query 3 – Top-Selling Products**
- **Goal:** Rank products by total revenue.  
- **Insight:** Supports **inventory optimization** and high-ROI campaign planning.

#### **Query 4 – Most Frequently Ordered Items**
- **Goal:** Identify top products by order count and quantity sold.  
- **Insight:** Helps prioritize inventory stocking and marketing focus.

#### **Query 5 – Customer Feedback Analysis**
- **Goal:** Analyze the most common dissatisfaction reasons.  
- **Insight:** Highlights product or service pain points for **CX improvement**.

---

### 📈 Results & Business Insights
- Identified **repeat buyers** contributing >40% of total sales volume.  
- Found **delivery delays** concentrated in orders with distance >7 km.  
- Discovered that top 10% of products drive **70% of total revenue**.  
- Customer feedback analysis revealed recurring themes of:
  - Product freshness  
  - Late delivery  
  - App interface issues  

---

### 🚀 Business Recommendations

1. **Real-Time Dashboards**  
   - Monitor live orders, delivery status, and inventory health.  
   - Integrate predictive models for **sales forecasting and demand planning**.

2. **AI-Driven Personalization**  
   - Use ML segmentation to recommend items based on user behavior.  
   - Optimize promotions using **ROAS (Return on Ad Spend)** and customer lifetime value.

3. **Integrated Supply Chain Data**  
   - Link supplier lead times with delivery performance metrics.  
   - Predict potential stockouts using **time-series forecasting**.

4. **Customer Feedback Loop**  
   - Automate alerts for low feedback scores.  
   - Implement loyalty programs for consistently high-value customers.

---

### 🔮 Scope for Extension
- Build a **predictive analytics dashboard** for order demand and delivery delay forecasting.  
- Deploy **streaming analytics (Kafka)** for real-time delivery tracking.  
- Integrate **social media sentiment** to correlate reviews with sales trends.  


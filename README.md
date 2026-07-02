# Swiggy Data Analytics Dashboard

An End-to-End Power BI Dashboard and Operational Analysis built using Swiggy's dataset to analyze vendor performance, customer satisfaction, and delivery trends.

 1. Project Overview

This project delivers an End-to-End Operational and Price Analysis utilizing a structured Swiggy restaurant dataset. The dashboard empowers food-tech stakeholders to effectively monitor vendor performance, analyze customer satisfaction scores, and measure delivery logistics across multiple geographical regions and tier-based pricing models.

2. Dashboard Architecture

Page 1 (Executive Overview)

Tracks `Total Restaurant (8.68K)`, `Average Price (348.44)`, `Average Rating (3.66)`, and `Avg Delivery Time (53.97)`. Includes `City`/`Area` slicers, a Horizontal Bar Chart for Top 10 Restaurants (`Sum of Total ratings`), and a Vertical Column Chart for Top Cuisines (`Average of Avg ratings`).

Page 2 (Operational & Price Analytics)

 Maps out the sequential timeline of `Average Delivery Time` across user expenditure segments via a Line Chart, details catalogue diversity via a Donut Chart, and provides a granular cross-tabulation matrix breaking down exact city metrics.

Dashboard Screenshots

![Page 1 Overview](Swiggy_Dashboard_Page1.png)

![Page 2 Analytics](Swiggy_Dashboard_Page2.png)

3.DAX Calculations

Total Restaurant = DISTINCTCOUNT('Swiggy'[Restaurant_ID])

Average Price = AVERAGE('Swiggy'[Price])

Average Rating = AVERAGE('Swiggy'[Rating])

Avg Delivery Time = AVERAGE('Swiggy'[Delivery_Time])

Price Range = 
SWITCH(
    TRUE(), 
    'Swiggy'[Price] <= 200, "Budget(Under 200)", 
    'Swiggy'[Price] > 200 && 'Swiggy'[Price] <= 500, "Mid Range(201-500)", 
    "Premium(Above 500)"
)

4. Key Business Insights
Top Restaurants & Cuisines: Identifies high-performing supply hubs based on volume traffic and customer satisfaction.
Delivery Trend by Price (Line Chart): Validates that higher price-tier menus correlate directly with complex preparation and stricter logistics.
Price Segmentation (Donut Chart): Monitors marketplace distribution to maintain a balanced portfolio between budget expansion and premium vendors.
Regional Analysis (Matrix Table): Provides instantaneous diagnostic insights into municipal metrics to pinpoint delivery latency issues.

5. Conclusion
Constructed with professional container margins and scalable DAX logic, this analytical suite translates raw food-tech logs into structured corporate business intelligence.

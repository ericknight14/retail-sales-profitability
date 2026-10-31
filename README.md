# Retail Sales & Profitability Analysis

## Project Overview

This project analyzes retail sales and profitability using the Sample Superstore dataset. The goal is to identify which product categories and geographic regions contribute the most to profit, highlight underperforming product subcategories, and examine sales performance over time.

The project combines SQL-based analysis with Tableau visualization to turn raw sales data into business insights that can support better decision-making.

**Tools Used:** SQL, Python (pandas), SQLite, Tableau Public, GitHub

**Interactive Dashboard:** [View the Tableau Public Dashboard](https://public.tableau.com/views/RetailSalesProfitabilityAnalysis_17934768391850/RetailSalesProfitabilityDashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Business Questions

This analysis explores the following questions:

1. Which product categories generate the most sales and profit?
2. Which geographic regions contribute the most to profitability?
3. Which product subcategories generate losses?
4. How does profitability differ across categories and regions?
5. How do sales and profit change over time?
6. What areas might deserve further investigation by business leadership?

## Data and Methodology

The project uses the Sample Superstore retail dataset.

Python and pandas were used to load and inspect the dataset, while SQLite was used to query the data and calculate summary metrics.

The analysis includes:

- Total sales and total profit.
- Profit margin calculations.
- Category-level performance.
- Regional performance.
- Product subcategory profitability.
- Monthly sales and profit trends.
- Identification of profitable, loss-making, and break-even records.

The results were exported to CSV files and used to develop the Tableau dashboard.

## Key Findings

### 1. Technology generated the highest total profit

Technology generated approximately $839,893 in sales and $146,543 in profit, with a profit margin of 17.45%.

Office Supplies generated approximately $731,893 in sales and $126,023 in profit, with a margin of 17.22%.

Furniture generated approximately $754,748 in sales but only $19,730 in profit, resulting in a much lower margin of 2.61%.

**Business implication:** Furniture profitability deserves further investigation to understand the factors contributing to its comparatively low margin.

### 2. The West region led in total profit

The West region generated approximately $739,814 in sales and $110,799 in profit, with a profit margin of 14.98%.

The East region followed with approximately $94,883 in profit, while the Central region generated approximately $39,865 in profit.

The Central region also had the lowest regional profit margin at approximately 7.92%.

**Business implication:** Regional leadership could investigate differences in product mix, pricing, discounts, and operating costs to understand why profitability varies by region.

### 3. Some product subcategories generated losses

Tables generated approximately $208,020 in sales but recorded a loss of approximately $17,753.

Bookcases generated approximately $115,361 in sales and recorded a loss of approximately $3,632.

These results show that generating sales revenue does not necessarily mean a product category is profitable.

**Business implication:** The business could review pricing, discounting practices, product costs, and other factors affecting the profitability of these subcategories.

### 4. Overall profitability provides a baseline

Across the dataset, total sales were approximately $2.33 million and total profit was approximately $292,297, producing an overall profit margin of approximately 12.56%.

This overall margin provides a baseline for comparing categories, regions, and product subcategories.

## Business Recommendations

Based on the findings, the following actions warrant further investigation:

1. **Investigate Furniture profitability:** Review product costs, pricing, discounting, and the profitability of individual furniture subcategories.
2. **Examine regional differences:** Investigate why the Central region has a lower profit margin than the other regions.
3. **Review loss-making products:** Evaluate Tables and Bookcases to identify potential pricing, cost, or discounting issues.
4. **Monitor profitability alongside sales:** Use profit and margin metrics in addition to sales revenue when evaluating business performance.
5. **Track performance over time:** Monitor monthly sales and profit trends to identify changes that may require further analysis.

These recommendations identify areas for investigation rather than assuming that a particular factor caused the observed results.

## Repository Structure

```text
retail-sales-profitability/
├── README.md
├── sql/
│   ├── 01_initial_analysis.sql
│   └── 02_sales_profitability_analysis.sql
└── data/
    ├── category_analysis.csv
    ├── regional_analysis.csv
    ├── subcategory_analysis.csv
    └── monthly_analysis.csv
```

## Data Quality and Limitations

The results depend on the quality and completeness of the supplied dataset.

The monthly analysis contains records dated November and December 2026, which are future-dated relative to the analysis date of October 30, 2026. These records require validation before the monthly results can be treated as completed historical performance.

The analysis identifies patterns and areas for further investigation but does not establish that any individual factor caused a particular profit outcome.

## Project Outcome

This project demonstrates the use of SQL for data aggregation and business analysis, Python for data preparation, and Tableau Public for interactive data visualization.

It also demonstrates how analytical findings can be translated into practical questions and recommendations for business stakeholders.

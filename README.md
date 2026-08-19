# Vahan Product Analytics Case Study

### Lead Funnel Analysis | SQL | Python | Predictive Analytics

An end-to-end analytics case study analyzing **18,198 leads** to understand lead-to-FT conversion, identify high-performing lead sources, and explore whether early funnel behavior can help predict successful FT outcomes.

---

## Business Objective

Analyze the lead funnel to answer three key questions:

- Which lead sources generate the strongest FT conversion?
- Where are the biggest drop-offs across the lead funnel?
- Can early lead behavior be used to predict FT after upload?

---

## Key Findings

### 1. Lead Source Performance

Lead sources were analyzed and ranked using SQL aggregation and FT conversion rate.

| Lead Source | Leads | FT | FT Conversion |
|---|---:|---:|---:|
| Single Referral > 7 days | 1,500 | 14 | **0.93%** |
| Khanna - 2W 26th Jul | 1,546 | 14 | **0.91%** |
| PreOb-Ob Fees Paid (Set 1) | 1,483 | 7 | **0.47%** |
| PreOb-Ob Fees Paid (Set 2) | 1,558 | 7 | **0.45%** |

The dataset contained **54 FT outcomes out of 18,198 leads**, making FT a highly imbalanced target.

### 2. Predictive Modeling

A Random Forest classification model was developed to identify factors associated with FT after upload.

The initial model identified the following as strong predictive signals:

- OB after upload
- Upload-to-first-attempt timing
- Attempt per lead
- Upload day
- Attempted and connected activity
- Lead source

The initial model achieved a **ROC-AUC of 0.993**. Further analysis using a leakage-conscious feature set produced a more conservative ROC-AUC of **0.688**, highlighting the difficulty of predicting a highly rare FT outcome using only earlier-stage lead information.

Threshold analysis also demonstrated the trade-off between identifying more potential FT leads and maintaining precision.

---

## Tools and Techniques

### Python

- Pandas
- NumPy
- Scikit-learn
- Feature engineering
- Train/test splitting
- Random Forest classification
- Classification metrics
- Feature importance
- Threshold analysis

### SQL / MySQL

- Data loading and table creation
- Aggregation using GROUP BY
- Funnel metrics
- Conversion-rate analysis
- Cohort-level analysis

### Excel

- Pivot tables
- Exploratory analysis
- Funnel analysis
- Conversion calculations

---

## Repository Structure

```text
Vahan_Product_Analytics_Case_Study/
│
├── Vahan_Case_Study_Analysis.ipynb
├── q2_aggregation.sql
├── q2_aggregate_output.csv
├── requirements.txt
└── README.md

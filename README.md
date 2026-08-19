# Vahan Product Analytics Case Study

### Lead Funnel Analysis | SQL | Python | Predictive Analytics

An end-to-end analytics case study analyzing **18,198 leads** to understand lead-to-FT conversion, identify high-performing lead sources, and explore whether early funnel behavior can help predict successful FT outcomes.

---

## Business Objective

Analyze the lead funnel to answer three key questions:

- Which lead sources generate the strongest **FT conversion**?
- Where are the biggest drop-offs across the **lead → attempt → connection → interest → FT** funnel?
- Can early lead behavior be used to **predict FT after upload**?

---

## Key Findings

### Lead Source Performance

Using SQL aggregation, lead sources were ranked by FT conversion rate.

| Lead Source | Leads | FT | FT Conversion |
|---|---:|---:|---:|
| Single Referral > 7 days | 1,500 | 14 | **0.93%** |
| Khanna - 2W 26th Jul | 1,546 | 14 | **0.91%** |
| PreOb-Ob Fees Paid (Set 1) | 1,483 | 7 | **0.47%** |
| PreOb-Ob Fees Paid (Set 2) | 1,558 | 7 | **0.45%** |

The dataset contained **54 FT outcomes**, making FT a highly imbalanced target.

### Predictive Modeling

Built a classification model to identify leads likely to achieve FT after upload.

Key predictive signals included:

- **OB after upload**
- **Upload-to-first-attempt timing**
- **Attempt per lead**
- **Upload day**
- **Attempted / Connected activity**
- **Lead source**

The initial model achieved a **ROC-AUC of 0.993**. Threshold analysis highlighted the difficulty of predicting a highly rare FT outcome and the limitations of relying on accuracy alone.

---

## Tools & Techniques

**Python**
- Pandas & NumPy
- Scikit-learn
- Feature engineering
- Train/test splitting
- Classification metrics
- Feature importance
- Threshold analysis

**SQL / MySQL**
- Data loading and table creation
- Aggregation with `GROUP BY`
- Funnel metrics
- Conversion-rate analysis

**Excel**
- Pivot tables
- Funnel analysis
- Exploratory analysis

---

## Repository Structure

```text
├── Vahan_Case_Study_Analysis.ipynb
├── q2_aggregation.sql
├── q2_aggregate_output.csv
├── requirements.txt
└── README.md

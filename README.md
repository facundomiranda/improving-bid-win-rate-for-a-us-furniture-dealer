# Pricing Strategy & Win Rate Optimization in Commercial Bidding

## Context

You are a data analyst working at a US-based commercial furniture dealer.

The company submits hundreds of bids but struggles with:

- low and inconsistent win rates  
- unclear pricing strategy  
- inefficient allocation of sales effort  

The objective of this project is to identify what drives wins vs losses and improve conversion performance.

---

# 📊 Pricing Strategy & Win Rate Optimization in Commercial Bidding

## 📌 Context

You are a data analyst working at a US-based commercial furniture dealer.

The company submits hundreds of bids but struggles with:

- low and inconsistent win rates  
- unclear pricing strategy  
- inefficient allocation of sales effort  

The objective of this analysis is to understand what drives wins vs losses and improve conversion performance.

---

## 🎯 Business Question

How can we increase win rate while maintaining healthy margins?

---

## 📊 Dataset

- 480 total bids  
- 79 won bids  
- 16.46% overall win rate  

### Key Variables:

- Industry  
- Salesperson  
- Product GP% (pricing)  
- Project Value  
- Bid Outcome (Won / Lost)  

---

## 📈 Approach

- Cleaned and structured the dataset using SQL  
- Created key business metrics:
  - Win Rate  
  - GP% pricing bands  
- Built a Power BI dashboard to analyze:
  - pricing vs win rate  
  - industry performance  
  - salesperson performance  

---

## 🔍 Key Insights

### 1. Pricing has a strong negative impact on win rate

- GP 0–9% → ~23.7% win rate  
- GP 10–14% → ~20.3%  
- GP 15%+ → ~7.3%  

👉 Win rate drops significantly as pricing increases.

**Interpretation:**  
The company is likely overpricing higher-margin deals, reducing competitiveness and conversion.

---

### 2. Industry performance varies significantly

- Corporate Office → ~21.8% win rate  
- Education → ~16.9%  
- Retail / Hospitality → ~15.8%  
- Government → ~15.2%  
- Healthcare → ~12.7%  

👉 Not all industries convert equally.

**Interpretation:**  
Sales effort is not optimized across industries with different conversion potential.

---

### 3. Sales performance is inconsistent

- Top performer → ~22.7% win rate  
- Mid performers → ~16–19%  
- Lowest performers → ~10–12%  

👉 Large performance gap across the team.

**Interpretation:**  
There is no standardized sales process — performance depends on individual execution.

---

## ⚠️ Core Problem

The company is optimizing for **margin per deal**, instead of **probability of winning**.

This leads to:

- overpriced bids  
- lost opportunities  
- inefficient use of sales resources  

---

## 🚀 Recommendations

### 1. Adjust pricing strategy

- Reduce GP% in high-price segments  
- Stay competitive in price-sensitive deals  

👉 Focus on maximizing expected revenue, not margin per deal.

---

### 2. Focus on high-performing industries

- Prioritize Corporate Office and Education segments  
- Reallocate effort from lower-performing industries  

---

### 3. Standardize sales execution

- Analyze top-performing reps  
- Replicate their strategies across the team  

---

### 4. Monitor pricing vs performance

- Track win rate by GP band  
- Continuously adjust pricing strategy  

---

## 📉 Expected Impact

- Increase win rate from 16.46% → ~20%  
- +17 to 20 additional wins per 480 bids  
- Improved revenue predictability  
- More efficient use of sales resources  

---

## 📊 Dashboard Preview

<img width="1182" height="661" alt="image" src="https://github.com/user-attachments/assets/83dbcde3-70b4-4610-913e-c06f874cd58c" />


---

## 🛠️ Tools Used

- SQL → data cleaning & transformation  
- Power BI → data visualization  
- GitHub → documentation  

---

## 🧠 Final Thought

The fastest way to increase revenue is not to generate more leads,  
but to win more of the deals you are already bidding on.

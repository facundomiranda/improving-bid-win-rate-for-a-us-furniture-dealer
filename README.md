Pricing Strategy & Win Rate Optimization in Commercial Bidding
Context

You are a data analyst working at a US-based commercial furniture dealer.

The company submits hundreds of bids but struggles with:

-low and inconsistent win rates
-unclear pricing strategy
-inefficient allocation of sales effort

The objective of this project is to identify what drives wins vs losses and improve conversion performance.

Business Question

How can we increase win rate while maintaining healthy margins?

Dataset
-480 total bids
-79 won bids
-16.46% overall win rate

Key variables:

-Industry
-Salesperson
-Product GP% (pricing)
-Project Value
-Bid Outcome (Won / Lost)

Approach

-Cleaned and structured the dataset using SQL
-Built key business metrics:
Win Rate
Pricing bands (GP%)
Developed a Power BI dashboard to analyze:
pricing vs win rate
industry performance
salesperson performance


Key Insights

1. Pricing has a strong negative impact on win rate
GP 0–9% → 23.7% win rate
GP 10–14% → 20.3% win rate
GP 15%+ → 7.3% win rate

Win rate drops significantly as pricing increases.

Interpretation:
The company is overpricing higher-margin deals, reducing competitiveness and conversion.

2. Not all industries perform equally
Corporate Office → 21.8% win rate
Education → 16.9%
Retail / Hospitality → 15.8%
Government → 15.2%
Healthcare → 12.7%

Interpretation:
Some industries consistently convert better, but the company is not prioritizing them accordingly.

3. Sales performance varies significantly
Top performer → 22.7% win rate
Mid performers → ~16–19%
Lowest performers → ~10–12%

Interpretation:
Performance depends heavily on individual execution, not a standardized process.

Core Problem

The company is optimizing for margin per deal, instead of probability of winning.

This results in:

overpriced bids
lost opportunities
inefficient use of sales resources
Recommendations
1. Adjust pricing strategy
Reduce GP% in high-price segments
Stay competitive in price-sensitive deals

Goal: maximize expected revenue, not margin per deal.

2. Focus on high-performing industries
Prioritize Corporate Office and Education segments
Reallocate effort away from low-performing industries
3. Standardize sales process
Analyze top-performing sales reps
Replicate their strategies across the team
4. Monitor pricing vs performance
Track win rate by GP band over time
Adjust pricing strategy dynamically
Expected Impact
Increase win rate from 16.46% → ~20%
+17–20 additional wins per 480 bids
Improved revenue predictability
More efficient sales effort

<img width="1185" height="678" alt="image" src="https://github.com/user-attachments/assets/0a66c4e9-b49f-429e-b4f4-75f5e440c5a0" />


Tools Used:

SQL → data cleaning & transformation

Power BI → data visualization

GitHub → documentation

Final Thought

The fastest way to increase revenue is not to generate more leads,
but to win more of the deals you are already bidding on.

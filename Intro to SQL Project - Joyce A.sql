select * from sales

/*1.use a select and group by function to determine which branch had the highest gross income*/

select SUM(gross_income), branch from sales 
GROUP by branch;

/* Branch C had the highest gross income. recommendation: to increase sales, the company should 
rootcause on the higher gross income from Branch C and apply these to the branches with lower ratings*/



/*2. Which branch was the top-rated*/

select avg(rating),branch from sales

GROUP by branch

ORDER by branch DESC;

/* Branch C has top rated average at 7.07*/



/*3. Which branch was the lowest-rated*/

/* From the previous query, Branch B has the lowest rated average at 6.8. Branch C is found to have 
the higher ratings and consequently higher gross income, the company should rootcause on Branch C 
performance and apply lessons learnt to the branches with lower ratings e.g by talking to customers
and reviewing costs vs revenue earned by the branches */



/*4. Should the company spend more costs on advertising to normal clients or 
clients who are members*/

select COUNT(customer_type),customer_type from sales 

group by customer_type

/* count of customer type shows even distribution of normal and member customers
,
 use gross income to determine which clients to advertise to*/


select sum(gross_income), customer_type from sales 

group by customer_type

/* Recommendation: Gross income from both groups is also even, the company should not spend

more costs on advertising to one group over the other*/



/*5. What type of products should the company focus on increasing sales.
the 
company should focus on the product with lowest sales numbers or gross income*/


select sum(total) as grossincomeproduct,product_line from sales 

group by product_line

/* Recommendation: the product lines the company should be focused on is health & beauty due to 
its lowest sales*/

/* 6. Should the company invest in their own payments systems if they are outsourcing all
payment methods?
Ans: The company should consider factors such as budget availability to invest in the platform, 
ideal money flow being the way that money flows in and out of the business end to end,on this 
step, consider the pain points and positives of financial tracking i.e opportunities to save
on revenue splits wiwth other payment providers, complexity of transactions such as returns,
split payments, etc that would need to be compared against the benefits of outsourcing. Once
this analysis is done, the business can decide on whether to invest.*/ 
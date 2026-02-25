SELECT*
FROM pricingfile;

SELECT DISTINCT Category
FROM pricingfile;

SELECT DISTINCT zone
FROM pricingfile;

SELECT DISTINCT brand_type
FROM pricingfile;

SELECT DISTINCT competition_intensity
FROM pricingfile;

SELECT*
FROM pricingfile
WHERE zone= 'East' AND Category='Fashion';

SELECT*
FROM pricingfile
WHERE zone IN('East','North') AND Category= 'Footwear';

SELECT zone, SUM(revenue)
FROM pricingfile
WHERE Category IN('Fashion')
GROUP BY Zone

SELECT zone, SUM(revenue)
FROM pricingfile
WHERE Category IN('Fashion','Footwear')
GROUP BY Zone

SELECT zone, SUM(units_sold)
FROM pricingfile
WHERE Category IN('Fashion','Footwear')
GROUP BY Zone;

SELECT State, SUM(units_sold)
FROM pricingfile
WHERE Category IN('Fashion')
GROUP BY State;

SELECT State ,SUM(units_sold)
FROM pricingfile
WHERE Category IN('Fashion')
GROUP BY State
HAVING SUM(units_sold)>8000;

SELECT zone,COUNT(revenue)
FROM pricingfile
GROUP BY zone;

SELECT State,SUM(revenue)
FROM pricingfile
GROUP BY State;

SELECT State,SUM(revenue)
FROM pricingfile
WHERE sales_event IN ('Normal')
GROUP BY State;

SELECT State,SUM(revenue)
FROM pricingfile
WHERE sales_event IN ('Festival')
GROUP BY State;

SELECT competition_intensity,sales_event,SUM(revenue)
FROM pricingfile
GROUP BY sales_event , competition_intensity;

SELECT category,sales_event,SUM(revenue)
FROM pricingfile
GROUP BY sales_event , category;

SELECT category,sales_event,SUM(revenue)
FROM pricingfile
GROUP BY sales_event , category
ORDER BY SUM(revenue)DESC


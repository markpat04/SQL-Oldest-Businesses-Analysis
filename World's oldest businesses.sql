-- What is the oldest business on each continent?

WITH bc AS(
    SELECT business, year_founded, country, continent
    FROM businesses
    JOIN countries USING (country_code)
),
c AS(SELECT continent, MIN(year_founded) AS year_founded
    FROM businesses
    JOIN countries 
    USING (country_code)
    GROUP BY continent
)

SELECT bc.continent, 
		bc.business, 
		bc.year_founded, 
		bc.country
FROM bc
JOIN c 
ON bc.continent = c.continent AND bc.year_founded = c.year_founded;


-- How many countries per continent lack data on the oldest businesses

WITH b AS(
    SELECT * FROM businesses
    UNION ALL
    SELECT * FROM new_businesses
)

SELECT c.continent, 
		COUNT(c.country_code) AS countries_without_businesses
FROM countries c
LEFT JOIN b
ON c.country_code = b.country_code
WHERE b.business IS NULL
GROUP BY c.continent;


-- Which business categories are best suited to last over the course of centuries?

SELECT c.continent, 
	ca.category,
	MIN(b.year_founded) AS year_founded
FROM businesses AS b
INNER JOIN categories AS ca
ON b.category_code = ca.category_code
INNER JOIN countries AS c
ON b.country_code = c.country_code
GROUP BY c.continent, ca.category
ORDER BY c.continent, ca.category;

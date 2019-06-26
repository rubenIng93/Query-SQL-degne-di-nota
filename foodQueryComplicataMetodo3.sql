Query SQL 12/06/2019

SELECT fc1.condiment_food_code, fc2.condiment_food_code, COUNT(DISTINCT fc1.food_code)
FROM food_condiment fc1, food_condiment fc2, condiment c1, condiment c2
WHERE fc1.food_code = fc2.food_code
AND c1.food_code = fc1.condiment_food_code
AND c2.food_code = fc2.condiment_food_code
AND c1.condiment_calories < 20
AND c2.condiment_calories < 20
AND fc1.condiment_food_code > fc2.condiment_food_code
GROUP BY fc1.condiment_food_code, fc2.condiment_food_code

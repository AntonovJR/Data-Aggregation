-- 1
SELECT `department_id`, count(`id`)
FROM `employees` 
GROUP BY `department_id`;
-- 2
SELECT `department_id`, Round(AVG(`salary`),2) AS 'Average Salary'
FROM `employees` 
GROUP BY `department_id`;
-- 3
SELECT `department_id`, Round(Min(`salary`),2) AS 'Min Salary'
FROM `employees` 
WHERE `salary`>800
GROUP BY `department_id` LIMIT 1;
-- 4
SELECT count(`id`) AS 'Price Tag'
FROM `products` 
WHERE `price`>8 AND `category_id` = 2
GROUP BY `category_id`;
-- 5
SELECT `category_id`,
Round(AVG(`price`),2) AS 'Average Product',
Round(MIN(`price`),2) AS 'Cheapest Product',
Round(MAX(`price`),2) AS 'Most Expensive Product'
FROM `products` 
GROUP BY `category_id` ;
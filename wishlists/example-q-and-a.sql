-- from the listitems table, calculate the percentage of the desired items purchased:
--        1) 1 - (lidesired - lipurchased)/lidesired
--        2) round the result to two decimal places
--        3) return this result as "Fulfillment"
--              hint, you will need to use 
--                     casting documentation below: 
--                          https://www.postgresql.org/docs/12/sql-expressions.html#SQL-SYNTAX-TYPE-CASTS
--                      CAST numeric
--        4) round
--              https://www.postgresql.org/docs/12/functions-math.html

SELECT ROUND((1 -(CAST(lidesired - lipurchased AS NUMERIC)/CAST(lidesired AS NUMERIC)))*100, 2) || '%' AS "Fulfillment" from listitems;
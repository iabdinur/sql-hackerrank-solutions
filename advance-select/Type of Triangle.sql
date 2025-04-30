Select 
CASE
WHEN A + B <= C or A + C <= B or B + C <= A then "Not A Triangle"
WHEN A = B and B = C then "Equilateral"
WHEN A = B or A = C or B = C then "Isosceles"
ELSE "Scalene"
END AS TYPES_OF_TRIANGLES
FROM TRIANGLES
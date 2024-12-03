-- <cross_join>
SELECT *
FROM perro
CROSS JOIN raza
;
-- <cross_join END>


-- <join1>
SELECT *
FROM perro p
JOIN raza r ON p.raza=r.raza;
-- <join1 END>

-- <cross_join2>
SELECT *
FROM perro p
CROSS JOIN raza r
WHERE p.raza=r.raza;
-- <cross_join2 END>

-- <join_using>
SELECT *
FROM perro
JOIN raza USING(raza);
-- <join_using END>

-- <full_join>
SELECT *
FROM perro p
FULL JOIN raza r ON p.raza=r.raza;
-- <full_join>

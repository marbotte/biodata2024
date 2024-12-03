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
-- <full_join END>

-- <left_join>
SELECT *
FROM perro p
LEFT JOIN raza r USING (raza);
-- <left_join END>

-- <right_join>
SELECT *
FROM perro p
RIGHT JOIN raza r ON p.raza=r.raza;
-- <right_join END>


-- <union>
SELECT nombre, raza
FROM perro p
UNION
SELECT nombre, raza
FROM otro_perro op;
-- <union END>


-- <with>
WITH asociado AS (
    SELECT nombre, raza
    FROM perro p
    UNION
    SELECT nombre, raza
    FROM otro_perro op
)
SELECT *
FROM asociado
JOIN raza USING (raza);
-- <with END>

-- <with2>
WITH asociado AS (
    SELECT *
    FROM perro p
    UNION
    SELECT *
    FROM otro_perro op
), con_raza AS(
    SELECT *
    FROM asociado
    JOIN raza USING (raza)
)
SELECT *
FROM con_raza
WHERE sexo='macho';
-- <with2 END>


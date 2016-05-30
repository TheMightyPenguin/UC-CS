/*
SELECT distinct nombresuc
FROM t.prestamo;
*/

/*
(SELECT ci
FROM t.deposito
WHERE nombresuc = 'Occidente')
UNION
(SELECT ci
FROM t.prestamo
WHERE nombresuc = 'Occidente');
*/

/*
(SELECT ci
FROM t.prestamo)
except
(SELECT ci
FROM t.deposito);
*/

/*
SELECT t.pieza.pnum, ciudad_alm
	FROM t.pieza, t.precio
	WHERE preciop = preciop_sug
		AND t.precio.pnum = t.pieza.pnum;
*/

/*
(SELECT ci
FROM t.prestamo)
INTERSECT
(SELECT ci
FROM t.deposito);

SELECT ci
FROM t.prestamo
WHERE ci
IN
(SELECT ci
FROM t.deposito);
*/

/*
SELECT ci
FROM t.prestamo
WHERE ci 
NOT IN
(SELECT ci
FROM t.deposito);
*/

/*
SELECT p.ci
FROM t.prestamo p, t.prestamo s
WHERE p.nombresuc = s.nombresuc
AND s.ci = '21114828';
*/

SELECT C.direccion
FROM t.cuentahabiente C, t.prestamo
WHERE t.prestamo.ci = C.ci;
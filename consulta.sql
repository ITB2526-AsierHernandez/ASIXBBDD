USE tech_summit;
SELECT nom,cognom FROM dades_ponent WHERE id=1;
SELECT nom,cognom FROM dades_ponent WHERE id <= 4;
SELECT nom,cognom FROM dades_ponent WHERE id % 2 = !0;
SELECT nom,cognom FROM dades_ponent WHERE id % 2 = 0;
SELECT nom,cognom FROM dades_ponent WHERE id IN (1,2,3);
SELECT count(nom) FROM dades_ponent WHERE cognom = "rovira";
SELECT count(nom) AS persones FROM dades_ponent WHERE nom = "anna" AND cognom = "rovira";
SELECT nom FROM dades_ponent WHERE nom = "anna" OR cognom = "rovira" GROUP BY nom;
SELECT count(*) AS cuenta FROM dades_ponent WHERE nom = "anna" OR cognom = "rovira" GROUP BY nom;
SELECT count(*) AS cuenta FROM dades_ponent WHERE nom = "anna" OR cognom = "rovira" ORDER BY count(*);
SELECT CONCAT(nom,' ',cognom) AS "Nombre y apellido" FROM dades_ponent;
SELECT SUBSTRING(nom,1,3) AS "3 primeras letras mas fecha", CURRENT_DATE AS "FECHA" FROM dades_ponent;
SELECT CURRENT_DATE() FROM DUAL;
SELECT 18+3 FROM DUAL;
ALTER TABLE dades_ponent ADD level INT;
alter table dades_ponent ADD COLUMN ordinadors int check (ordinadors >= 0 AND ordinadors <= 4);
alter table dades_ponent ADD COLUMN rate int check (rate BETWEEN 5 AND 10);
UPDATE dades_ponent
SET 
    ordinadors = FLOOR(1 + RAND() * 4),   -- valores entre 1 y 4
    rate = FLOOR(5 + RAND() * 6);
SELECT * FROM dades_ponent;
SHOW FUNCTION STATUS WHERE name = 'MD5';
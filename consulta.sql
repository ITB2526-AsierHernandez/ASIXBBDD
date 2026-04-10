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

ALTER table sessio add column tiempo INT;

INSERT INTO sessio (titol, sala, hora) VALUES
('innovación en inteligencia artificial', 'sala a', '09:00:00'),
('blockchain y seguridad', 'sala b', '09:45:00'),
('desarrollo móvil nativo', 'sala c', '10:30:00'),
('experiencia de usuario y accesibilidad', 'sala d', '11:15:00'),
('cloud computing para pymes', 'sala a', '12:00:00'),
('automatización con python', 'sala b', '12:45:00'),
('data science práctico', 'sala c', '13:30:00'),
('transformación digital segura', 'sala d', '14:15:00'),
('machine learning en producción', 'sala a', '15:00:00'),
('iot y ciudades inteligentes', 'sala b', '15:45:00'),
('ciberseguridad en la nube', 'sala c', '16:30:00'),
('arquitectura de microservicios', 'sala d', '17:15:00'),
('desarrollo web con frameworks', 'sala a', '18:00:00'),
('bases de datos avanzadas', 'sala b', '18:45:00'),
('tendencias en e-commerce', 'sala c', '19:30:00'),
('realidad aumentada aplicada', 'sala d', '20:15:00'),
('optimización de rendimiento', 'sala a', '20:45:00'),
('estrategias de devops', 'sala b', '21:15:00'),
('marketing digital analytics', 'sala c', '21:45:00'),
('ética y tecnología', 'sala d', '22:15:00');

UPDATE sessio SET tiempo = FLOOR(1 + RAND() * 3) * 15 + 15;
SELECT * FROM sessio;



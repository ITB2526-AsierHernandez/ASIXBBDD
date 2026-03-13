SELECT nom,cognom FROM dades_ponent WHERE id=1;
SELECT nom,cognom FROM dades_ponent WHERE id <= 4;
SELECT nom,cognom FROM dades_ponent WHERE id % 2 = !0;
SELECT nom,cognom FROM dades_ponent WHERE id % 2 = 0;
SELECT nom,cognom FROM dades_ponent WHERE id IN (1,2,3);
SELECT count(nom) FROM dades_ponent WHERE cognom = "rovira";
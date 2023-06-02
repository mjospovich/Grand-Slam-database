-- top3 igraca s najmanje neforsiranih gresaka
CREATE VIEW NajmanjeNeForsiraniGreskiView AS
SELECT i.ime, i.prezime, SUM(mi.neforsirane_greske) AS "Neforsirane greske"
FROM "MecIgrac" mi
JOIN "Igrac" i ON mi.id_igraca = i.id_igraca
GROUP BY i.ime, i.prezime
ORDER BY "Neforsirane greske"
LIMIT 3;


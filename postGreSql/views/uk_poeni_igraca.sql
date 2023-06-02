-- ukupni poeni svih igraca na turniru
CREATE VIEW ukupniPoeniView AS
SELECT id_igraca, SUM(osvojeni_poeni) AS "Ukupni poeni"
FROM "MecIgrac"
GROUP BY id_igraca;

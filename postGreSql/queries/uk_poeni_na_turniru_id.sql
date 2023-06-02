-- ukupni poeni i ime, prezime na turniru za igraca s id 72
SELECT i.ime, i.prezime, SUM(mi.osvojeni_poeni) as "Ukupni poeni na turniru"
FROM "MecIgrac" mi
JOIN "Igrac" i ON mi.id_igraca = i.id_igraca
WHERE mi.id_igraca = 72
GROUP BY i.ime, i.prezime;

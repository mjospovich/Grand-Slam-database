-- igraci koji su igrali u finalu te njihovni osobni podaci
SELECT i.ime, i.prezime
FROM "Mec" m
JOIN "MecIgrac" mi ON m.id_meca = mi.id_meca
JOIN "Igrac" i ON mi.id_igraca = i.id_igraca
WHERE m.stadij = 'finale';

-- id svih mečeva u kojima je igrao "Doombros"
SELECT "id_meca" FROM "MecIgrac"
JOIN "Igrac" ON "MecIgrac".id_igraca = "Igrac".id_igraca
WHERE "Igrac".prezime = 'Doombros';
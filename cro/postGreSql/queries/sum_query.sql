SELECT * FROM "MecIgrac"
WHERE id_igraca = 72;

-- ukupni poeni za igraca sa id 72 na turniru
SELECT SUM(osvojeni_poeni) as ukupni_poeni FROM "MecIgrac"  WHERE id_igraca = 72;

-- uspjesnost servisa za igraca id 72 na turniru
-- SELECT SUM(CAST(uspjesni_servisi AS float) / (CAST((neuspjesni_servisi + uspjesni_servisi) as float)) FROM "MecIgrac"  WHERE id_igraca = 72;

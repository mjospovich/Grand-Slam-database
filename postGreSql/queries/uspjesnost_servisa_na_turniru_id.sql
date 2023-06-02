-- uspjesnost servisa na turniru za igraca s id-om 54
SELECT 
    (CAST(SUM(uspjesni_servisi) AS float) / (CAST(SUM(uspjesni_servisi) AS float) + CAST(SUM(neuspjesni_servisi) AS float))) * 100
	AS "Uspjesnost servisa (%)"
FROM 
    "MecIgrac"
WHERE 
    id_igraca = 54;



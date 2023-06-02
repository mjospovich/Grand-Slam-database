-- detalji o mecevima u kojima je sudio sudac imena "Tihomir"
SELECT m.* FROM "Mec" m
JOIN "MecSudac" ms ON m.id_meca = ms.id_meca
JOIN "Sudac" s ON ms.id_suca = s.id_suca
WHERE s.ime = 'Tihomir' AND m.id_meca IN (
  SELECT id_meca
  FROM "MecSudac"
  JOIN "Sudac" ON "MecSudac".id_suca = "Sudac".id_suca
  WHERE "Sudac".ime = 'Tihomir'
);
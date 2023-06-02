-- info za suca koji sudi finale
CREATE VIEW SudacFinaleView AS
SELECT s.*
FROM "Sudac" s
JOIN "MecSudac" ms ON s.id_suca = ms.id_suca
JOIN "Mec" m ON m.id_meca = ms.id_meca
WHERE m.stadij = 'finale';

Select * from "MecIgrac"
where (select "id_igraca" from "Igrac" where "prezime" = 'Listic') = "id_igraca"
AND id_meca = 2;
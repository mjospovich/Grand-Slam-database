Select "id_meca", "osvojeni_setovi",
(select "prezime" from "Igrac" where "id_igraca" = "MecIgrac"."id_igraca")
from "MecIgrac"
order by "id_meca", "osvojeni_setovi" desc;
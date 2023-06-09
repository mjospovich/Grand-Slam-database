Select "id_meca", SUM("osvojeni_poeni") as "ukupni poeni",
SUM("forsirane_greske") as "ukupne forsirane greske",
SUM("neforsirane_greske") as "ukupne neforsirane greske"
from "MecIgrac"

group by "id_meca";

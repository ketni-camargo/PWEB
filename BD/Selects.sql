
----quantidade de curtidas das receitas
--De que forma iremos utilizar?



select
	r.nomeReceita
	,count(fk_id_receita) as 'Quantidade_curtidas'
from TB_Info_Curtidas		ic
INNER JOIN TB_Receita		r on	ic.fk_id_receita = r.id_receita
GROUP BY ic.fk_id_receita, r.nomeReceita;





select     
	ls.SIRUTA 	"cod SIRUTA localitate",     
    c1.COD 		"cod MFP localitate",     
    c1.TPL_COD 	"cod tip localitate",     
    t1.DENUMIRE "tip localitate",     
    (case
    		when strcmp( c1.tpl_cod , 'Com') = 0 then 'Com. '
    		when strcmp( c1.tpl_cod , 'Sat') = 0 then 'Sat '
    		when strcmp( c1.tpl_cod , 'Mun') = 0 then 'Mun. '
    		when strcmp( c1.tpl_cod , 'MRJ') = 0 then 'Mun. '
   			when strcmp( c1.tpl_cod , 'Orş') = 0 then 'Orş. '
    		when strcmp( c1.tpl_cod , 'Loc') = 0 then 'Loc. '
    		when strcmp( c1.tpl_cod , 'Sec') = 0 then 'Sector '
    		else 'Loc. '
     end) || c1.denumire "localitate",     
    c1.COD_POSTAL,     
    ls.SIRSUP 	"cod SIRUTA parinte",     
    c2.COD 		"cod MFP localitate parinte",     
    c2.TPL_COD 	"cod tip localitate parinte",     
    t2.DENUMIRE "tip localitate parinte",     
    (case 
     		when c1.loc_cod is null then null
     		else ' '|| (case
                              when strcmp( c2.tpl_cod , 'MRJ') = 0 then 'Mun'
                              else c2.tpl_cod
                        end)  
     end) ||'. '||c2.denumire "localitate parinte"  ,     
    c1.SAR_COD, 
    s.NUME_STARE 
from       
	(select * from nomen.nom_localitati where sar_cod<>'D'and TPL_COD<>trim('?')) c1,       
    nomen.nom_localitati c2,      
    nomen.nom_siruta LS,      
    nomen.nom_stari_artere_mf S,      
    nomen.nom_tip_localitati T1,   
    nomen.nom_tip_localitati T2 
where          
	c1.loc_cod = c2.cod and c1.loc_jud_cod = c2.jud_cod   
    and  s.COD = c1.SAR_COD            
    and  c1.tpl_cod = t1.COD and c2.tpl_cod = t2.COD     
    and  c1.cod_postal = ls.codp and  c1.jud_cod = ls.jud     
    and  c1.JUD_COD = 1 and t1.cod in ('MRJ','Mun'); 
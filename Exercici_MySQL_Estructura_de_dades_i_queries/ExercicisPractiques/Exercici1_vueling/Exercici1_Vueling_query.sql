USE m5_exercici1_Vueling;

SELECT avions.id_avio, avions.model, clients.nom, clients.cognom FROM avions
INNER JOIN seients ON avions.id_avio = seients.id_avio
INNER JOIN clients ON seients.id_client = clients.id_client;
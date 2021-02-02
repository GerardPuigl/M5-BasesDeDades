//Escriu una consulta per trobar els restaurants quins no preparen cap cuisine de 'American ' 
//i va aconseguir un punt de grau 'A' no pertany a Brooklyn. S'ha de mostrar el document segons la cuisine en ordre descendent

db.Restaurants.find({ cuisine: { $not: /American/ }, borough: { $not: /Brooklyn/ }, "grades.grade": "A" }, { cuisine: true }).sort({ cuisine: 1 }).pretty()


//Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants quin contenir 'Wil' com les tres primeres lletres en el seu nom

db.Restaurants.find({ name: /Will/ }, { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()

db.Restaurants.find({ name: /^Will/ }, { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty() //no dona resultats ja que el nom comença per The Will...


//Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants quin contenir 'ces' com les últim tres lletres en el seu nom

db.Restaurants.find({ name: /ces$/ }, { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()


//Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants quin contenir 'Reg' com tres lletres en algun lloc en el seu nom

db.Restaurants.find({ name: /Reg/i }, { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()
//nota: la i es per ignorar majúscules o minúscules


//Escriu una consulta per trobar els restaurants quins pertanyen al Bronx i va preparar qualsevol plat American o xinès

db.Restaurants.find({ borough: "Bronx", $or: [{ cuisine: /American/ }, { cuisine: /Chinese/ }] }).pretty()


//Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants que pertanyen a Staten Island o Queens o Bronx or Brooklyn

db.Restaurants.find({ $or: [{ borough: "Staten Island" }, { borough: "Queens" }, { borough: "Bronx" }, { borough: "Brooklyn" }] },
    { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()


//Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants que no pertanyen a Staten Island o Queens o Bronx or Brooklyn

db.Restaurants.find({ $and: [{ borough: { $ne: "Staten Island" } }, { borough: { $ne: "Queens" } }, { borough: { $ne: "Bronx" } }, { borough: { $ne: "Brooklyn" } }] },
    { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()


//Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants que aconsegueixin un marcador quin no és més que 10

db.Restaurants.find({ "grades.score": { $lt: 10 } }, { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()


//Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants que preparen peix excepte 'American'
//i 'Chinees' o el name del restaurant comença amb lletres 'Wil'

db.Restaurants.find({ $or: [{ "$and": [{ "cuisine": "Seafood" },{ "cuisine": { $ne: "American " } }, { "cuisine": { $ne: "Chinees" } }] }, { name: /Wil/ }] },
    { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()
//nota: No acabo d'entendre on cal filtrar això del peix, he aplicat el filtre a Seafood.


//Escriu una consulta per trobar el restaurant_id, name, i grades per a aquells restaurants que aconsegueixin un grau "A"
//i un score 11 en dades d'estudi ISODate "2014-08-11T00:00:00Z"

db.Restaurants.find({ "grades": { "date": new ISODate("2014-08-11T00:00:00Z"), "grade": "A", "score": 11 } },
    { restaurant_id: true, name: true, "grades.score": true }).pretty()
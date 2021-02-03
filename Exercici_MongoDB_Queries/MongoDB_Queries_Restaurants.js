//Exercici: MongoDB queries

//1. Escriu una consulta per mostrar tots els documents en la col·lecció Restaurants

    db.Restaurants.find().pretty()

//2. Escriu una consulta per mostrar el restaurant_id, name, borough i cuisine per tots els documents en la col·lecció Restaurants

    db.Restaurants.find({}, { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()

//3. Escriu una consulta per mostrar el restaurant_id, name, borough i cuisine, però excloure el camp _id per tots els documents en la col·lecció Restaurants

    db.Restaurants.find({}, { _id: false, restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()

//4. Escriu una consulta per mostrar restaurant_id, name, borough i zip code, però excloure el camp _id per tots els documents en la col·lecció Restaurants

    db.Restaurants.find({}, { _id: false, restaurant_id: true, name: true, borough: true, "address.zipcode": true }).pretty()

//5. Escriu una consulta per mostrar tot els restaurants que estan en el Bronx

    db.Restaurants.find({ borough: "Bronx" }).pretty()

//6. Escriu una consulta per mostrar els primers 5 restaurants que estan en el Bronx

    db.Restaurants.find({ borough: "Bronx" }).limit(5).pretty()

//7. Escriu una consulta per mostrar el pròxim 5 restaurants després de saltar els primers 5 del Bronx

    db.Restaurants.find({ borough: "Bronx" }).skip(5).limit(5).pretty()

//8. Escriu una consulta per trobar els restaurants que tenen un score de més de 90

    db.Restaurants.find({ "grades.score": { $gt: 90 } })

//9. Escriu una consulta per trobar els restaurants que tenen un score de més que 80 però menys que 100

    db.Restaurants.find({ "grades.score": { $gt: 80, $lt: 100 } })

//10. Escriu una consulta per trobar els restaurants quins localitzen en valor de latitud menys que - 95.754168

    db.Restaurants.find({ "address.coord.0": { $lt: - 95.754168 } })

//11. Escriu una consulta de MongoDB per a trobar els restaurants que no preparen cap cuisine de 'American' 
//i el seu puntaje de qualificació superior a 70 i latitud inferior a - 65.754168

    db.Restaurants.find({ $and: [{ cuisine: { $not: /American/ }, "grades.score": { $gt: 70 }, "address.coord.0": { $lt: - 65.754168 } }] })
    db.Restaurants.find({ $and: [{ cuisine: { $ne: "American " }, "grades.score": { $gt: 70 }, "address.coord.0": { $lt: - 65.754168 } }] })

//12. Escriu una consulta per trobar els restaurants quins no preparen cap cuisine de 'American' 
//i va aconseguir un marcador més que 70 i localitzat en la longitud menys que - 65.754168.Nota : Fes aquesta consulta sense utilitzar $and operador

    db.Restaurants.find({ cuisine: { $not: /American/ }, "grades.score": { $gt: 70 }, "address.coord.0": { $lt: - 65.754168 } })
    db.Restaurants.find({ cuisine: { $ne: "American " }, "grades.score": { $gt: 70 }, "address.coord.0": { $lt: - 65.754168 } })

//13. Escriu una consulta per trobar els restaurants quins no preparen cap cuisine de 'American ' 
//i va aconseguir un punt de grau 'A' no pertany a Brooklyn. S'ha de mostrar el document segons la cuisine en ordre descendent

    db.Restaurants.find({ cuisine: { $not: /American/ }, borough: { $not: /Brooklyn/ }, "grades.grade": "A" }, { cuisine: true }).sort({ cuisine: 1 }).pretty()

//14. Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants quin contenir 'Wil' com les tres primeres lletres en el seu nom

    db.Restaurants.find({ name: /Will/ }, { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()

    db.Restaurants.find({ name: /^Will/ }, { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty() //no dona resultats ja que el nom comença per The Will...


//15. Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants quin contenir 'ces' com les últim tres lletres en el seu nom

    db.Restaurants.find({ name: /ces$/ }, { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()

//16. Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants quin contenir 'Reg' com tres lletres en algun lloc en el seu nom

    db.Restaurants.find({ name: /Reg/i }, { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()
//nota: la i es per ignorar majúscules o minúscules

//17. Escriu una consulta per trobar els restaurants quins pertanyen al Bronx i va preparar qualsevol plat American o xinès

    db.Restaurants.find({ borough: "Bronx", $or: [{ cuisine: /American/ }, { cuisine: /Chinese/ }] }).pretty()

//18. Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants que pertanyen a Staten Island o Queens o Bronx or Brooklyn

    db.Restaurants.find({ $or: [{ borough: "Staten Island" }, { borough: "Queens" }, { borough: "Bronx" }, { borough: "Brooklyn" }] },
    { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()

//19. Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants que no pertanyen a Staten Island o Queens o Bronx or Brooklyn

    db.Restaurants.find({ $and: [{ borough: { $ne: "Staten Island" } }, { borough: { $ne: "Queens" } }, { borough: { $ne: "Bronx" } }, { borough: { $ne: "Brooklyn" } }] },
    { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()

//20. Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants que aconsegueixin un marcador quin no és més que 10

    db.Restaurants.find({ "grades.score": { $lt: 10 } }, { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()


//21. Escriu una consulta per trobar el restaurant_id, name, borough i cuisine per a aquells restaurants que preparen peix excepte 'American'
//i 'Chinese' o el name del restaurant comença amb lletres 'Wil'

    db.Restaurants.find({ $or: [{ "$and": [{ "cuisine": "Seafood" }, { "cuisine": { $ne: "American " } }, { "cuisine": { $ne: "Chinese" } }] }, { name: /Wil/ }] },
    { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()
//nota: No acabo d'entendre on cal filtrar això del peix, he aplicat el filtre a Seafood.

//22. Escriu una consulta per trobar el restaurant_id, name, i grades per a aquells restaurants que aconsegueixin un grau "A"
//i un score 11 en dades d'estudi ISODate "2014-08-11T00:00:00Z"

    db.Restaurants.find({ "grades": { "date": new ISODate("2014-08-11T00:00:00Z"), "grade": "A", "score": 11 } },
    { restaurant_id: true, name: true, "grades.score": true }).pretty()

//23. Escriu una consulta per trobar el restaurant_id, name i grades per a aquells restaurants on el 2n element de varietat de graus conté un grau de "A" 
//i marcador 9 sobre un ISODate "2014-08-11T00:00:00Z"

    db.Restaurants.find({ "grades.1": { "date": new ISODate("2014-08-11T00:00:00Z"), "grade": "A", "score": 9 } },
        { restaurant_id: true, name: true, "grades.score": true }).pretty()

//24. Escriu una consulta per trobar el restaurant_id, name, adreça i ubicació geogràfica per a aquells restaurants on el segon element del array coord
//conté un valor quin és més que 42 i fins a 52

    db.Restaurants.find({ "address.coord.1": { $gt: 42, $lte: 52 } }, { restaurant_id: true, name: true, address: true }).pretty()

//25. Escriu una consulta per organitzar el nom dels restaurants en ordre ascendent juntament amb totes les columnes

    db.Restaurants.find().sort({ name: 1 }).pretty()

//26. Escriu una consulta per organitzar el nom dels restaurants en descendir juntament amb totes les columnes

    db.Restaurants.find().sort({ name: -1 }).pretty()

//27. Escriu una consulta a organitzar el nom de la cuisine en ordre ascendent i per el mateix barri de cuisine. Ordre descendint

    db.Restaurants.find().sort({ cuisine: 1, borough: -1 }).pretty()

//28. Escriu una consulta per saber tant si totes les direccions contenen el carrer o no

    db.Restaurants.find({ "address.street": { $exists: false } }).pretty()
    db.Restaurants.find({ "address.street": null }).pretty()

//29. Escriu una consulta quin seleccionarà tots el documents en la col·lecció de restaurants on el valor del camp coord és Double

    db.Restaurants.find({ "address.coord": { $type: "double" } }).pretty()

//30. Escriu una consulta quin seleccionarà el restaurant_id, name i grade per a aquells restaurants quins retorns 0 com a resta després de dividir el marcador per 7

    db.Restaurants.find({ $and: [{ "grades.score": { $ne: 0 } }, { "grades.score": { $mod: [7, 0] } }] }, { "restaurant_id": true, "name": true, "grades": true });

//31. Escriu una consulta per trobar el name de restaurant, borough, longitud i altitud i cuisine per a aquells restaurants que contenen 'mon' com tres lletres en algun lloc del seu name

    db.Restaurants.find({ name: /mon/ }, { name: true, borough: true, "address.coord": true, cuisine: true }).pretty()

//32. Escriu una consulta per trobar el name de restaurant, borough, longitud i latitud i cuisine per a aquells restaurants que conteinen 'Mad' com primeres tres lletres del seu name

    db.Restaurants.find({ name: /^Mad/ }, { name: true, borough: true, "address.coord": true, cuisine: true }).pretty()

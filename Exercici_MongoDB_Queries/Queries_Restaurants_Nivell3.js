//Escriu una consulta per trobar el restaurant_id, name i grades per a aquells restaurants on el 2n element de varietat de graus conté un grau de "A" i marcador 9 sobre un ISODate "2014-08-11T00:00:00Z"

db.Restaurants.find({ "grades.1": { "date": new ISODate("2014-08-11T00:00:00Z"), "grade": "A", "score": 9 } },
    { restaurant_id: true, name: true, "grades.score": true }).pretty()

//Escriu una consulta per trobar el restaurant_id, name, adreça i ubicació geogràfica per a aquells restaurants on el segon element del array coord conté un valor quin és més que 42 i fins a 52

db.Restaurants.find({ "address.coord.1": { $gt: 42, $lte: 52 } }, { restaurant_id: true, name: true, address: true }).pretty()


//Escriu una consulta per organitzar el nom dels restaurants en ordre ascendent juntament amb totes les columnes

db.Restaurants.find().sort({ name: 1 }).pretty()

//Escriu una consulta per organitzar el nom dels restaurants en descendir juntament amb totes les columnes

db.Restaurants.find().sort({ name: -1 }).pretty()

//Escriu una consulta a organitzar el nom de la cuisine en ordre ascendent i per el mateix barri de cuisine. Ordre descendint

db.Restaurants.find().sort({ cuisine: 1, borough: -1 }).pretty()


//Escriu una consulta per saber tant si totes les direccions contenen el carrer o no

db.Restaurants.find({ "address.street": { $exists: false } }).pretty()
db.Restaurants.find({ "address.street": null }).pretty()


//Escriu una consulta quin seleccionarà tots el documents en la col·lecció de restaurants on el valor del camp coord és Double

db.Restaurants.find({ "address.coord": { $type: "double" } }).pretty()


//Escriu una consulta quin seleccionarà el restaurant_id, name i grade per a aquells restaurants quins retorns 0 com a resta després de dividir el marcador per 7

    //nota: crec que falta algun element que resti en l'enunciat per obtenir el 0.


//Escriu una consulta per trobar el name de restaurant, borough, longitud i altitud i cuisine per a aquells restaurants que contenen 'mon' com tres lletres en algun lloc del seu name

db.Restaurants.find({ name: /mon/ }, { name: true, borough: true, "address.coord": true, cuisine: true }).pretty()


//Escriu una consulta per trobar el name de restaurant, borough, longitud i latitud i cuisine per a aquells restaurants que conteinen 'Mad' com primeres tres lletres del seu name

db.Restaurants.find({ name: /^Mad/ }, { name: true, borough: true, "address.coord": true, cuisine: true }).pretty()

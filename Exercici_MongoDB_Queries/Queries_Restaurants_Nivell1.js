//Escriu una consulta per mostrar tots els documents en la col·lecció Restaurants

db.Restaurants.find().pretty()

//Escriu una consulta per mostrar el restaurant_id, name, borough i cuisine per tots els documents en la col·lecció Restaurants

db.Restaurants.find({}, { restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()

//Escriu una consulta per mostrar el restaurant_id, name, borough i cuisine, però excloure el camp _id per tots els documents en la col·lecció Restaurants

db.Restaurants.find({}, { _id: false, restaurant_id: true, name: true, borough: true, cuisine: true }).pretty()

//Escriu una consulta per mostrar restaurant_id, name, borough i zip code, però excloure el camp _id per tots els documents en la col·lecció Restaurants

db.Restaurants.find({}, { _id: false, restaurant_id: true, name: true, borough: true, "address.zipcode": true }).pretty()

//Escriu una consulta per mostrar tot els restaurants que estan en el Bronx

db.Restaurants.find({ borough: "Bronx" }).pretty()

//Escriu una consulta per mostrar els primers 5 restaurants que estan en el Bronx

db.Restaurants.find({ borough: "Bronx" }).limit(5).pretty()

//Escriu una consulta per mostrar el pròxim 5 restaurants després de saltar els primers 5 del Bronx

db.Restaurants.find({ borough: "Bronx" }).skip(5).limit(5).pretty()

//Escriu una consulta per trobar els restaurants que tenen un score de més de 90

db.Restaurants.find({ "grades.score": { $gt: 90 } })

//Escriu una consulta per trobar els restaurants que tenen un score de més que 80 però menys que 100

db.Restaurants.find({ "grades.score": { $gt: 80, $lt: 100 } })

//Escriu una consulta per trobar els restaurants quins localitzen en valor de latitud menys que - 95.754168

db.Restaurants.find({ "address.coord.0": { $lt: - 95.754168 } })

//Escriu una consulta de MongoDB per a trobar els restaurants que no preparen cap cuisine de 'American' 
//i el seu puntaje de qualificació superior a 70 i latitud inferior a - 65.754168

db.Restaurants.find({ $and: [{ cuisine: { $not: /American/ }, "grades.score": { $gt: 70 }, "address.coord.0": { $lt: - 65.754168 } }] })
db.Restaurants.find({ $and: [{ cuisine: { $ne: "American " }, "grades.score": { $gt: 70 }, "address.coord.0": { $lt: - 65.754168 } }] })

//Escriu una consulta per trobar els restaurants quins no preparen cap cuisine de 'American' 
//i va aconseguir un marcador més que 70 i localitzat en la longitud menys que - 65.754168.Nota : Fes aquesta consulta sense utilitzar $and operador

db.Restaurants.find({ cuisine: { $not: /American/ }, "grades.score": { $gt: 70 }, "address.coord.0": { $lt: - 65.754168 } })
db.Restaurants.find({ cuisine: { $ne: "American " }, "grades.score": { $gt: 70 }, "address.coord.0": { $lt: - 65.754168 } })



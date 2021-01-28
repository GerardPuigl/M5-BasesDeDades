USE m5_nivell1_pizzeria;

-- Consulta compra d'un client --

SELECT
    client_name AS Nom_client,
    client_surname AS Cognom_client,
    client_telefon AS Telefon_client,
    worker_name AS Entregat_per,
    ( 	CASE
			WHEN product_type = 'Pizza' THEN pizza_name
			WHEN product_type = 'Hamburgesa' THEN hamburger_name
            WHEN product_type = 'Beguda' THEN beverage_name
		END
	)  AS Products,
     ( 	CASE
			WHEN product_type = 'Pizza' THEN pizza_price
			WHEN product_type = 'Hamburgesa' THEN hamburger_price
            WHEN product_type = 'Beguda' THEN beverage_price
		END
	)  AS Price
    
FROM
    Orders
        LEFT JOIN
    Clients ON Orders.Clients_client_id = Clients.client_id
		LEFT JOIN
	Deliveries ON Orders.Deliveries_delivery_id = Deliveries.delivery_id
		LEFT JOIN
	Workers ON Deliveries.Workers_worker_id = Workers.worker_id
		LEFT JOIN
	ProductsAtOrder ON ProductsAtOrder.Order_order_id = Orders.order_id
		LEFT JOIN
	Products ON Products.products_id = ProductsAtOrder.Products_products_id
		LEFT JOIN
	Pizza ON Pizza.Products_products_id = Products.products_id
		LEFT JOIN
	Hamburgers ON Hamburgers.Products_products_id = Products.products_id 
		LEFT JOIN
	Beverage ON Beverage.Products_products_id = Products.products_id
    
WHERE
    order_id = 1;

-- Consulta direcció d'entrega pel repartidor

SELECT
client_name,
client_surname,
client_telefon,
adress_street,
adress_number,
adress_floor,
adress_door,
city_name,
city_zip

FROM
    Orders
        LEFT JOIN
    Clients ON Orders.Clients_client_id = Clients.client_id
        LEFT JOIN
    Adresses ON Adresses.adress_id = Clients.Adressess_adress_id
		LEFT JOIN
	Cities ON Cities.city_id = Adresses.Cities_cities_id
		LEFT JOIN
    Provinces ON  Provinces.province_id = Cities.Provinces_privince_id 
    
WHERE
order_id=1;

-- Consulta tota la carta de productes --

SELECT
    ( 	CASE
			WHEN product_type = 'Pizza' THEN pizza_name
			WHEN product_type = 'Hamburgesa' THEN hamburger_name
            WHEN product_type = 'Beguda' THEN beverage_name
		END
	)  AS Products,
        ( 	CASE
			WHEN product_type = 'Pizza' THEN pizza_description
			WHEN product_type = 'Hamburgesa' THEN hamburger_description
            WHEN product_type = 'Beguda' THEN beverage_description
		END
	)  AS Description,
            ( 	CASE
			WHEN product_type = 'Pizza' THEN categoryPizza_name
		END
	)  AS Categoria,
     ( 	CASE
			WHEN product_type = 'Pizza' THEN pizza_price
			WHEN product_type = 'Hamburgesa' THEN hamburger_price
            WHEN product_type = 'Beguda' THEN beverage_price
		END
	)  AS Price
FROM 
	Products
		LEFT JOIN
	Pizza ON Pizza.Products_products_id = Products.products_id
   		LEFT JOIN
	categoryPizza ON categoryPizza.categoryPizza_id = Pizza.categoryPizza_categoryPizza_id    
		LEFT JOIN
	Hamburgers ON Hamburgers.Products_products_id = Products.products_id 
		LEFT JOIN
	Beverage ON Beverage.Products_products_id = Products.products_id
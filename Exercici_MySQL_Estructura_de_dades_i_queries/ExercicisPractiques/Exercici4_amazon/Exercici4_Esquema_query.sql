USE m5_exercici4_amazon;

SELECT salesrecord.create_time,username,email,book_name,author_name,author_surname,book_price FROM salesrecord
	INNER JOIN users ON salesrecord.users_user_id=user_id 
	INNER JOIN bookcatalog ON salesrecord.BookCatalog_book_id=bookcatalog.book_id
	INNER JOIN authors ON bookcatalog.Authors_author_id=authors.author_id
   	WHERE user_id=1;
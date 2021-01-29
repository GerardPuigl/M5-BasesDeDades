USE m5_nivell3_spotify;

--  seleccionar informació usuari 1 i pagaments --

SELECT 
    *
FROM
    user
        LEFT JOIN
    subscription ON subscription.subscription_id = user.user_id
        LEFT JOIN
    payments ON payments.subscription_subscription_id = subscription.subscription_id
WHERE
    user_id = 1;

--  seleccionar cançons favorites per usuari --

SELECT 
    user_name, song_title, album_title, artist_name
FROM
    user
        LEFT JOIN
    favoriteSongs ON favoriteSongs.user_user_id = user.user_id
        LEFT JOIN
    song ON song.song_id = favoriteSongs.song_song_id
        LEFT JOIN
    album ON album_album_id = song.album_album_id
        LEFT JOIN
    artist ON artist.artist_id = album.artist_artist_id;

-- mostrar tota la musica del catàleg --

SELECT 
    *
FROM
    song
        INNER JOIN
    album ON album.album_id = song.album_album_id
        INNER JOIN
    artist ON artist.artist_id = album.artist_artist_id;
    
-- seleccionar una canço amb una paraula al titol --

SELECT 
    *
FROM
    song
        INNER JOIN
    album ON album.album_id = song.album_album_id
        INNER JOIN
    artist ON artist.artist_id = album.artist_artist_id
WHERE
    song_title LIKE '%Soul%';
USE m5_nivell2_youtube;

-- informació usuari, els seus canals i playlists --

SELECT 
    *
FROM
    users
        LEFT JOIN
    channels ON channels.users_user_id = users.user_id
        LEFT JOIN
    playlist ON users.user_id = playlist.user_id
        LEFT JOIN
    videosAtPlaylist ON videosAtPlaylist.playlist_playlist_id = playlist.playlist_id
        LEFT JOIN
    videos ON videos.video_id = videosAtPlaylist.videos_video_id
WHERE
    users.user_id = 1;

-- informació de tots els vídeo, tags, commentaris i likes --

SELECT 
    video_id,
    video_title,
    video_description,
    video_size,
    video_filename,
    video_duration,
    video_reproductions,
    video_likes,
    video_dislikes,
    video_status,
    user_name,
    channel_name,
    comment_text
FROM
    videos
        LEFT JOIN
    videos_has_tag ON videos_has_tag.videos_video_id = videos.video_id
        LEFT JOIN
    tags ON tags.tag_id = videos_has_tag.tag_tag_id
        LEFT JOIN
    users ON users.user_id = videos.users_user_id
        LEFT JOIN
    channels ON channels.users_user_id = videos.channel_channel_id
        LEFT JOIN
    comments ON comments.videos_video_id = videos.video_id


--SELECT * FROM Genre 

--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Rage Against The Machine', 1991)

--INSERT INTO Album (Title, ReleaseDate, AlbumLength, [Label], ArtistId, GenreId) VALUES ('The Battle of Los Angeles', '11/2/1999', 4516, 'Epic', 28, 13)

--DELETE FROM Album WHERE Id = 23

--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Sleep Now in the Fire', 325, '11/2/1999', 13, 28, 24)
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Born of a Broken Man', 440, '11/2/1999', 13, 28, 24)
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Guerilla Radio', 326, '11/2/1999', 13, 28, 24)

--SELECT so.Title AS SongTitle, al.Title AS AlbumTitle, ar.ArtistName FROM Album al
--LEFT JOIN Artist ar ON ar.Id = al.ArtistId
--LEFT JOIN Song so ON so.AlbumId = al.Id
--WHERE al.Id = 24

--SELECT al.Title,  COUNT(so.Id) FROM Album al 
--LEFT JOIN Song so ON so.AlbumId = al.Id
--GROUP BY al.Title

--SELECT ar.ArtistName, COUNT(so.Id) FROM Artist ar
--LEFT JOIN Song so ON so.ArtistId = ar.Id
--GROUP BY ar.ArtistName

--SELECT ge.[Label], COUNT(so.Id) FROM Genre ge
--LEFT JOIN Song so ON so.GenreId = ge.Id
--GROUP BY ge.[Label]

--SELECT al.Title, MAX(al.AlbumLength) AS AlbumLength FROM Album al
--GROUP BY al.Title
--ORDER BY AlbumLength DESC;

SELECT so.Title, MAX(so.SongLength) AS SongLength FROM Song so
GROUP BY so.Title
ORDER BY SongLength DESC;
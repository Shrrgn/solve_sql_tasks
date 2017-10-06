/* Fruitful Artists

Select artistid, name and count of albums
for the artists which have more than 5 albums.
*/
select artists.artistid, name, count(albums.artistid)
	from artists
	inner join albums on artists.artistid = albums.artistid
	group by  albums.artistid
	having count(albums.artistid) > 5;

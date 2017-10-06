/* Hot Genres

Select track count and names of the genres
for which we have more than 100 tracks available.
Show the most popular genres first.
*/
select count(tracks.genreid) as Quantity_tracks,
	genres.name as Genre
	from tracks
	inner join genres on genres.genreid = tracks.genreid
	group by tracks.genreid
	having Quantity_tracks > 100
	order by Quantity_tracks desc;

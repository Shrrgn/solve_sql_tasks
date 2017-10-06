/* Albums To Canada

Select distinct album titles, tracks from which where sold to
Canadian customers in the year of 2012.
*/
select distinct albums.title as Album
	from tracks
	inner join albums on tracks.albumid = albums.albumid
	inner join invoice_items on tracks.trackid = invoice_items.trackid
	inner join invoices on invoice_items.invoiceid = invoices.invoiceid
	inner join customers on invoices.customerid = customers.customerid
	where customers.country = 'Canada' and invoices.invoicedate like '2012%'
	order by Album;

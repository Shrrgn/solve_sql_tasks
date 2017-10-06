/* Tracks Sold

Calculate the number of unique (distinct) tracks sold in December 2013.
*/
select count(tracks.name) as Quantity
	from tracks
	inner join invoice_items on tracks.trackid = invoice_items.trackid
	inner join invoices on invoices.invoiceid = invoice_items.invoiceid
	where invoicedate like '2013-12%';


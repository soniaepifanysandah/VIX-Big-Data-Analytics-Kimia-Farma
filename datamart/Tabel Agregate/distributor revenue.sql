--- Create Table Aggregate
--- Table Distributor Revenue
CREATE TABLE IF NOT EXISTS distributor_revenue AS
(
	SELECT 
		id_distributor,
		COUNT(id_invoice) AS jumlah_transaksi,
		SUM(jumlah_barang) AS jumlah_produk_terjual,
		SUM(revenue) AS total_revenue
	FROM base_table
	GROUP BY 1
	ORDER BY 1 DESC);
	
ALTER TABLE distributor_revenue ALTER COLUMN jumlah_transaksi type int,
ALTER TABLE distributor_revenue ALTER COLUMN jumlah_produk_terjual type int;
--- Create Table Aggregate
--- Table Lini Revenue
CREATE TABLE IF NOT EXISTS lini_revenue AS
(
	SELECT 
		lini,
		COUNT(id_invoice) AS jumlah_transaksi,
		SUM(jumlah_barang) AS jumlah_produk_terjual,
		SUM(revenue) AS total_revenue
	FROM base_table
	GROUP BY 1
	ORDER BY 4 DESC);
	
ALTER TABLE lini_revenue ALTER COLUMN jumlah_transaksi type int,
ALTER TABLE lini_revenue ALTER COLUMN jumlah_produk_terjual type int;
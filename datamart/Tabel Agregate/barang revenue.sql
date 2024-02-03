--- Create Table Aggregate
--- Table Barang Revenue
CREATE TABLE IF NOT EXISTS barang_revenue AS
(
	SELECT 
		nama_barang,
		COUNT(id_invoice) AS jumlah_transaksi,
		SUM(jumlah_barang) AS jumlah_produk_terjual,
		SUM(revenue) AS total_revenue
	FROM base_table
	GROUP BY 1
	ORDER BY 4 DESC);
	
ALTER TABLE barang_revenue ALTER COLUMN jumlah_transaksi type int,
ALTER TABLE barang_revenue ALTER COLUMN jumlah_produk_terjual type int;
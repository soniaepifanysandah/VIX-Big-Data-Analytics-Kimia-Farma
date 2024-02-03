--- Create Table Aggregate
--- Table Cabang Sales Revenue
CREATE TABLE IF NOT EXISTS cabang_sales_revenue AS
(
	SELECT 
		cabang_sales,
		COUNT(id_invoice) AS jumlah_transaksi,
		SUM(jumlah_barang) AS jumlah_produk_terjual,
		SUM(revenue) AS total_revenue
	FROM base_table
	GROUP BY 1
	ORDER BY 4 DESC);
	
ALTER TABLE cabang_sales_revenue ALTER COLUMN jumlah_transaksi type int,
ALTER TABLE cabang_sales_revenue ALTER COLUMN jumlah_produk_terjual type int;
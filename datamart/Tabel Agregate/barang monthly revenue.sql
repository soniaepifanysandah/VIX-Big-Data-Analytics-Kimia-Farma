--- Create Table Aggregate
--- Table Barang Revenue per bulan
CREATE TABLE IF NOT EXISTS barang_monthly_revenue AS
(
	SELECT 
		CASE WHEN (date_part('month', tanggal)= 1) THEN 'Januari'
			 WHEN (date_part('month', tanggal)= 2) THEN 'Februari'
			 WHEN (date_part('month', tanggal)= 3) THEN 'Maret'
			 WHEN (date_part('month', tanggal)= 4) THEN 'April'
			 WHEN (date_part('month', tanggal)= 5) THEN 'Mei'
			 WHEN (date_part('month', tanggal)= 6) THEN 'Juni'
		END AS bulan,
		nama_barang,
		COUNT(id_invoice) AS jumlah_transaksi,
		SUM(jumlah_barang) AS jumlah_produk_terjual,
		SUM(revenue) AS total_revenue
	FROM base_table
	GROUP BY 1,2
	ORDER BY 1,5 DESC);

ALTER TABLE barang_monthly_revenue ALTER COLUMN bulan type character varying,
ALTER TABLE barang_monthly_revenue ALTER COLUMN jumlah_transaksi type int,
ALTER TABLE barang_monthly_revenue ALTER COLUMN jumlah_produk_terjual type int;
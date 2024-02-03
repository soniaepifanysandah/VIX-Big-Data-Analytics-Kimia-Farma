--- Create Base Table
CREATE TABLE base_table AS 
(
	SELECT
		pj.tanggal,
		pj.id_invoice,
		pj.id_distributor,
		pl.group,
		pl.nama AS nama_customer,
		br.lini,
		br.nama_barang,
		br.kemasan,
		pj.jumlah_barang,
		pj.harga,
		(pj.jumlah_barang * pj.harga) AS revenue,
		pl.cabang_sales		
	FROM penjualan AS pj
	LEFT JOIN pelanggan AS pl ON pj.id_customer = pl.id_customer
	LEFT JOIN barang AS br ON pj.id_barang = br.kode_barang
	ORDER BY 2
);

--- Determine Primary Key
ALTER TABLE base_table ADD PRIMARY KEY (id_invoice);

 
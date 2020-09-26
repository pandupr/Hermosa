USE Hermosa

--Transaksi Pembelian Gaun
--Penambahan transaksi pembelian yang dilakukan oleh Staff, dimana terdapat 2 transaksi di bulan Mei yang dilakukan oleh Staff ST001 yang bernama  Brellian Jordi, dan Staff ST005  yang bernama Keke Agnesia
INSERT INTO HeaderPurchaseTransaction
VALUES ('PD016', 'ST001', 'VD001', 'PY001', '2019/05/21'),
	   ('PD017', 'ST005', 'VD005', 'PY005', '2019/05/30')

INSERT INTO DetailPurchaseTransaction
VALUES ('PDD026', 'PD016', 'GW009', 3),
	   ('PDD027', 'PD017', 'GW007', 2)

--Transaksi Peminjaman Gaun
--Penambahan Transaksi Peminjaman oleh MM003 yang bernama Ivan Chandra dan MM004 yang bernama Kristen Stewart, yang dimana ST007 yang bernama Angel Vanessa dan ST005 yang bernama Keke Agnesia
INSERT INTO HeaderRentTransaction
VALUES ('RE016', 'ST007', 'MM003', '2019/06/15', '2019/06/22'),
	   ('RE017', 'ST005', 'MM004', '2019/06/18', '2019/06/28')

INSERT INTO DetailRentTransaction
VALUES ('RED026', 'RE016', 'GW010', 2),
		('RED027', 'RE017', 'GW007', 3)

--Penambahan Staff baru
INSERT INTO MsStaff
VALUES ('ST011', 'Edwart Han', 'Male', 7000000, 'HanEd@gmail.com', '+6281300247855', 'Jalan Belimbing Raya No.23C')

--Penambahan Member baru
INSERT INTO MsMember
VALUES ('MM011', 'Kayla Putri', '+6281756884431', 'Female', 'KayPutri@gmail.com')

--Penambahan Supplier baru
INSERT INTO MsSupplier
VALUES ('VD011', 'Novita Rachmawati', '+6281377435644', 'NovitaRach@gmail.com', 'Jalan Nanas No.12J')


--Transaksi baru dengan staff, member, dan supplier yang baru bergabung
INSERT INTO HeaderPurchaseTransaction
VALUES ('PD018', 'ST011', 'VD011', 'PY003', '2019/05/31')

INSERT INTO DetailPurchaseTransaction
VALUES ('PDD028', 'PD018', 'GW007', 3)

INSERT INTO HeaderRentTransaction
VALUES ('RE018', 'ST011', 'MM011', '2019/06/16', '2019/06/21'),
	   ('RE019', 'ST011', 'MM011', '2019/06/19', '2019/06/27')

INSERT INTO DetailRentTransaction
VALUES ('RED028', 'RE018', 'GW010', 2),
	   ('RED029', 'RE019', 'GW007', 3)

--Penambahan Gaun baru
INSERT INTO MsGown
VALUES ('GW011','GT011', 'Maxi Dress', 'White and Light Blue', 950000, 20)


--Penambahan Tipe Gaun baru
INSERT INTO MsGownType
VALUES ('GT011', 'Maxi Dress', 'Gaun yang sangat fleksibel ketika dipakai')


--Penambahan Metode Pembayaran
INSERT INTO MsPayment
VALUES ('PY011', 'OVO', 1650000),
	   ('PY012', 'GOPAY',1800000)


--Transaksi baru dengan data gaun, tipe gaun, dan metode pembayaran baru
INSERT INTO HeaderPurchaseTransaction
VALUES ('PD020', 'ST011', 'VD011', 'PY011', '2019/08/15')

INSERT INTO HeaderPurchaseTransaction
VALUES ('PD021', 'ST011', 'VD011', 'PY012', '2019/11/15')   


INSERT INTO DetailPurchaseTransaction
VALUES ('PDD030', 'PD020', 'GW011', 3)

INSERT INTO DetailPurchaseTransaction
VALUES ('PDD031', 'PD021', 'GW011', 1)
	   

INSERT INTO HeaderRentTransaction
VALUES ('RE020', 'ST011', 'MM011', '2019/12/15', '2019/12/22')

INSERT INTO DetailRentTransaction
VALUES ('RED030', 'RE020', 'GW011', 2)

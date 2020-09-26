USE Hermosa

--Table Staff(10 data)
INSERT INTO MsStaff 
VALUES	('ST001', 'Brellian Jordi', 'Male', 4000000, 'BrellianJordi@gmail.com', '+6287465235549', 'Jalan Panjang No.99 Kebon Jeruk'),
		('ST002', 'Yose Pratama', 'Male', 3500000, 'yosePratama@gmail.com', '+6281255533594', 'Jalan U No. 19 Kebon Jeruk'),
		('ST003', 'Kelvin', 'Male', 3550000, 'kelvin99@gmail.com', '+6281344462519', 'Jalan Kenangan No.23'),
		('ST004', 'Yeremiah Kevin', 'Male', 4000000, 'yeremiahKevin01@gmail.com', '+6281287494522','Jalan Semeru No.12'),
		('ST005', 'Keke Agnesia', 'Female', 3250000, 'kekeAgnesia@gmail.com', '+6281345192000', 'Jalan Bawal No.01'),
		('ST006', 'Fatimah Anggraeni', 'Female', 3850000, 'AnggraeniF@gmail.com', '+6281800664789', 'Jalan Hiu No.31'),
		('ST007', 'Angel Vanessa', 'Female', 8550000, 'AngelVannessa@gmail.com', '+6285477253642', 'Jalan Bawang Putih No.13'),
		('ST008', 'John Anderson', 'Male', 7550000, 'johnAnderson11@gmail.com', '+6281766662525', 'Jalan Hj. Baping No.16'),
		('ST009', 'Budi Setiawan', 'Male', 3540000, 'budiSetiawan@gmail.com', '+6281644772534', 'Jalan Bocor No. 18'),
		('ST010', 'Indah Pratiwi', 'Female', 3950000, 'PratiwiIndah@gmail.com', '+6287885566231', 'Jalan Gunung No.26')

--Table MsMember (10 data)
INSERT INTO MsMember
VALUES ('MM001', 'Pandu Prayoga', '+6287884477295', 'Male', 'pprayogak@gmail.com'),
		('MM002', 'Ilham Islami', '+6281245778552', 'Male', 'ilhamIslami@gmail.com'),
		('MM003', 'Ivan Chandra', '+6281325262447', 'Male', 'chandraIvan@gmail.com'),
		('MM004', 'Kristen Stewart', '+6281785565231', 'Female', 'kristenS11@gmail.com'),
		('MM005', 'Sandra Dewi', '+6281279895426', 'Female', 'sandraDewi89@gmail.com'),
		('MM006', 'George Paul', '+6281251634789', 'Male', 'PaulMEN@gmail.com'),
		('MM007', 'Cantika Eka', '+6281955772954', 'Female', 'CantikaEka11@gmail.com'),
		('MM008', 'Putri Vivi', '+6287877463125', 'Female', 'ViviPutri@gmail.com'),
		('MM009', 'Bambang Rafi', '+6281232255485', 'Male', 'bambang123@gmail.com'),
		('MM010', 'Yunita Nasution', '+6281266553296', 'Female', 'YunitaN@gmail.com')

--Table MsSupplier (10 data)
INSERT INTO MsSupplier
VALUES  ('VD001', 'Hamiz Akbar', '+6281377223663', 'AkbarH@gmail.com', 'Jalan Tenggiri No.18 Depok'),
		('VD002', 'Eugine Albert', '+6281754472321', 'AlbertEu@gmail.com', 'Jalan Palmerah No.12'),
		('VD003', 'Caca Paramitha', '+6281655882326', 'ParamithaCa@gmail.com', 'Jalan Tanah Merdeka No.99'),
		('VD004', 'Yogi Muhammad', '+6281245886522', 'YogiM@gmail.com', 'Jalan Kencana No.21'),
		('VD005', 'Hana Kalia', '+6281244776354', 'HanaKalia93@gmail.com', 'Jalan Bawang Putih No.33A'),
		('VD006', 'Anissa Gigi', '+6281756498720', 'gigiAnissa@gmail.com', 'Jalan Temulawak No.21'),
		('VD007', 'Brian Rey', '+6281932851166', 'ReyB@gmail.com', 'Jalan Salmon No.88A'),
		('VD008', 'Rezky Putri', '+6287844663388', 'RezkyPut@gmail.com', 'Jalan Apel No.19C'),
		('VD009', 'Akbar Muhammad', '+6281244552829', 'MuhammadAkbar@gmail.com', 'Jalan Manggis No.24B'),
		('VD010', 'Fajar Gustin', '+6281327463146', 'FajarGustin@gmail.com', 'Jalan Jeruk No.55')

--Table MsGown (10 data)
INSERT INTO MsGown
VALUES  ('GW001','GT001', 'Mermaid Style', 'Light Blue', 750000, 25),
		('GW002','GT002', 'A-line', 'Mustard', 700000, 25),
		('GW003','GT003','Tea Length', 'Black', 725000, 30),
		('GW004','GT004','Exaggerated', 'Red', 650000, 20),
		('GW005','GT005', 'Empire Waist', 'Cream', 750000, 20),
		('GW006','GT006','Jacket Gown', 'Olive', 600000, 25),
		('GW007','GT007','The Sheath', 'White', 850000, 20),
		('GW008','GT008','Ball Gown', 'White', 1000000, 25),
		('GW009','GT009', 'Princess Gown', 'Peach', 1000000, 25),
		('GW010','GT010', 'Asymmetrical', 'Green', 500000, 20)

--Table MsGownType(10 data)
INSERT INTO MsGownType
VALUES	('GT001', 'Mermaid Style', 'Gaun yang tampak seperti ekor putri duyung'),
		('GT002', 'A-line', 'Gaun dengan design mengembang ke pinggang'),
		('GT003', 'Tea Length','Gaun dengan panjang sebetis dan terkesan feminin'),
		('GT004', 'Exaggerated','Gaun berkilau terkesan mewah saat dipakai'),
		('GT005', 'Empire Waist','Gaun yang membuat tubuh terlihat tinggi'),
		('GT006', 'Jacket Gown','Gaun dengan jaket dan kesan elegan kepada pemakai'),
		('GT007', 'The Sheath','Gaun berdetail rok lurus ditengah betis'),
		('GT008', 'Ball Gown','Gown berdetail rok yang terlihat mekar'),
		('GT009', 'Princess Gown','Gaun klasik namun agak melebar ke bawah.'),
		('GT010', 'Asymmetrical','Gaun dengan design slim fit saat dipakai')

--Table HeaderPurchaseTransaction(15 data)
INSERT INTO HeaderPurchaseTransaction
VALUES	('PD001', 'ST001', 'VD001', 'PY001', '2019/01/01'),
		('PD002', 'ST002', 'VD002', 'PY002', '2019/01/05'),
		('PD003', 'ST003', 'VD003', 'PY003', '2019/01/07'),
		('PD004', 'ST004', 'VD004', 'PY004', '2019/01/14'),
		('PD005', 'ST005', 'VD005', 'PY005', '2019/01/17'),
		('PD006', 'ST006', 'VD006', 'PY006', '2019/01/22'),
		('PD007', 'ST007', 'VD007', 'PY007', '2019/01/29'),
		('PD008', 'ST008', 'VD008', 'PY008', '2019/02/10'),
		('PD009', 'ST009', 'VD009', 'PY009', '2019/02/13'),
		('PD010', 'ST010', 'VD010', 'PY010', '2019/02/19'),
		('PD011', 'ST003', 'VD003', 'PY003', '2019/05/01'),
		('PD012', 'ST005', 'VD005', 'PY005', '2019/05/15'),
		('PD013', 'ST007', 'VD007', 'PY007', '2019/05/18'),
		('PD014', 'ST008', 'VD008', 'PY008', '2019/06/22'),
		('PD015', 'ST009', 'VD009', 'PY009', '2019/06/28')

--Table MsPayment (10 data)
INSERT INTO MsPayment
VALUES  ('PY001', 'OVO',1950000),
		('PY002', 'CASH',1400000),
		('PY003', 'BCA',1500000),
		('PY004', 'OVO',1600000),
		('PY005', 'GOPAY',1350000),
		('PY006', 'CASH',2000000),
		('PY007', 'CASH',1700000),
		('PY008', 'BCA',1950000),
		('PY009', 'GOPAY',1750000),
		('PY010', 'BCA',1500000)

--Table DetailPurchaseTransaction (25 data)
INSERT INTO DetailPurchaseTransaction
VALUES  ('PDD001', 'PD001', 'GW001', 3),
		('PDD002', 'PD002', 'GW002', 1),
		('PDD003', 'PD003', 'GW003', 2),
		('PDD004', 'PD004', 'GW004', 4),
		('PDD005', 'PD005', 'GW005', 5),
		('PDD006', 'PD006', 'GW006', 1),
		('PDD007', 'PD007', 'GW007', 2),
		('PDD008', 'PD008', 'GW008', 4),
		('PDD009', 'PD009', 'GW009', 1),
		('PDD010', 'PD010', 'GW010', 2),
		('PDD011', 'PD011', 'GW001', 5),
		('PDD012', 'PD012', 'GW002', 3),
		('PDD013', 'PD013', 'GW003', 2),
		('PDD014', 'PD014', 'GW004', 3),
		('PDD015', 'PD015', 'GW005', 1),
		('PDD016', 'PD001', 'GW001', 5),
		('PDD017', 'PD002', 'GW002', 1),
		('PDD018', 'PD003', 'GW003', 4),
		('PDD019', 'PD004', 'GW004', 3),
		('PDD020', 'PD005', 'GW005', 2),
		('PDD021', 'PD006', 'GW006', 4),
		('PDD022', 'PD007', 'GW007', 3),
		('PDD023', 'PD008', 'GW008', 2),
		('PDD024', 'PD009', 'GW009', 1),
		('PDD025', 'PD010', 'GW010', 3)

--Table HeaderRentTransaction (15 data)
INSERT INTO HeaderRentTransaction
VALUES  ('RE001', 'ST001', 'MM001', '2019/04/15', '2019/04/22'),
		('RE002', 'ST002', 'MM002', '2019/05/15', '2019/05/20'),
		('RE003', 'ST003', 'MM003', '2019/06/13', '2019/06/20'),
		('RE004', 'ST004', 'MM004', '2019/06/15', '2019/06/22'),
		('RE005', 'ST005', 'MM005', '2019/07/02', '2019/07/09'),
		('RE006', 'ST006', 'MM006', '2019/07/04', '2019/07/11'),
		('RE007', 'ST007', 'MM007', '2019/07/12', '2019/07/19'),
		('RE008', 'ST008', 'MM008', '2019/07/15', '2019/07/23'),
		('RE009', 'ST009', 'MM009', '2019/07/17', '2019/07/24'),
		('RE010', 'ST010', 'MM010', '2019/08/15', '2019/08/22'),
		('RE011', 'ST003', 'MM003', '2019/08/09', '2019/08/16'),
		('RE012', 'ST007', 'MM007', '2019/08/11', '2019/08/18'),
		('RE013', 'ST009', 'MM009', '2019/08/12', '2019/08/19'),
		('RE014', 'ST002', 'MM002', '2019/10/01', '2019/10/08'),
		('RE015', 'ST005', 'MM005', '2019/11/07', '2019/11/14')

--Table DetailRentTransaction (25 data)
INSERT INTO DetailRentTransaction
VALUES  ('RED001', 'RE001', 'GW001', 5),
		('RED002', 'RE002', 'GW002', 1),
		('RED003', 'RE003', 'GW003', 3),
		('RED004', 'RE004', 'GW004', 4),
		('RED005', 'RE005', 'GW005', 2),
		('RED006', 'RE006', 'GW006', 1),
		('RED007', 'RE007', 'GW007', 3),
		('RED008', 'RE008', 'GW008', 5),
		('RED009', 'RE009', 'GW009', 4),
		('RED010', 'RE010', 'GW010', 2),
		('RED011', 'RE011', 'GW001', 1),
		('RED012', 'RE012', 'GW002', 2),
		('RED013', 'RE013', 'GW003', 3),
		('RED014', 'RE014', 'GW004', 1),
		('RED015', 'RE015', 'GW005', 4),
		('RED016', 'RE001', 'GW001', 5),
		('RED017', 'RE002', 'GW002', 2),
		('RED018', 'RE003', 'GW003', 3),
		('RED019', 'RE004', 'GW004', 1),
		('RED020', 'RE005', 'GW005', 4),
		('RED021', 'RE006', 'GW006', 3),
		('RED022', 'RE007', 'GW007', 1),
		('RED023', 'RE008', 'GW008', 2),
		('RED024', 'RE009', 'GW009', 5),
		('RED025', 'RE010', 'GW010', 2)



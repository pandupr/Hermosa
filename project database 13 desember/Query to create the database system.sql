CREATE DATABASE Hermosa

CREATE TABLE MsStaff(
StaffID CHAR(5) CHECK(StaffID LIKE 'ST[0-9][0-9][0-9]') NOT NULL,
PRIMARY KEY(StaffID),
StaffName VARCHAR(50) NOT NULL,
StaffGender VARCHAR(20) CHECK(StaffGender LIKE 'Male' OR StaffGender LIKE 'Female') NOT NULL,
StaffSalary INT NOT NULL,
StaffEmail VARCHAR(50) NOT NULL,
StaffPhone VARCHAR(20) CHECK(StaffPhone LIKE '+62%') NOT NULL,
StaffAddress VARCHAR(255) NOT NULL,

)

SELECT * FROM MsStaff
DROP TABLE MsStaff

CREATE TABLE HeaderPurchaseTransaction(
TransactionID CHAR(5) CHECK(TransactionID LIKE 'PD[0-9][0-9][0-9]') NOT NULL,
PRIMARY KEY(TransactionID),
StaffID CHAR(5) CHECK(StaffID LIKE 'ST[0-9][0-9][0-9]') NOT NULL,
FOREIGN KEY(StaffID) REFERENCES MsStaff(StaffID),
SupplierID CHAR(5) CHECK(SupplierID LIKE 'VD[0-9][0-9][0-9]') NOT NULL,
FOREIGN KEY(SupplierID) REFERENCES MsSupplier(SupplierID),
PaymentID CHAR(5) CHECK(PaymentID LIKE 'PY[0-9][0-9][0-9]') NOT NULL,
FOREIGN KEY(PaymentID) REFERENCES MsPayment(PaymentID),
TransactionDate DATE NOT NULL

)
SELECT * FROM HeaderPurchaseTransaction
DROP TABLE HeaderPurchaseTransaction

CREATE TABLE DetailPurchaseTransaction(
TransactionDetailID CHAR(6) CHECK(TransactionDetailID LIKE 'PDD[0-9][0-9][0-9]') NOT NULL,
PRIMARY KEY(TransactionDetailID),
TransactionID CHAR(5) CHECK(TransactionID LIKE 'PD[0-9][0-9][0-9]') NOT NULL, 
FOREIGN KEY(TransactionID) REFERENCES  HeaderPurchaseTransaction(TransactionID),
GownID CHAR(5) CHECK(GownID LIKE 'GW[0-9][0-9][0-9]') NOT NULL,
FOREIGN KEY(GownID) REFERENCES MsGown(GownID),
QuantityGown INT CHECK(QuantityGown <= 5) NOT NULL 
)
SELECT * FROM DetailPurchaseTransaction
DROP TABLE DetailPurchaseTransaction

CREATE TABLE MsPayment(
PaymentID CHAR(5) CHECK(PaymentID LIKE 'PY[0-9][0-9][0-9]') NOT NULL,
PRIMARY KEY(PaymentID),
PaymentType VARCHAR(10) CHECK(PaymentType LIKE 'OVO' OR PaymentType LIKE 'GOPAY' 
								OR PaymentType LIKE 'BCA' OR PaymentType LIKE 'CASH'),
PaymentAmount INT NOT NULL
)

SELECT * FROM MsPayment
DROP TABLE MsPayment

CREATE TABLE MsGown(
GownID CHAR(5) CHECK(GownID LIKE 'GW[0-9][0-9][0-9]') NOT NULL,
PRIMARY KEY(GownID),
GownTypeID CHAR(5) CHECK(GownTypeID LIKE 'GT[0-9][0-9][0-9]') NOT NULL,
FOREIGN KEY(GownTypeID) REFERENCES MsGownType(GownTypeID),
GownType VARCHAR(20) NOT NULL,
GownColor VARCHAR(20) NOT NULL,
GownRentPrice INT NOT NULL,
GownQuantity INT NOT NULL,
)

SELECT * FROM MsGown
DROP TABLE MsGown

CREATE TABLE MsGownType(
GownTypeID CHAR(5) CHECK(GownTypeID LIKE 'GT[0-9][0-9][0-9]') NOT NULL,
PRIMARY KEY(GownTypeID),
GownTypeName VARCHAR(30) NOT NULL,
GownDesc VARCHAR(50) CHECK(LEN(GownDesc) <= 50) NOT NULL
)
SELECT * FROM MsGownType
DROP TABLE MsGownType

CREATE TABLE HeaderRentTransaction(
RentTransactionID CHAR(5) CHECK(RentTransactionID LIKE 'RE[0-9][0-9][0-9]') NOT NULL,
PRIMARY KEY(RentTransactionID),
StaffID CHAR(5) CHECK(StaffID LIKE 'ST[0-9][0-9][0-9]') NOT NULL,
FOREIGN KEY(StaffID) REFERENCES MsStaff(StaffID),
MemberID CHAR(5) CHECK(MemberID LIKE 'MM[0-9][0-9][0-9]') NOT NULL,
FOREIGN KEY(MemberID) REFERENCES MsMember(MemberID),
StartDate DATE NOT NULL,
ReturnDate DATE NOT NULL,

)
SELECT * FROM HeaderRentTransaction
DROP TABLE HeaderRentTransaction

CREATE TABLE DetailRentTransaction(
RentTransactionDetailID CHAR(6) CHECK(RentTransactionDetailID LIKE 'RED[0-9][0-9][0-9]') NOT NULL,
PRIMARY KEY(RentTransactionDetailID),
RentTransactionID CHAR(5) CHECK(RentTransactionID LIKE 'RE[0-9][0-9][0-9]') NOT NULL,
FOREIGN KEY(RentTransactionID) REFERENCES HeaderRentTransaction(RentTransactionID),
GownID CHAR(5) CHECK(GownID LIKE 'GW[0-9][0-9][0-9]') NOT NULL,
FOREIGN KEY(GownID) REFERENCES MsGown(GownID),
QuantityGownRented INT CHECK(QuantityGownRented <= 5) NOT NULL
)
SELECT * FROM DetailRentTransaction
DROP TABLE DetailRentTransaction

CREATE TABLE MsMember(
MemberID CHAR(5) CHECK(MemberID LIKE 'MM[0-9][0-9][0-9]') NOT NULL,
PRIMARY KEY(MemberID),
MemberName VARCHAR(50) NOT NULL,
MemberPhone VARCHAR(20) CHECK(MemberPhone LIKE '+62%') NOT NULL,
MemberGender VARCHAR(20) CHECK(MemberGender LIKE 'Male' OR MemberGender LIKE 'Female') NOT NULL,
MemberEmail VARCHAR(50) NOT NULL

)
SELECT * FROM MsMember
DROP TABLE MsMember

CREATE TABLE MsSupplier(
SupplierID CHAR(5) CHECK(SupplierID LIKE 'VD[0-9][0-9][0-9]') NOT NULL,
PRIMARY KEY (SupplierID),
SupplierName VARCHAR(20) NOT NULL,
SupplierPhone VARCHAR(20) CHECK(SupplierPhone LIKE '+62%') NOT NULL,
SupplierEmail VARCHAR(50) NOT NULL,
SupplierAddress VARCHAR(50) NOT NULL

)
SELECT * FROM MsSupplier
DROP TABLE MsSupplier









 
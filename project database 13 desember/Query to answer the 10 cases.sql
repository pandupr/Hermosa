USE Hermosa

--1
SELECT mm.MemberID, MemberName, [Total Rent Quantity] = SUM(QuantityGownRented)
FROM MsMember mm, HeaderRentTransaction hrt, DetailRentTransaction drt
WHERE mm.MemberID = hrt.MemberID 
AND hrt.RentTransactionID = drt.RentTransactionID
AND DATEPART(MONTH, ReturnDate) = 06
AND RIGHT(mm.MemberID, 1) BETWEEN 1 AND 5
GROUP BY mm.MemberID, MemberName

--2
SELECT ms.StaffID,StaffName, [Total Purchase Transaction] = COUNT(hpt.TransactionID) 
FROM MsStaff ms, DetailPurchaseTransaction dpt, MsPayment mpy, HeaderPurchaseTransaction hpt
WHERE ms.StaffID = hpt.StaffID 
AND hpt.TransactionID = dpt.TransactionID
AND hpt.PaymentID = mpy.PaymentID
AND PaymentAmount > 1000000
AND DATEPART(MONTH, TransactionDate) = 05
GROUP BY ms.StaffID, StaffName


--3
SELECT [Member Name] = 'Mrs. ' + MemberName, 
[Renting Cost] =  SUM(mg.GownRentPrice * DATEDIFF(day, StartDate, ReturnDate)),
[Total Gown Rented] = COUNT(QuantityGownRented)
FROM MsMember mm
JOIN HeaderRentTransaction hrt ON hrt.MemberID = mm.MemberID
JOIN DetailRentTransaction drt ON drt.RentTransactionID = hrt.RentTransactionID
JOIN MsGown mg ON mg.GownID = drt.GownID
WHERE MemberGender LIKE 'Female'
AND DATEPART(DAY, StartDate) = 15
GROUP BY MemberName
UNION
SELECT [Member Name] = 'Mr. ' + MemberName, 
[Renting Cost] =  SUM(mg.GownRentPrice * DATEDIFF(day, StartDate, ReturnDate)),
[Total Gown Rented] = COUNT(QuantityGownRented)
FROM MsMember mm
JOIN HeaderRentTransaction hrt ON hrt.MemberID = mm.MemberID
JOIN DetailRentTransaction drt ON drt.RentTransactionID = hrt.RentTransactionID
JOIN MsGown mg ON mg.GownID = drt.GownID
WHERE MemberGender LIKE 'Male'
AND DATEPART(DAY, StartDate) = 15
GROUP BY MemberName

--4
SELECT ms.StaffID, [First Name] = LEFT(StaffName, CHARINDEX(' ', StaffName)-1),
[Total Purchasing Amount] = SUM(PaymentAmount)
FROM MsStaff ms, MsPayment mp, HeaderPurchaseTransaction hpt, 
DetailPurchaseTransaction dpt
WHERE ms.StaffID = hpt.StaffID
AND hpt.PaymentID = mp.PaymentID
AND hpt.TransactionID = dpt.TransactionID
AND ms.StaffID LIKE 'ST001'
AND QuantityGown > 1
GROUP BY ms.StaffID, StaffName

--5
SELECT *
FROM 
(SELECT StaffID, StaffName, [Staff Gender] = LEFT(StaffGender, 1), 
[Staff Salary] = 'Rp. ' + CAST(StaffSalary AS VARCHAR) 
FROM MsStaff 
WHERE StaffSalary > (SELECT AVG(StaffSalary) 
					FROM MsStaff)
					AND StaffName LIKE 'A%'
)AS Staff
ORDER BY StaffID DESC

--6
SELECT mg.GownID , [Rented Total Times] = CAST(COUNT(QuantityGownRented) AS VARCHAR) + ' time(s)',
GownColor, GownTypeName, [Description Length] = LEN(GownDesc)
FROM MsGown mg, DetailRentTransaction drt, MsGownType mgt, HeaderRentTransaction hrt,
	(SELECT 'AVERAGE' = AVG(LEN(GownDesc)) FROM MsGownType) AS averageDesc
WHERE LEN(GownDesc) < averageDesc.AVERAGE
AND mg.GownID = drt.GownID
AND mg.GownTypeID = mgt.GownTypeID
AND hrt.RentTransactionID = drt.RentTransactionID
AND DATEPART(MONTH, ReturnDate) = 06
GROUP BY mg.GownID, GownColor, GownTypeName, GownDesc

--7
SELECT [Gown Number] = REPLACE(mg.GownID, 'GW', 'Gown'), GownTypeName, 
GownRentPrice = 'Rp. ' + CAST(GownRentPrice AS VARCHAR),
[Gown Rented Times] = SUM(QuantityGownRented), GownColor
FROM MsGown mg, MsGownType mgt, DetailRentTransaction drt,HeaderRentTransaction hrt ,
	(SELECT 'AVERAGE' = AVG(GownRentPrice) FROM MsGown) AS averagePrice
WHERE GownRentPrice > averagePrice.AVERAGE
AND mg.GownID = drt.GownID
AND mg.GownTypeID = mgt.GownTypeID
AND hrt.RentTransactionID = drt.RentTransactionID
AND DATEPART(MONTH,ReturnDate) = 06
GROUP BY mg.GownID, GownTypeName, GownRentPrice, GownColor
ORDER BY mg.GownID ASC

--8
SELECT [Purchase Date] = CONVERT(VARCHAR, TransactionDate, 107), 
[Staff Number] = REPLACE(ms.StaffID, 'ST', 'Staff'), TransactionID, mp.PaymentID,
[Payment Amount] = 'Rp. ' + CAST(PaymentAmount AS VARCHAR),
[Total Gown Rented] = SUM(QuantityGownRented) 
FROM MsStaff ms, HeaderPurchaseTransaction hpt, HeaderRentTransaction hrt,MsPayment mp,DetailRentTransaction drt,
	(SELECT 'MAX' = MAX(PaymentAmount) FROM MsPayment) AS maxPayment
WHERE mp.PaymentAmount = maxPayment.MAX
AND hpt.StaffID = ms.StaffID
AND hrt.StaffID = ms.StaffID
AND mp.PaymentID = hpt.PaymentID
AND drt.RentTransactionID = hrt.RentTransactionID
 
GROUP BY ms.StaffID, TransactionID, mp.PaymentID, PaymentAmount,TransactionDate

--9
CREATE VIEW MemberTotalTransaction
AS
		SELECT mm.MemberID, MemberName, [Total Rent] = COUNT(drt.RentTransactionID), 
		[Total Purchase Amount] = SUM(mg.GownRentPrice * DATEDIFF(day, StartDate, ReturnDate))
		FROM MsMember mm, HeaderRentTransaction hrt, DetailRentTransaction drt, MsGown mg
		WHERE DATEDIFF(DAY, StartDate, ReturnDate) > 1 
		AND mm.MemberID = hrt.MemberID
		AND hrt.RentTransactionID = drt.RentTransactionID
		AND drt.GownID = mg.GownID
		AND mm.MemberID LIKE 'MM001' 
		GROUP BY mm.MemberID, MemberName

SELECT * FROM MemberTotalTransaction

--10
CREATE VIEW StaffInvolvement 
AS
		SELECT ms.StaffID, StaffName, [Staff Purchase Involvement] = COUNT(TransactionID),
		[Staff Total Expense] = SUM(PaymentAmount)
		FROM MsStaff ms, HeaderPurchaseTransaction hpt, MsPayment mp
		WHERE ms.StaffID = hpt.StaffID
		AND hpt.PaymentID = mp.PaymentID
		AND DATEPART(MONTH, TransactionDate) = 05
		AND PaymentAmount > 1000000
		GROUP BY ms.StaffID, StaffName, TransactionID, PaymentAmount
 
SELECT * FROM StaffInvolvement



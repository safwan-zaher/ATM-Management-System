
--(QUERY EQUIVALENT TO JOIN)
SELECT C.FirstName, C.LastName, A.*
FROM Client C, ATM_Log A
WHERE C.ClientID = A.ClientID
AND A.LogType = 'Warning';


--(USING ON)
SELECT C.FirstName, C.LastName, A.*
FROM Client C JOIN ATM_Log A 
ON C.ClientID = A.ClientID
WHERE A.LogType = 'Warning';


--(USING)
SELECT C.FirstName, C.LastName, A.*
FROM Client C JOIN ATM_Log A 
USING (ClientID)
WHERE A.LogType = 'Warning';


--(NATURAL JOIN)It naturally connects the tables by the foireign keys Here the list of the client shown whose TransactionType is 'deposit' and Transaction amount is greater than 1000.

SELECT ClientID,FirstName,LastName
FROM Client
NATURAL JOIN Account
NATURAL JOIN Transaction
WHERE TransactionType = 'Deposit'
  AND TransactionAmount > 1000;


--(CROSS JOIN)all the possible cases. Here 12X12=144 rows created, then the conditions are applied

SELECT C.FirstName, A.AccountSerial
FROM Client C
CROSS JOIN Account A
WHERE C.ClientID 
BETWEEN 1 AND 7;

--To understand join more clearly let's add some extra rows.

delete from Client where ClientID = 13;
delete from Client where ClientID = 14;
INSERT INTO Client VALUES(13, 'Ibn', 'Sina','ewdul', 'pass234', '+880888777666', 'ekdfh@example.com');
INSERT INTO Client VALUES(14, 'Sadia', 'Islam', 'mdsd', 'pass234', '+880888777666', 'sadislasm@example.com');


--(LEFT JOIN) The LEFT JOIN keyword returns all records from the left table (Clients), even if there are no matches in the right table (Accounts). Client 13,14 will be included as they are on the left table


SELECT C.FirstName, A.AccountSerial
FROM Client C
LEFT JOIN Account A ON C.ClientID = A.ClientID
WHERE Balance>=15000;


--(RIGHT JOIN) The RIGHT JOIN keyword returns all records from the right table (Accounts), even if there are no matches in the left table (Client).Client 13,14 won't be included this time.

SELECT C.FirstName, A.AccountSerial
FROM Client C
RIGHT JOIN Account A ON C.ClientID = A.ClientID;


--(FULL JOIN) The FULL OUTER JOIN keyword returns all matching records from both tables whether the other table matches or not. So, if there are rows in "Clients" that do not have matches in "Accounts", or if there are rows in "Accounts" that do not have matches in "Clients", those rows will be listed as well.

SELECT C.FirstName, A.AccountSerial
FROM Client C
FULL JOIN Account A ON C.ClientID = A.ClientID
WHERE C.ClientID BETWEEN 1 AND 7
AND A.Balance>=12000 ;


--(INNER JOIN) Almost like natural join but..Inner Join joins two table on the basis of the column which is explicitly specified in the ON clause. it'll contain duplicate columns

SELECT A.AccountID, A.AccountSerial, T.TransactionID, T.TransactionType
FROM Account A
INNER JOIN Transaction T ON A.AccountID = T.AccountID;

delete from Client where ClientID = 13;
delete from Client where ClientID = 14;
--(JOIN IN MULTIPLE COLUMNS)

SELECT C.FirstName, C.LastName, A.AccountSerial, A.AccountType
FROM Client C
JOIN Account A ON C.ClientID = A.ClientID AND C.LastName = A.AccountType;

--(SELF JOIN) just like its name suggests, is a type of join that combines the records of a table with itself.

CREATE TABLE CUSTOMERS(
   ID INT PRIMARY KEY NOT NULL,
   Name VARCHAR(50) NOT NULL,
   Address CHAR (25),
   Salary NUMERIC(18, 2)     
);
INSERT INTO CUSTOMERS VALUES (1, 'Safwan', 'Khulna', 2000.00 );
INSERT INTO CUSTOMERS VALUES (2, 'Sonjoy', 'Dhaka', 1500.00 );
INSERT INTO CUSTOMERS VALUES (3, 'Kaushik', 'Delhi', 2000.00 );
INSERT INTO CUSTOMERS VALUES (4, 'Nibir', 'Pune', 6500.00 );

SELECT a.ID, b.Name EARNS_HIGHER, a.NAME EARNS_LESS, a.SALARY LOWER_SALARY
FROM CUSTOMERS a, CUSTOMERS b
WHERE a.SALARY < b.SALARY;

drop table CUSTOMERS;

--(VIEW) the view "HighBalanceAccounts" is created by selecting the account ID, account serial, account type, balance, client's first name, and client's last name from the "Account" and "Client" tables. The join condition links the account with its respective client using the ClientID. 


DROP VIEW HighBalanceAccounts;
CREATE VIEW HighBalanceAccounts AS
SELECT A.*, C.FirstName, C.LastName
FROM Account A
JOIN Client C ON A.ClientID = C.ClientID
WHERE A.Balance > 10000;
SELECT * FROM HighBalanceAccounts;



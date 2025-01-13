--(Insert) into tables
INSERT INTO Client VALUES(1, 'Safwan', 'Zaher', 'safwanz', 'password123', '+880123456789', 'safwan.zaher@example.com');
INSERT INTO Client VALUES(2, 'Sonjoy', 'Roy', 'sonjoyr', 'pass456', '+880987654321', 'sonjoy.roy@example.com');
INSERT INTO Client VALUES(3, 'Kaisarul', 'Kawshik', 'kaisarulk', 'pass789', '+880111223344', 'kaisarul.kawshik@example.com');
INSERT INTO Client VALUES(4, 'Sheikh', 'Nibir', 'sheikhn', 'pass321', '+880555666777', 'sheikh.nibir@example.com');
INSERT INTO Client VALUES(5, 'Utsho', 'Anik', 'utshoa', 'pass654', '+880999888777', 'utsho.anik@example.com');
INSERT INTO Client VALUES(6, 'Ehsanul', 'Talha', 'ehsanult', 'pass987', '+880777888999', 'ehsanul.talha@example.com');
INSERT INTO Client VALUES(7, 'Ankon', 'Chowdhury', 'ankonc', 'pass012', '+880333444555', 'ankon.chowdhury@example.com');
INSERT INTO Client VALUES(8, 'Dipto', 'Saha', 'diptos', 'pass345', '+880222333444', 'dipto.saha@example.com');
INSERT INTO Client VALUES(9, 'Mahdi', 'Bhuiyan', 'mahdib', 'pass678', '+880111222333', 'mahdi.bhuiyan@example.com');
INSERT INTO Client VALUES(10, 'Rakibul', 'Nasib', 'rakibuln', 'pass901', '+880444555666', 'rakibul.nasib@example.com');
INSERT INTO Client VALUES(11, 'Al', 'Mahmud', 'almahmud', 'pass123', '+880999000111', 'al.mahmud@example.com');
INSERT INTO Client VALUES(12, 'Maihanul', 'Tahim', 'maihanul', 'pass234', '+880888777666', 'maihanul.tahim@example.com');

INSERT INTO Account VALUES(1, 1, 'A123456789', 'Savings', 15000.00);
INSERT INTO Account VALUES(2, 2, 'A987654321', 'Checking', 12500.00);
INSERT INTO Account VALUES(3, 3, 'A456789123', 'Savings', 10000.00);
INSERT INTO Account VALUES(4, 4, 'A321654987', 'Loans', 11500.00);
INSERT INTO Account VALUES(5, 5, 'A999888777', 'Checking', 18000.00);
INSERT INTO Account VALUES(6, 6, 'A777888999', 'Savings', 13000.00);
INSERT INTO Account VALUES(7, 7, 'A333444555', 'Investment', 16000.00);
INSERT INTO Account VALUES(8, 8, 'A222333444', 'Savings', 19000.00);
INSERT INTO Account VALUES(9, 9, 'A111222333', 'Savings', 17000.00);
INSERT INTO Account VALUES(10, 10, 'A444555666', 'Checking', 14000.00);
INSERT INTO Account VALUES(11, 11, 'A555666777', 'Investment', 12000.00);
INSERT INTO Account VALUES(12, 12, 'A666777888', 'Loans', 13500.00);

INSERT INTO Transaction VALUES(1, 1, 'Deposit', 1000.00, TO_DATE('2023-05-01', 'YYYY-MM-DD'), 'Deposit made at ATM');
INSERT INTO Transaction VALUES(2, 2, 'Withdrawal', 570.00, TO_DATE('2023-05-02', 'YYYY-MM-DD'), 'Withdrawal from ATM');
INSERT INTO Transaction VALUES(3, 3, 'Transfer', 2050.00, TO_DATE('2023-05-03', 'YYYY-MM-DD'), 'Funds transferred');
INSERT INTO Transaction VALUES(4, 4, 'Deposit', 1600.00, TO_DATE('2023-05-04', 'YYYY-MM-DD'), 'Deposit made at ATM');
INSERT INTO Transaction VALUES(5, 5, 'Withdrawal', 4000.00, TO_DATE('2023-05-05', 'YYYY-MM-DD'), 'Withdrawal from ATM');
INSERT INTO Transaction VALUES(6, 6, 'Transfer', 6600.00, TO_DATE('2023-05-06', 'YYYY-MM-DD'), 'Funds transferred');
INSERT INTO Transaction VALUES(7, 7, 'Deposit', 1000.00, TO_DATE('2023-05-07', 'YYYY-MM-DD'), 'Deposit made at ATM');
INSERT INTO Transaction VALUES(8, 8, 'Withdrawal', 2000.00, TO_DATE('2023-05-08', 'YYYY-MM-DD'), 'Withdrawal from ATM');
INSERT INTO Transaction VALUES(9, 9, 'Transfer', 5000.00, TO_DATE('2023-05-09', 'YYYY-MM-DD'), 'Funds transferred');
INSERT INTO Transaction VALUES(10, 10, 'Deposit', 4000.00, TO_DATE('2023-05-10', 'YYYY-MM-DD'), 'Deposit made at ATM');
INSERT INTO Transaction VALUES(11, 11, 'Withdrawal', 1000.00, TO_DATE('2023-05-11', 'YYYY-MM-DD'), 'Withdrawal from ATM');
INSERT INTO Transaction VALUES(12, 12, 'Transfer', 1200.00, TO_DATE('2023-05-12', 'YYYY-MM-DD'), 'Funds transferred');


INSERT INTO ATM_Booth VALUES (1, 'Dhaka', 'Active', TO_DATE('2023-05-19', 'YYYY-MM-DD'));
INSERT INTO ATM_Booth VALUES(2, 'Khulna', 'Not in Service', TO_DATE('2023-05-25', 'YYYY-MM-DD'));
INSERT INTO ATM_Booth VALUES(3, 'Barisal', 'Active', TO_DATE('2023-05-26', 'YYYY-MM-DD'));
INSERT INTO ATM_Booth VALUES(4, 'Kushtia', 'Under Maintenance', TO_DATE('2023-05-25', 'YYYY-MM-DD'));
INSERT INTO ATM_Booth VALUES(5, 'Bagerhat', 'Active', TO_DATE('2023-05-26', 'YYYY-MM-DD'));
INSERT INTO ATM_Booth VALUES(6, 'Jessore', 'Active', TO_DATE('2023-05-24', 'YYYY-MM-DD'));
INSERT INTO ATM_Booth VALUES(7, 'Bogura', 'Active', TO_DATE('2023-05-21', 'YYYY-MM-DD'));
INSERT INTO ATM_Booth VALUES(8, 'Bhola', 'Under Maintenance', TO_DATE('2023-05-21', 'YYYY-MM-DD'));
INSERT INTO ATM_Booth VALUES(9, 'Chittagong', 'Active', TO_DATE('2023-05-26', 'YYYY-MM-DD'));
INSERT INTO ATM_Booth VALUES(10, 'Cumilla', 'Not in Service', TO_DATE('2023-05-26', 'YYYY-MM-DD'));
INSERT INTO ATM_Booth VALUES(11, 'Feni', 'Active', TO_DATE('2023-05-26', 'YYYY-MM-DD'));
INSERT INTO ATM_Booth VALUES(12, 'Narshingdi', 'Active', TO_DATE('2023-05-26', 'YYYY-MM-DD'));


INSERT INTO ATM_Log VALUES(1, 1, 1, 1, 'Info', TO_DATE('2023-05-01', 'YYYY-MM-DD'));
INSERT INTO ATM_Log VALUES(2, 2, 2, 2, 'Error', TO_DATE('2023-05-02', 'YYYY-MM-DD'));
INSERT INTO ATM_Log VALUES(3, 3, 3, 3, 'Info', TO_DATE('2023-05-03', 'YYYY-MM-DD'));
INSERT INTO ATM_Log VALUES(4, 4, 4, 4, 'Warning', TO_DATE('2023-05-04', 'YYYY-MM-DD'));
INSERT INTO ATM_Log VALUES(5, 5, 5, 5, 'Info', TO_DATE('2023-05-05', 'YYYY-MM-DD'));
INSERT INTO ATM_Log VALUES(6, 6, 6, 6, 'Error', TO_DATE('2023-05-06', 'YYYY-MM-DD'));
INSERT INTO ATM_Log VALUES(7, 7, 7, 7, 'Info', TO_DATE('2023-05-07', 'YYYY-MM-DD'));
INSERT INTO ATM_Log VALUES(8, 8, 8, 8, 'Warning', TO_DATE('2023-05-08', 'YYYY-MM-DD'));
INSERT INTO ATM_Log VALUES(9, 9, 9, 9, 'Info', TO_DATE('2023-05-09', 'YYYY-MM-DD'));
INSERT INTO ATM_Log VALUES(10, 10, 10, 10, 'Error', TO_DATE('2023-05-10', 'YYYY-MM-DD'));
INSERT INTO ATM_Log VALUES(11, 11, 11, 11, 'Info', TO_DATE('2023-05-11', 'YYYY-MM-DD'));
INSERT INTO ATM_Log VALUES(12, 12, 12, 12, 'Warning', TO_DATE('2023-05-12', 'YYYY-MM-DD'));




--(INSERT) a row again

INSERT INTO Client 
VALUES
(13, 'Kazi', 'Fahim', 'kazifahim', 'pass2345', '+880555777666', 'kazi.fahim@example.com');

--(DISPLAY) a whole table
select *from ATM_Log;

--(UPDATE) a row

UPDATE Account SET Balance = 220000.00 where AccountID = 1;

--(DELETE) a row

delete from Client where ClientID = 13;

--(AGGREGATE FUNCTION)(COUNT) for counting the total number of accounts 
select count(*) as no_of_accounts from Account; 

--(AGGREGATE FUNCTION)(AVG) for calculating the average account balance

SELECT AVG(Balance) AS AverageBalance
FROM Account;

--(AGGREGATE FUNCTION)(SUM) for calculating the total balance of first 6 accounts

SELECT SUM(Balance) AS TotalBalance
FROM Account
WHERE AccountID <= 6;

--(GROUP BY) that groups transactions by transaction type and calculates the total transaction amount for each transaction type(deposit, transfer,withdrawal)

SELECT TransactionType, SUM(TransactionAmount) AS TotalAmount
FROM Transaction
GROUP BY TransactionType;

--(GORUP BY AND HAVING) that groups transactions by transaction type and calculates the total transaction amount for each transaction type(deposit, transfer,withdrawal) and having sum>=7600

SELECT TransactionType, SUM(TransactionAmount) AS TotalAmount
from Transaction
GROUP BY TransactionType
HAVING SUM(TransactionAmount) >=7600;

--(UNION) all the booths whose locations starts with 'K' or ends with 'a'

SELECT ATMID,ATMLocation from ATM_Booth 
WHERE ATMLocation like 'K%' 
UNION
SELECT ATMID,ATMLocation from ATM_Booth
WHERE ATMLocation like '%a';

--(INTERSECTION) all the booths whose locations contains 'B' and contains 'a'

SELECT ATMID,ATMLocation from ATM_Booth 
WHERE ATMLocation like '%B%' 
INTERSECT
SELECT ATMID,ATMLocation from ATM_Booth
WHERE ATMLocation like '%a%';

--(EXCEPT/MINUS) all the booths whose locations starts with 'B' but cannot end with 'a'

SELECT ATMID,ATMLocation from ATM_Booth 
WHERE ATMLocation like 'B%'
MINUS
SELECT ATMID,ATMLocation from ATM_Booth
WHERE ATMLocation like '%a';

--(SOME)  we are selecting the rows from the Account table where the balance is greater than some of the balances of accounts with the account type 'Checking'

SELECT *
FROM Account
WHERE Balance > SOME (SELECT Balance FROM Account WHERE AccountType = 'Checking');

--(ALL)  we are selecting the rows from the Account table where the balance is greater than all of the balances of accounts with the account type 'Loans'

SELECT *
FROM Account
WHERE Balance > ALL (SELECT Balance FROM Account WHERE AccountType = 'Loans');

--(EXIST) If the client has an account and it's 'saving' account

SELECT ClientID, FirstName, LastName
FROM Client
WHERE EXISTS (
  SELECT *
  FROM Account
  WHERE Client.ClientID = Account.ClientID
  AND AccountType = 'Savings'
);


--(NOT EXIST) if the client has an account and it any account other than 'loans'

SELECT ClientID, FirstName, LastName
FROM Client
WHERE NOT EXISTS (
  SELECT *
  FROM Account
  WHERE Client.ClientID = Account.ClientID
  AND AccountType = 'Loans'
);

--(Nested Query) finding the 3rd highest balance using nested query

SELECT Balance
FROM Account
WHERE Balance = (
  SELECT MAX(Balance)
  FROM Account
  WHERE Balance < (
    SELECT MAX(Balance)
    FROM Account WHERE Balance < (
	  SELECT MAX(Balance) FROM Account
	)
  )
)
;

--(IN) select the accounts whose balance is greater or equal than 16000 and their transaction type is deposit(multiple rows will be selected)

SELECT * FROM Account where Balance>=16000 
AND 
AccountID IN
(SELECT AccountID from Transaction where TransactionType='Deposit');


--(NOT IN) select the accounts whose balance is greater or equal than 17000 and their transaction type is anything other than Withdrawal(multiple rows may be selected)

SELECT * FROM Account WHERE Balance>=17000 
AND 
AccountID NOT IN 
(SELECT AccountID FROM Transaction WHERE TransactionType='Withdrawal');

--(ORDER BY-DESC)It will give us total transaction for each type of transaction in a descending order

SELECT TransactionType, SUM(TransactionAmount) AS TotalAmount
FROM Transaction
GROUP BY TransactionType
ORDER BY SUM(TransactionAmount) DESC;


--(ORDER BY-ASC-Default)It will give us total amount for each type of account in a ascending order


SELECT AccountType, SUM(Balance) AS TotalAmount
FROM Account
GROUP BY AccountType
ORDER BY SUM(Balance);


--(WITH CLAUSE)It selects the accounts having balance greater than 10000 and sort them in a descending order

WITH AccountSummary AS (
  SELECT AccountID, AccountType, Balance
  FROM Account
  WHERE Balance > 10000
)
SELECT AccountID, AccountType, Balance
FROM AccountSummary
ORDER BY Balance DESC;


--(AND)(STRING OPERATION) selects whose name starts with an 's' and last name consists of 'a'

SELECT FirstName, LastName FROM Client
WHERE FirstName like 'S%' and FirstName like '%a%';

--(OR)(STRING OPERATION)Select whose first name consists of 5 letters or 6 letters

SELECT FirstName, LastName FROM Client
WHERE FirstName like '_____' or FirstName like '______';

--(BETWEEN)see the transactions between 01-05-2023 to 05-05-2023

SELECT TransactionType,TransactionAmount
FROM Transaction
WHERE TransactionDate BETWEEN TO_DATE('2023-05-01', 'YYYY-MM-DD') AND TO_DATE('2023-05-05', 'YYYY-MM-DD');

--(distinct)

SELECT DISTINCT AccountType
FROM Account;





--Dropping the existing tables
drop table ATM_Log;
drop table ATM_Booth;
drop table Transaction;
drop table Account;
drop table Client;


--table creation
create table Client (
  ClientID INT PRIMARY KEY NOT NULL,
  FirstName VARCHAR(20),
  LastName VARCHAR(20),
  Username VARCHAR(50),
  Password VARCHAR(50),
  Phone VARCHAR(50),
  Email VARCHAR(50)
);



create table Account (
  AccountID INT PRIMARY KEY NOT NULL,
  ClientID INT,
  AccountSerial VARCHAR(50),
  AccountType VARCHAR(50),
  Balance NUMERIC(12,3) check(Balance >= 0 and Balance <= 2000000),
  FOREIGN KEY(ClientID) references Client(ClientID) on delete cascade
);
create table Transaction (
  TransactionID INT PRIMARY KEY NOT NULL,
  AccountID INT,
  TransactionType VARCHAR(50),
  TransactionAmount NUMERIC(12, 3) check(TransactionAmount >= 0 and TransactionAmount <= 2000000),
  TransactionDate DATE,
  TransactionDetails VARCHAR(100),
  FOREIGN KEY(AccountID) references Account(AccountID) on delete cascade
);

create table ATM_Booth (
  ATMID INT PRIMARY KEY NOT NULL,
  ATMLocation VARCHAR(100),
  ATMStatus VARCHAR(50),
  MaintenanceDate DATE
);

CREATE TABLE ATM_Log (
  LogID INT PRIMARY KEY NOT NULL,
  ATMID INT,
  ClientID INT,
  TransactionID INT,
  LogType VARCHAR(50),
  LogDate DATE,
  FOREIGN KEY (ATMID) references ATM_Booth(ATMID)  on delete cascade,
  FOREIGN KEY (ClientID) references Client(ClientID) on delete cascade,
  FOREIGN KEY (TransactionID) references Transaction(TransactionID) on delete cascade
);



--(ALTER TABLE)
ALTER TABLE Client 
ADD
Location VARCHAR(20);
DESC Client;

--(MODIFY COLUMN DATATYPE)
ALTER TABLE Client 
MODIFY
Location CHAR(50);
DESC Client;

--(MODIFY COLUMN NAME)
ALTER TABLE Client 
RENAME 
COLUMN Location to Loc;
DESC Client;

--(DROP COLUMN)
ALTER TABLE Client
DROP COLUMN Loc;
DESC Client;

 
--(variable declaration and print value)

SET SERVEROUTPUT ON
DECLARE
  client_id Client.ClientID%TYPE;
  first_name Client.FirstName%TYPE;
  last_name Client.LastName%TYPE;
  balance Account.Balance%TYPE;
BEGIN
  -- Assign values to variables
  client_id := 1;
  
  -- Retrieve data from tables
  SELECT FirstName, LastName
  INTO first_name, last_name
  FROM Client
  WHERE ClientID = client_id;
  
  -- Print values
  DBMS_OUTPUT.PUT_LINE('Client ID: ' || client_id);
  DBMS_OUTPUT.PUT_LINE('First Name: ' || first_name);
  DBMS_OUTPUT.PUT_LINE('Last Name: ' || last_name);
END;
/


--(Insert and set default value)


SET SERVEROUTPUT ON
DECLARE
  client_id Client.ClientID%TYPE :=15;
  first_name Client.FirstName%TYPE := 'Robiul';  
  last_name Client.LastName%TYPE := 'Islam';     
  User_name Client.Username%TYPE := 'robiul';
  Pass Client.Password%TYPE := 'pass234';
  Phone Client.Phone%TYPE := '01737467356';
  Email Client.Email%TYPE := 'robial@example.com';
BEGIN
insert into Client values(client_id,first_name,last_name,
User_name,Pass,Phone,Email);
 END;
/


--(ROW TYPE)  allows us to store the entire row of data from a table or cursor into a single variable.

SET SERVEROUTPUT ON
DECLARE
	client_row Client%ROWTYPE;
BEGIN
	SELECT * INTO client_row FROM Client WHERE ClientID = 1;
	DBMS_OUTPUT.PUT_LINE('Client ID :' || client_row.ClientID);
	DBMS_OUTPUT.PUT_LINE('First Name: ' || client_row.FirstName);
	DBMS_OUTPUT.PUT_LINE('Last Name: ' || client_row.LastName);
END;
/


--(Cursor and row count) This will count the row and by using loop we'll produce our outputs 


SET SERVEROUTPUT ON
DECLARE
	CURSOR client_cursor IS
	SELECT * from Client;
	client_row CLient%ROWTYPE;

	row_count NUMBER := 0;

BEGIN
	OPEN client_cursor;
  
  LOOP
  	FETCH client_cursor INTO client_row;
  	EXIT WHEN client_cursor%NOTFOUND;
    
    -- Print the current row's data
    DBMS_OUTPUT.PUT_LINE('ClientID: ' || client_row.ClientID || 
                         ' FirstName: ' || client_row.FirstName ||
                         ' LastName: ' || client_row.LastName ||
                         ' Username: ' || client_row.Username ||
                         ' Password: ' || client_row.Password ||
                         ' Phone: ' || client_row.Phone ||
                         ' Email: ' || client_row.Email);
    
    -- Increment the row count
    row_count := row_count + 1;
  END LOOP;
  
  CLOSE client_cursor;
  
  DBMS_OUTPUT.PUT_LINE('Total rows processed: ' || row_count);
END;
/


--(FOR LOOP)finding highest transaction using for loop

SET SERVEROUTPUT ON

DECLARE
  max_amount NUMBER := 0;
BEGIN
  FOR record IN (SELECT TransactionAmount FROM Transaction) LOOP
    IF record.TransactionAmount > max_amount THEN
      max_amount := record.TransactionAmount;
    END IF;
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('Highest transaction amount: ' || max_amount);
END;
/

--(WHILE LOOP)Finding total balance in the ATM 


SET SERVEROUTPUT ON
DECLARE
  total_balance NUMBER := 0;
  account_balance NUMBER;
BEGIN
  DECLARE
    CURSOR account_cursor IS
      SELECT Balance FROM Account;
  BEGIN
    OPEN account_cursor;
    LOOP
      FETCH account_cursor INTO account_balance;
      EXIT WHEN account_cursor%NOTFOUND;
      
      total_balance := total_balance + account_balance;
    END LOOP;
    CLOSE account_cursor;
  END;
  
  DBMS_OUTPUT.PUT_LINE('Total balance: ' || total_balance);
END;
/


--(if/elseif/else)

SET SERVEROUTPUT ON

BEGIN
  FOR record IN (SELECT Balance FROM Account) LOOP
    IF record.Balance >= 15000 THEN
      DBMS_OUTPUT.PUT_LINE('The client is StarClient');
    ELSIF record.Balance > 10000 AND record.Balance < 15000 THEN
      DBMS_OUTPUT.PUT_LINE('The client is SilverClient');
    ELSE
      DBMS_OUTPUT.PUT_LINE('The client is BronzeClient');
    END IF;
  END LOOP;
END;
/


--(Procedure)

drop procedure GetAccountDetails;
CREATE OR REPLACE PROCEDURE GetAccountDetails(
  client_id IN Client.ClientID%TYPE,
  account_id OUT Account.AccountID%TYPE,
  account_serial OUT Account.AccountSerial%TYPE,
  account_type OUT Account.AccountType%TYPE,
  balance OUT Account.Balance%TYPE
)
AS
BEGIN
  SELECT AccountID, AccountSerial, AccountType, Balance
  INTO account_id, account_serial, account_type, balance
  FROM Account
  WHERE ClientID = client_id;
END;
/

SET SERVEROUTPUT ON;

DECLARE
  v_client_id Client.ClientID%TYPE := 2; -- Replace with the desired client ID

  v_account_id Account.AccountID%TYPE;
  v_account_serial Account.AccountSerial%TYPE;
  v_account_type Account.AccountType%TYPE;
  v_balance Account.Balance%TYPE;
BEGIN
  GetAccountDetails(v_client_id, v_account_id, v_account_serial, v_account_type, v_balance);

  DBMS_OUTPUT.PUT_LINE('Account ID: ' || v_account_id);
  DBMS_OUTPUT.PUT_LINE('Account Serial: ' || v_account_serial);
  DBMS_OUTPUT.PUT_LINE('Account Type: ' || v_account_type);
  DBMS_OUTPUT.PUT_LINE('Balance: ' || v_balance);
END;
/

--(Function)

drop function GetAccountBalance;

CREATE OR REPLACE FUNCTION GetAccountBalance(
  account_id IN INT
) RETURN NUMBER
AS
  account_balance NUMBER;
BEGIN
  SELECT Balance INTO account_balance
  FROM Account
  WHERE AccountID = account_id;
  
  RETURN account_balance;
END;
/

SET SERVEROUTPUT ON;

DECLARE
  v_account_id INT := 1; -- Replace with the desired account ID
  v_balance NUMBER;
BEGIN
  v_balance := GetAccountBalance(v_account_id);
  DBMS_OUTPUT.PUT_LINE('Account Balance: ' || v_balance);
END;
/








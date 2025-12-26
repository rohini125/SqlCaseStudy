---------------CREATE TABLE Customers------------------
CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(40) NOT NULL,
    Email VARCHAR2(25) UNIQUE,
    Phone VARCHAR2(10) NOT NULL,
    Address VARCHAR2(50)
);
drop table Customers;


------------CREATE TABLE Accounts 
 
 CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    AccountType VARCHAR2(20) NOT NULL,
    Balance NUMBER(10,2) DEFAULT 0 CHECK (Balance >= 0),
    CONSTRAINT fk_customer
        FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);

--------------CREATE TABLE Transactions

CREATE TABLE Transactions (
   TransactionID NUMBER PRIMARY KEY,
     AccountID NUMBER,
   tDate DATE NOT NULL,
   Amount NUMBER(10, 2) NOT NULL CHECK (Amount >= 0),
   TransactionType VARCHAR(20) NOT NULL,
 FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) );
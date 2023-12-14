--users 1

INSERT ALL
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (1, 'user1', 'pass1', 'user1@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (2, 'user2', 'pass2', 'user2@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (3, 'user3', 'pass3', 'user3@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (4, 'user4', 'pass4', 'user4@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (5, 'user5', 'pass5', 'user5@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (6, 'user6', 'pass6', 'user6@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (7, 'user7', 'pass7', 'user7@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (8, 'user8', 'pass8', 'user8@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (9, 'user9', 'pass9', 'user9@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (10, 'user10', 'pass10', 'user10@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (11, 'user11', 'pass11', 'user11@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (12, 'user12', 'pass12', 'user12@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (13, 'user13', 'pass13', 'user13@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (14, 'user14', 'pass14', 'user14@example.com', SYSDATE, SYSDATE)
  INTO Users (UserID, Username, Password, Email, CreatedAt, UpdatedAt) VALUES (15, 'user15', 'pass15', 'user15@example.com', SYSDATE, SYSDATE)
SELECT * FROM dual;

--roles 2

INSERT ALL
  INTO Roles (RoleID, Name) VALUES (1, 'Administrator')
  INTO Roles (RoleID, Name) VALUES (2, 'Trader')
  INTO Roles (RoleID, Name) VALUES (3, 'Analyst')
  INTO Roles (RoleID, Name) VALUES (4, 'Broker')
  INTO Roles (RoleID, Name) VALUES (5, 'Auditor')
  INTO Roles (RoleID, Name) VALUES (6, 'Consultant')
  INTO Roles (RoleID, Name) VALUES (7, 'Manager')
  INTO Roles (RoleID, Name) VALUES (8, 'Intern')
  INTO Roles (RoleID, Name) VALUES (9, 'Director')
  INTO Roles (RoleID, Name) VALUES (10, 'Vice President')
  INTO Roles (RoleID, Name) VALUES (11, 'President')
  INTO Roles (RoleID, Name) VALUES (12, 'CEO')
  INTO Roles (RoleID, Name) VALUES (13, 'CTO')
  INTO Roles (RoleID, Name) VALUES (14, 'CFO')
  INTO Roles (RoleID, Name) VALUES (15, 'COO')
SELECT * FROM dual;




--UserGroups 3

INSERT ALL
  INTO UserGroups (GroupID, Name, Description) VALUES (1, 'Group Alpha', 'Alpha group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (2, 'Group Beta', 'Beta group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (3, 'Group Gamma', 'Gamma group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (4, 'Group Delta', 'Delta group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (5, 'Group Epsilon', 'Epsilon group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (6, 'Group Zeta', 'Zeta group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (7, 'Group Eta', 'Eta group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (8, 'Group Theta', 'Theta group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (9, 'Group Iota', 'Iota group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (10, 'Group Kappa', 'Kappa group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (11, 'Group Lambda', 'Lambda group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (12, 'Group Mu', 'Mu group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (13, 'Group Nu', 'Nu group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (14, 'Group Xi', 'Xi group description')
  INTO UserGroups (GroupID, Name, Description) VALUES (15, 'Group Omicron', 'Omicron group description')
SELECT * FROM dual;

--Instruments 4

INSERT ALL
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (1, 'Alpha Inc', 'ALP', 'Stock')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (2, 'Beta LLC', 'BET', 'Bond')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (3, 'Gamma Co', 'GAM', 'ETF')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (4, 'Delta Ltd', 'DEL', 'Stock')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (5, 'Epsilon Corp', 'EPS', 'Bond')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (6, 'Zeta Pty', 'ZET', 'ETF')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (7, 'Eta GmbH', 'ETA', 'Stock')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (8, 'Theta S.A.', 'THE', 'Bond')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (9, 'Iota Inc', 'IOT', 'ETF')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (10, 'Kappa Co', 'KAP', 'Stock')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (11, 'Lambda LLC', 'LAM', 'Bond')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (12, 'Mu Ltd', 'MU', 'ETF')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (13, 'Nu Corp', 'NU', 'Stock')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (14, 'Xi Pty', 'XI', 'Bond')
  INTO Instruments (InstrumentID, Name, Symbol, Type) VALUES (15, 'Omicron GmbH', 'OMI', 'ETF')
SELECT * FROM dual;

--Exchanges 5

INSERT ALL
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (1, 'NYSE', 'USA', 'USD')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (2, 'NASDAQ', 'USA', 'USD')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (3, 'Tokyo Stock Exchange', 'Japan', 'JPY')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (4, 'London Stock Exchange', 'UK', 'GBP')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (5, 'Shanghai Stock Exchange', 'China', 'CNY')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (6, 'Toronto Stock Exchange', 'Canada', 'CAD')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (7, 'Australian Securities Exchange', 'Australia', 'AUD')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (8, 'Euronext', 'EU', 'EUR')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (9, 'Hong Kong Stock Exchange', 'Hong Kong', 'HKD')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (10, 'Frankfurt Stock Exchange', 'Germany', 'EUR')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (11, 'Swiss Exchange', 'Switzerland', 'CHF')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (12, 'Johannesburg Stock Exchange', 'South Africa', 'ZAR')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (13, 'BME Spanish Exchanges', 'Spain', 'EUR')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (14, 'Borsa İstanbul', 'Turkey', 'TRY')
  INTO Exchanges (ExchangeID, Name, Country, Currency) VALUES (15, 'Bombay Stock Exchange', 'India', 'INR')
SELECT * FROM dual;


--UserProfiles 6

INSERT ALL
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (1, 1, 'John', 'Doe', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'USA')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (2, 2, 'Jane', 'Smith', TO_DATE('1985-02-02', 'YYYY-MM-DD'), 'Canada')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (3, 3, 'Emily', 'Johnson', TO_DATE('1992-03-03', 'YYYY-MM-DD'), 'UK')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (4, 4, 'Chris', 'Brown', TO_DATE('1988-04-04', 'YYYY-MM-DD'), 'Australia')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (5, 5, 'Patricia', 'Williams', TO_DATE('1993-05-05', 'YYYY-MM-DD'), 'USA')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (6, 6, 'Michael', 'Jones', TO_DATE('1987-06-06', 'YYYY-MM-DD'), 'USA')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (7, 7, 'Linda', 'Miller', TO_DATE('1991-07-07', 'YYYY-MM-DD'), 'Canada')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (8, 8, 'Robert', 'Davis', TO_DATE('1989-08-08', 'YYYY-MM-DD'), 'UK')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (9, 9, 'Barbara', 'Garcia', TO_DATE('1990-09-09', 'YYYY-MM-DD'), 'Australia')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (10, 10, 'William', 'Martinez', TO_DATE('1986-10-10', 'YYYY-MM-DD'), 'USA')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (11, 11, 'Susan', 'Wilson', TO_DATE('1984-11-11', 'YYYY-MM-DD'), 'Canada')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (12, 12, 'James', 'Anderson', TO_DATE('1992-12-12', 'YYYY-MM-DD'), 'UK')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (13, 13, 'Karen', 'Thomas', TO_DATE('1991-01-13', 'YYYY-MM-DD'), 'Australia')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (14, 14, 'Brian', 'Taylor', TO_DATE('1987-02-14', 'YYYY-MM-DD'), 'USA')
  INTO UserProfiles (ProfileID, UserID, FirstName, LastName, DOB, Country) VALUES (15, 15, 'Lisa', 'Moore', TO_DATE('1985-03-15', 'YYYY-MM-DD'), 'Canada')
SELECT * FROM dual;


--Accounts 7


INSERT ALL
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (1, 1, 10000, 'USD')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (2, 2, 12000, 'CAD')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (3, 3, 8000, 'GBP')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (4, 4, 15000, 'AUD')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (5, 5, 5000, 'EUR')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (6, 6, 9500, 'USD')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (7, 7, 7600, 'CAD')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (8, 8, 6400, 'GBP')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (9, 9, 10200, 'AUD')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (10, 10, 5500, 'EUR')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (11, 11, 8700, 'USD')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (12, 12, 12300, 'CAD')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (13, 13, 7300, 'GBP')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (14, 14, 11100, 'AUD')
  INTO Accounts (AccountID, UserID, Balance, Currency) VALUES (15, 15, 4600, 'EUR')
SELECT * FROM dual;

--wallets 8

INSERT ALL
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (1, 1, 'USD', 5000.00)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (2, 2, 'EUR', 3000.00)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (3, 3, 'JPY', 700000)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (4, 4, 'USD', 4500.00)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (5, 5, 'EUR', 2500.00)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (6, 6, 'JPY', 600000)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (7, 7, 'USD', 5500.00)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (8, 8, 'EUR', 3200.00)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (9, 9, 'JPY', 800000)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (10, 10, 'USD', 4800.00)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (11, 11, 'EUR', 2700.00)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (12, 12, 'JPY', 650000)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (13, 13, 'USD', 5200.00)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (14, 14, 'EUR', 2900.00)
  INTO Wallets (WalletID, UserID, Currency, Balance) VALUES (15, 15, 'JPY', 750000)
SELECT * FROM dual;


--Apikeys 9

INSERT ALL
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (1, 1, 'APIKey1', 'Secret1')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (2, 2, 'APIKey2', 'Secret2')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (3, 3, 'APIKey3', 'Secret3')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (4, 4, 'APIKey4', 'Secret4')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (5, 5, 'APIKey5', 'Secret5')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (6, 6, 'APIKey6', 'Secret6')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (7, 7, 'APIKey7', 'Secret7')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (8, 8, 'APIKey8', 'Secret8')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (9, 9, 'APIKey9', 'Secret9')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (10, 10, 'APIKey10', 'Secret10')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (11, 11, 'APIKey11', 'Secret11')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (12, 12, 'APIKey12', 'Secret12')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (13, 13, 'APIKey13', 'Secret13')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (14, 14, 'APIKey14', 'Secret14')
  INTO APIKeys (KeyID, UserID, APIKey, APISecret) VALUES (15, 15, 'APIKey15', 'Secret15')
SELECT * FROM dual;

--Usersessions 10

INSERT ALL
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (1, 1, 'token1', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (2, 2, 'token2', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (3, 3, 'token3', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (4, 4, 'token4', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (5, 5, 'token5', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (6, 6, 'token6', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (7, 7, 'token7', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (8, 8, 'token8', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (9, 9, 'token9', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (10, 10, 'token10', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (11, 11, 'token11', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (12, 12, 'token12', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (13, 13, 'token13', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (14, 14, 'token14', SYSDATE + 7)
  INTO UserSessions (SessionID, UserID, Token, ExpiresAt) VALUES (15, 15, 'token15', SYSDATE + 7)
SELECT * FROM dual;

--Userroles 11

INSERT ALL
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (1, 1, 1)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (2, 2, 2)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (3, 3, 3)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (4, 4, 4)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (5, 5, 5)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (6, 6, 6)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (7, 7, 7)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (8, 8, 8)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (9, 9, 9)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (10, 10, 10)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (11, 11, 11)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (12, 12, 12)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (13, 13, 13)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (14, 14, 14)
  INTO UserRoles (UserRoleID, UserID, RoleID) VALUES (15, 15, 15)
SELECT * FROM dual;

--UserGroupMembers 12

INSERT ALL
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (1, 1, 1)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (2, 2, 2)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (3, 3, 3)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (4, 4, 4)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (5, 5, 5)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (6, 6, 6)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (7, 7, 7)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (8, 8, 8)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (9, 9, 9)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (10, 10, 10)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (11, 11, 11)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (12, 12, 12)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (13, 13, 13)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (14, 14, 14)
  INTO UserGroupMembers (UserGroupMemberID, UserID, GroupID) VALUES (15, 15, 15)
SELECT * FROM dual;

--InstrumentExchangeMapping 13

INSERT ALL
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (1, 1, 1)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (2, 1, 2)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (3, 1, 3)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (4, 2, 1)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (5, 2, 4)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (6, 2, 5)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (7, 3, 2)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (8, 3, 6)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (9, 3, 7)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (10, 4, 1)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (11, 4, 8)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (12, 4, 9)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (13, 5, 2)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (14, 5, 10)
  INTO InstrumentExchangeMapping (MappingID, InstrumentID, ExchangeID) VALUES (15, 5, 11)
SELECT * FROM dual;

--Orders 14

INSERT ALL 
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES  (1, 1, 1, 'Buy', 'Open', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (2, 2, 2, 'Sell', 'Closed', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (3, 3, 3, 'Buy', 'Open', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (4, 4, 4, 'Sell', 'Executed', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (5, 5, 5, 'Buy', 'Cancelled', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (6, 6, 6, 'Sell', 'Open', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (7, 7, 7, 'Buy', 'Closed', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (8, 8, 8, 'Sell', 'Executed', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (9, 9, 9, 'Buy', 'Cancelled', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (10, 10, 10, 'Sell', 'Open', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (11, 11, 11, 'Buy', 'Closed', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (12, 12, 12, 'Sell', 'Executed', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (13, 13, 13, 'Buy', 'Cancelled', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (14, 14, 14, 'Sell', 'Open', SYSDATE, SYSDATE)
 INTO Orders (OrderID, UserID, InstrumentID, Type, Status, CreatedAt, UpdatedAt) VALUES (15, 15, 15, 'Buy', 'Closed', SYSDATE, SYSDATE)
SELECT * FROM dual;

--OrderDetails 15

INSERT ALL
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (1, 1, 100.50, 10)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (2, 1, 101.75, 5)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (3, 2, 200.00, 8)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (4, 2, 202.50, 10)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (5, 3, 150.25, 12)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (6, 3, 151.00, 6)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (7, 4, 50.50, 20)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (8, 4, 49.75, 15)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (9, 5, 300.00, 5)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (10, 5, 305.50, 8)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (11, 6, 250.00, 10)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (12, 6, 255.25, 12)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (13, 7, 175.00, 5)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (14, 7, 180.75, 8)
  INTO OrderDetails (DetailID, OrderID, Price, Quantity) VALUES (15, 8, 125.50, 10)
SELECT * FROM dual;

--Transactions 16

INSERT ALL
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (1, 1, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (2, 2, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (3, 3, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (4, 4, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (5, 5, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (6, 6, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (7, 7, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (8, 8, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (9, 9, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (10, 10, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (11, 11, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (12, 12, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (13, 13, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (14, 14, SYSDATE)
  INTO Transactions (TransactionID, OrderID, Timestamp) VALUES (15, 15, SYSDATE)
SELECT * FROM dual;

--TransactionHistory 17

INSERT ALL
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (1, 1, 'Success', 'Completed without issue')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (2, 2, 'Success', 'Completed without issue')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (3, 3, 'Failed', 'Insufficient funds')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (4, 4, 'Pending', 'Awaiting clearance')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (5, 5, 'Success', 'Completed without issue')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (6, 6, 'Failed', 'Transaction declined')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (7, 7, 'Success', 'Completed without issue')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (8, 8, 'Success', 'Completed without issue')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (9, 9, 'Failed', 'Insufficient funds')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (10, 10, 'Pending', 'Awaiting clearance')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (11, 11, 'Success', 'Completed without issue')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (12, 12, 'Failed', 'Transaction declined')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (13, 13, 'Success', 'Completed without issue')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (14, 14, 'Success', 'Completed without issue')
  INTO TransactionHistory (HistoryID, TransactionID, Status, Message) VALUES (15, 15, 'Failed', 'Insufficient funds')
SELECT * FROM dual;

--Deposits 18

INSERT ALL
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (1, 1, 1000.00, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (2, 2, 800.00, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (3, 3, 50000, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (4, 4, 900.00, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (5, 5, 700.00, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (6, 6, 55000, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (7, 7, 1100.00, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (8, 8, 850.00, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (9, 9, 60000, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (10, 10, 950.00, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (11, 11, 750.00, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (12, 12, 58000, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (13, 13, 1200.00, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (14, 14, 900.00, SYSDATE)
  INTO Deposits (DepositID, WalletID, Amount, Timestamp) VALUES (15, 15, 65000, SYSDATE)
SELECT * FROM dual;

--Withdrawls 19

INSERT ALL
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (1, 1, 500.00, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (2, 2, 400.00, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (3, 3, 30000, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (4, 4, 450.00, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (5, 5, 350.00, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (6, 6, 25000, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (7, 7, 550.00, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (8, 8, 420.00, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (9, 9, 32000, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (10, 10, 480.00, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (11, 11, 370.00, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (12, 12, 27000, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (13, 13, 520.00, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (14, 14, 390.00, SYSDATE)
  INTO Withdrawals (WithdrawalID, WalletID, Amount, Timestamp) VALUES (15, 15, 35000, SYSDATE)
SELECT * FROM dual;

--watchlists 20

INSERT ALL
  INTO Watchlists (WatchlistID, UserID) VALUES (1, 1)
  INTO Watchlists (WatchlistID, UserID) VALUES (2, 2)
  INTO Watchlists (WatchlistID, UserID) VALUES (3, 3)
  INTO Watchlists (WatchlistID, UserID) VALUES (4, 4)
  INTO Watchlists (WatchlistID, UserID) VALUES (5, 5)
  INTO Watchlists (WatchlistID, UserID) VALUES (6, 6)
  INTO Watchlists (WatchlistID, UserID) VALUES (7, 7)
  INTO Watchlists (WatchlistID, UserID) VALUES (8, 8)
  INTO Watchlists (WatchlistID, UserID) VALUES (9, 9)
  INTO Watchlists (WatchlistID, UserID) VALUES (10, 10)
  INTO Watchlists (WatchlistID, UserID) VALUES (11, 11)
  INTO Watchlists (WatchlistID, UserID) VALUES (12, 12)
  INTO Watchlists (WatchlistID, UserID) VALUES (13, 13)
  INTO Watchlists (WatchlistID, UserID) VALUES (14, 14)
  INTO Watchlists (WatchlistID, UserID) VALUES (15, 15)
SELECT * FROM dual;

--watchlistItems 21

INSERT ALL
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (1, 1, 1)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (2, 1, 2)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (3, 1, 3)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (4, 2, 4)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (5, 2, 5)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (6, 2, 6)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (7, 3, 7)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (8, 3, 8)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (9, 3, 9)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (10, 4, 10)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (11, 4, 11)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (12, 4, 12)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (13, 5, 13)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (14, 5, 14)
  INTO WatchlistItems (ItemID, WatchlistID, InstrumentID) VALUES (15, 5, 15)
SELECT * FROM dual;

--Notifications 22

INSERT ALL
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (16, 1, 'Your order has been processed', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (17, 2, 'Market alert: Stock prices have changed', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (18, 3, 'Your deposit was successful', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (19, 4, 'Reminder: Update your profile', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (20, 5, 'New feature available now', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (21, 6, 'Security update: Please change your password', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (22, 7, 'Check out the latest market trends', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (23, 8, 'Your withdrawal is complete', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (24, 9, 'Upcoming maintenance notification', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (25, 10, 'Your API Key has been updated', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (26, 11, 'Welcome to our new trading platform', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (27, 12, 'Your account settings have been updated', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (28, 13, 'You have a new message from support', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (29, 14, 'Reminder: Review your recent transactions', SYSDATE)
  INTO Notifications (NotificationID, UserID, Message, Timestamp) VALUES (30, 15, 'Alert: Unusual login activity detected', SYSDATE)
SELECT * FROM dual;

--logs 23

INSERT ALL
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (1, 1, 'Logged in', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (2, 2, 'Viewed account balance', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (3, 3, 'Placed a trade order', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (4, 4, 'Logged out', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (5, 5, 'Updated settings', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (6, 6, 'Checked notifications', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (7, 7, 'Contacted support', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (8, 8, 'Added to watchlist', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (9, 9, 'Removed from watchlist', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (10, 10, 'Reviewed portfolio', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (11, 11, 'Changed password', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (12, 12, 'Downloaded transaction history', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (13, 13, 'Made a deposit', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (14, 14, 'Requested withdrawal', SYSDATE)
  INTO Logs (LogID, UserID, Action, Timestamp) VALUES (15, 15, 'Accessed market data', SYSDATE)
SELECT * FROM dual;


--Settings 24

INSERT ALL
  INTO Settings (SettingID, UserID, Key, Value) VALUES (1, 1, 'Language', 'English')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (2, 2, 'Alerts', 'Enabled')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (3, 3, 'Theme', 'Dark')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (4, 4, 'Notifications', 'Email')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (5, 5, 'Language', 'Spanish')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (6, 6, 'Alerts', 'Disabled')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (7, 7, 'Theme', 'Light')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (8, 8, 'Notifications', 'SMS')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (9, 9, 'Language', 'French')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (10, 10, 'Alerts', 'Enabled')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (11, 11, 'Theme', 'Dark')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (12, 12, 'Notifications', 'Email')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (13, 13, 'Language', 'German')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (14, 14, 'Alerts', 'Disabled')
  INTO Settings (SettingID, UserID, Key, Value) VALUES (15, 15, 'Theme', 'Light')
SELECT * FROM dual;


--portfolios 25


INSERT ALL
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (1, 1, 'Tech Growth')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (2, 2, 'Stable Blue Chips')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (3, 3, 'Emerging Markets')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (4, 4, 'High Dividend Yield')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (5, 5, 'Small Cap Stocks')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (6, 6, 'Renewable Energy')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (7, 7, 'Real Estate Investment')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (8, 8, 'Pharmaceuticals')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (9, 9, 'Global Tech Leaders')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (10, 10, 'Automotive Innovations')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (11, 11, 'Consumer Goods')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (12, 12, 'Financial Services')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (13, 13, 'AI and Robotics')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (14, 14, 'Telecommunications')
  INTO Portfolios (PortfolioID, UserID, Name) VALUES (15, 15, 'Cybersecurity')
SELECT * FROM dual;

--Portfolio Instruments 26

INSERT ALL
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (1, 1, 1)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (2, 1, 2)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (3, 1, 3)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (4, 2, 4)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (5, 2, 5)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (6, 2, 6)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (7, 3, 7)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (8, 3, 8)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (9, 3, 9)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (10, 4, 10)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (11, 4, 11)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (12, 4, 12)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (13, 5, 13)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (14, 5, 14)
  INTO PortfolioInstruments (PortfolioInstrumentID, PortfolioID, InstrumentID) VALUES (15, 5, 15)
SELECT * FROM dual;

--Audittrail 27

INSERT ALL
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (1, 1, 'Login', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (2, 2, 'View Portfolio', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (3, 3, 'Update Account Settings', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (4, 4, 'Place Order', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (5, 5, 'Cancel Order', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (6, 6, 'Login', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (7, 7, 'Logout', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (8, 8, 'Update Profile', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (9, 9, 'Deposit Funds', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (10, 10, 'Withdraw Funds', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (11, 11, 'Change Password', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (12, 12, 'View Transaction History', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (13, 13, 'Create Watchlist', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (14, 14, 'Modify Watchlist', SYSDATE)
  INTO AuditTrail (AuditID, UserID, Action, Timestamp) VALUES (15, 15, 'Access Market Data', SYSDATE)
SELECT * FROM dual;

--MarketData 28

INSERT ALL
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (1, 1, 150.00, 155.00, 160.00, 145.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (2, 2, 250.00, 245.00, 255.00, 240.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (3, 3, 75.00, 80.00, 85.00, 70.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (4, 4, 300.00, 310.00, 320.00, 290.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (5, 5, 500.00, 505.00, 510.00, 495.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (6, 6, 200.00, 195.00, 205.00, 190.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (7, 7, 450.00, 455.00, 460.00, 440.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (8, 8, 50.00, 55.00, 60.00, 45.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (9, 9, 600.00, 610.00, 620.00, 590.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (10, 10, 350.00, 345.00, 355.00, 340.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (11, 11, 400.00, 410.00, 420.00, 390.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (12, 12, 100.00, 95.00, 105.00, 90.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (13, 13, 550.00, 545.00, 555.00, 540.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (14, 14, 650.00, 655.00, 660.00, 645.00, SYSDATE)
  INTO MarketData (DataID, InstrumentID, OpenPrice, ClosePrice, HighPrice, LowPrice, Timestamp) VALUES (15, 15, 700.00, 705.00, 710.00, 695.00, SYSDATE)
SELECT * FROM dual;



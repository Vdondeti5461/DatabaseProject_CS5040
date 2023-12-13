-- Create Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR2(255) UNIQUE NOT NULL,
    Password VARCHAR2(255) NOT NULL,
    Email VARCHAR2(255) UNIQUE NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Create Roles Table
CREATE TABLE Roles (
    RoleID INT PRIMARY KEY,
    Name VARCHAR2(255) UNIQUE NOT NULL
);

-- Create UserGroups Table
CREATE TABLE UserGroups (
    GroupID INT PRIMARY KEY,
    Name VARCHAR2(255) UNIQUE NOT NULL,
    Description VARCHAR2(500)
);

-- Create Instruments Table
CREATE TABLE Instruments (
    InstrumentID INT PRIMARY KEY,
    Name VARCHAR2(255) UNIQUE NOT NULL,
    Symbol VARCHAR2(10) UNIQUE NOT NULL,
    Type VARCHAR2(50) NOT NULL
);

-- Create Exchanges Table
CREATE TABLE Exchanges (
    ExchangeID INT PRIMARY KEY,
    Name VARCHAR2(255) UNIQUE NOT NULL,
    Country VARCHAR2(255) NOT NULL,
    Currency VARCHAR2(3) NOT NULL
);

-- Create UserProfiles Table
CREATE TABLE UserProfiles (
    ProfileID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    FirstName VARCHAR2(255) NOT NULL,
    LastName VARCHAR2(255) NOT NULL,
    DOB DATE NOT NULL,
    Country VARCHAR2(255) NOT NULL
);

-- Create Accounts Table
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    Balance DECIMAL(10, 2) CHECK (Balance >= 0),
    Currency VARCHAR2(3) NOT NULL
);

-- Create Wallets Table
CREATE TABLE Wallets (
    WalletID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    Currency VARCHAR2(3) NOT NULL,
    Balance DECIMAL(10, 2) CHECK (Balance >= 0)
);

-- Create APIKeys Table
CREATE TABLE APIKeys (
    KeyID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    APIKey VARCHAR2(255) UNIQUE NOT NULL,
    APISecret VARCHAR2(255) UNIQUE NOT NULL
);

-- Create UserSessions Table
CREATE TABLE UserSessions (
    SessionID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    Token VARCHAR2(255) UNIQUE NOT NULL,
    ExpiresAt TIMESTAMP NOT NULL
);

-- Create UserRoles Table
CREATE TABLE UserRoles (
    UserRoleID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    RoleID INT REFERENCES Roles(RoleID)
);

-- Create UserGroupMembers Table
CREATE TABLE UserGroupMembers (
    UserGroupMemberID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    GroupID INT REFERENCES UserGroups(GroupID)
);

-- Create InstrumentExchangeMapping Table
CREATE TABLE InstrumentExchangeMapping (
    MappingID INT PRIMARY KEY,
    InstrumentID INT REFERENCES Instruments(InstrumentID),
    ExchangeID INT REFERENCES Exchanges(ExchangeID),
    CONSTRAINT instrument_exchange_unique UNIQUE (InstrumentID, ExchangeID)
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    InstrumentID INT REFERENCES Instruments(InstrumentID),
    Type VARCHAR2(50) CHECK (Type IN ('Buy', 'Sell')) NOT NULL,
    Status VARCHAR2(50) CHECK (Status IN ('Open', 'Closed', 'Cancelled', 'Executed')) NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Create OrderDetails Table
CREATE TABLE OrderDetails (
    DetailID INT PRIMARY KEY,
    OrderID INT REFERENCES Orders(OrderID),
    Price DECIMAL(10, 2) CHECK (Price > 0) NOT NULL,
    Quantity INT CHECK (Quantity > 0) NOT NULL
);

-- Create Transactions Table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    OrderID INT REFERENCES Orders(OrderID),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Create TransactionHistory Table
CREATE TABLE TransactionHistory (
    HistoryID INT PRIMARY KEY,
    TransactionID INT REFERENCES Transactions(TransactionID),
    Status VARCHAR2(255) CHECK (Status IN ('Success', 'Pending', 'Failed')),
    Message VARCHAR2(255)
);

-- Create a Deposits Table
CREATE TABLE Deposits (
    DepositID INT PRIMARY KEY,
    WalletID INT REFERENCES Wallets(WalletID),
    Amount DECIMAL(10, 2) CHECK (Amount > 0),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Create Withdrawals Table
CREATE TABLE Withdrawals (
    WithdrawalID INT PRIMARY KEY,
    WalletID INT REFERENCES Wallets(WalletID),
    Amount DECIMAL(10, 2) CHECK (Amount > 0),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Create Watchlists Table
CREATE TABLE Watchlists (
    WatchlistID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID)
);

-- Create WatchlistItems Table
CREATE TABLE WatchlistItems (
    ItemID INT PRIMARY KEY,
    WatchlistID INT REFERENCES Watchlists(WatchlistID),
    InstrumentID INT REFERENCES Instruments(InstrumentID)
);

-- Create Notifications Table
CREATE TABLE Notifications (
    NotificationID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    Message VARCHAR2(500) NOT NULL,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Create Logs Table
CREATE TABLE Logs (
    LogID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    Action VARCHAR2(500) NOT NULL,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Create Settings Table
CREATE TABLE Settings (
    SettingID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    Key VARCHAR2(255) NOT NULL,
    Value VARCHAR2(500) NOT NULL
);

-- Create Portfolios Table
CREATE TABLE Portfolios (
    PortfolioID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    Name VARCHAR2(255) NOT NULL
);

-- Create PortfolioInstruments Table
CREATE TABLE PortfolioInstruments (
    PortfolioInstrumentID INT PRIMARY KEY,
    PortfolioID INT REFERENCES Portfolios(PortfolioID),
    InstrumentID INT REFERENCES Instruments(InstrumentID)
);

    
        
-- Create AuditTrail Table
CREATE TABLE AuditTrail (
    AuditID INT PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    Action VARCHAR2(500) NOT NULL,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Create MarketData Table
CREATE TABLE MarketData (
    DataID INT PRIMARY KEY,
    InstrumentID INT REFERENCES Instruments(InstrumentID),
    OpenPrice DECIMAL(10, 2),
    ClosePrice DECIMAL(10, 2),
    HighPrice DECIMAL(10, 2),
    LowPrice DECIMAL(10, 2),
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);


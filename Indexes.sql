--First Index

CREATE INDEX idx_transactions_timestamp ON Transactions (Timestamp);

--second Index

CREATE INDEX idx_users_username ON Users (Username);

--Third Index

CREATE INDEX idx_users_email ON Users (Email);


--First Index

CREATE INDEX idx_transactions_timestamp ON Transactions (Timestamp);

--second Index

CREATE INDEX idx_transactions_orderid ON Transactions (OrderID);

--Third Index

CREATE INDEX idx_orders_userid ON Orders (UserID);





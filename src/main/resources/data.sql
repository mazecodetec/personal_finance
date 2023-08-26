INSERT INTO USERS (ID, NAME, LAST_NAME, EMAIL, PASSWORD, CREATED_AT)
VALUES
(1, 'ROOT', 'TEST', 'root@mail.com', 'pass', CURRENT_TIMESTAMP),
(2, 'ADMIN', 'TEST', 'admin@mail.com', '123', CURRENT_TIMESTAMP),
(3, 'USER', 'TEST', 'user@mail.com', 'user', CURRENT_TIMESTAMP);

INSERT INTO ACCOUNTS (ID, DESCRIPTION, CREATED_AT, USERS_ID)
VALUES
(1, 'ROOT_ACCOUNT', CURRENT_TIMESTAMP, 1),
(2, 'ADMIN_ACCOUNT', CURRENT_TIMESTAMP, 2);

INSERT INTO BILLS (ID, DESCRIPTION, TOTAL, CREATED_AT)
VALUES
(1, 'ROOT_BILL', 0, CURRENT_TIMESTAMP),
(2, 'ADMIN_BILL', 0, CURRENT_TIMESTAMP);

INSERT INTO BILLS_ACCOUNTS (BILLS_ID, ACCOUNTS_ID)
VALUES
(1, 1),
(2, 2);

INSERT INTO BILL_ITEMS (ID, DESCRIPTION, STORE, COST, PARTS, IS_PAY_IN_PARTS, URI, CREATED_AT)
VALUES
(1, 'BILL_ITEM_ROOT', 'PAYPAL', 1000, 333.3, 3, "", CURRENT_TIMESTAMP);

INSERT INTO BILLS_BILL_ITEMS (BILLS_ID, BILL_ITEMS_ID)
VALUES
(1, 1);
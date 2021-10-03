BEGIN;

DROP TABLE IF EXISTS USERS CASCADE;
DROP TABLE IF EXISTS PRODUCTS CASCADE;
DROP TABLE IF EXISTS CART CASCADE;

CREATE TABLE IF NOT EXISTS USERS(
    USER_ID SERIAL PRIMARY KEY,
    USERNAME VARCHAR(28) UNIQUE NOT NULL,
    F_NAME TEXT NOT NULL,
    EMAIL TEXT UNIQUE NOT NULL,
    PASWORD TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS PRODUCTS(
    ID SERIAL PRIMARY KEY,
    TITLE TEXT NOT NULL,
    CATEGORY TEXT NOT NULL,
    PRICE INTEGER NOT NULL,
    IMAGE1 TEXT NOT NULL,
    IMAGE2 TEXT,
    IMAGE3 TEXT,
    IMAGE4 TEXT
);

CREATE TABLE IF NOT EXISTS CART(
    USERNAME VARCHAR(28) REFERENCES USERS(USERNAME) NOT NULL,
    ID INTEGER REFERENCES PRODUCTS(ID) NOT NULL,
    QUANTITY INTEGER DEFAULT 0
);

COMMIT;
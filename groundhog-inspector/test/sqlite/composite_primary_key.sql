CREATE TABLE tbl1 (id1 INTEGER NOT NULL, id2 INTEGER NOT NULL, a INTEGER, PRIMARY KEY (id1, id2));
CREATE TABLE tbl2 (b1 INTEGER NOT NULL, b2 INTEGER NOT NULL, FOREIGN KEY (b1, b2) REFERENCES tbl1 (id1, id2));
CREATE TABLE tbl3 (b1 INTEGER NOT NULL, b2 INTEGER NOT NULL, FOREIGN KEY (b1, b2) REFERENCES tbl1 (id2, id1));
CREATE TABLE tbl4 (b1 INTEGER NOT NULL, b2 INTEGER NOT NULL, FOREIGN KEY (b2, b1) REFERENCES tbl1 (id1, id2));
CREATE TABLE tbl5 (b1 INTEGER NOT NULL, b2 INTEGER NOT NULL, FOREIGN KEY (b2, b1) REFERENCES tbl1 (id2, id1));
CREATE TABLE tbl6 (b1 INTEGER NOT NULL, b2 INTEGER NOT NULL, FOREIGN KEY (b1, b2) REFERENCES tbl1);
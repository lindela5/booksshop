CREATE TABLE author
(
    author_id         int   NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name  VARCHAR(100) NOT NULL,
    country VARCHAR(50),

    PRIMARY KEY (author_id)
);


CREATE TABLE sections
(
    id         int   NOT NULL,
    name_section VARCHAR(100) NOT NULL,

    PRIMARY KEY (id)
);

CREATE TABLE customer
(
    customer_id int         NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name  VARCHAR(100) NOT NULL,
    address VARCHAR(50),
    phone VARCHAR(15) ,
    email VARCHAR(50),
    PRIMARY KEY (customer_id)
);

CREATE TABLE publishing_house
(
    publishing_house_id       int          NOT NULL,
    name_publisher VARCHAR(100) NOT NULL,
    address  VARCHAR(100),
    PRIMARY KEY (publishing_house_id)
);

 CREATE TABLE supplier
(
    id int         NOT NULL,
    supplier_name VARCHAR(100) NOT NULL,
    address VARCHAR(100),
    phone VARCHAR(15) ,
    PRIMARY KEY (id)
);

CREATE TABLE books (
    book_id  int NOT NULL,
    title  VARCHAR(100) NOT NULL,
    isbn   VARCHAR(100),
    section_id int NOT NULL,
    year_of_issue int ,
    publishing_house_id int NOT NULL,
    price     DECIMAL,
    stock_balances int,
    PRIMARY KEY (book_id)
);


   ALTER TABLE books
   ADD CONSTRAINT FK_books_publishing_house_id
   FOREIGN KEY (publishing_house_id)
   REFERENCES publishing_house


ALTER TABLE books
   ADD CONSTRAINT FK_books_sections_id
   FOREIGN KEY (section_id)
   REFERENCES sections


CREATE TABLE author_book(
	book_id int,
    author_id int
);

ALTER TABLE     author_book
    ADD CONSTRAINT  FK_author_books_author_id
    FOREIGN KEY (author_id) REFERENCES author


ALTER TABLE  author_book
    ADD CONSTRAINT FK_author_books_books_id
    FOREIGN KEY (book_id) REFERENCES books


CREATE TABLE orders (
    order_id         int NOT NULL,
    customer_id   int NOT NULL,
    order_date date ,
    amount    DECIMAL NOT NULL,
    PRIMARY KEY (order_id)
);



ALTER TABLE orders
    ADD CONSTRAINT FK_orders_customer_id
        FOREIGN KEY (customer_id) REFERENCES customer(customer_id);


CREATE TABLE book_order(
	order_id int,
	book_id int,
    quantity int
);

ALTER TABLE     book_order
    ADD CONSTRAINT  FK_book_order_book_id
    FOREIGN KEY (book_id) REFERENCES books

ALTER TABLE  book_order
    ADD CONSTRAINT FK_book_order_order_id
    FOREIGN KEY (order_id) REFERENCES orders

CREATE TABLE supply(
    supply_id         int NOT NULL,
    supplier_id   int NOT NULL,
    supply_date date ,
    supplier_price    DECIMAL NOT NULL,
    PRIMARY KEY (supply_id)
);

ALTER TABLE supply
    ADD CONSTRAINT FK_supply_supplier_id
        FOREIGN KEY (supplier_id) REFERENCES supplier(id);

CREATE TABLE book_supply(
	supply_id int,
	book_id int,
    quantity int
);

ALTER TABLE     book_supply
    ADD CONSTRAINT  FK_book_supply_book_id
    FOREIGN KEY (book_id) REFERENCES books

ALTER TABLE  book_supply
    ADD CONSTRAINT FK_book_supply_supply_id
    FOREIGN KEY (supply_id) REFERENCES supply

INSERT INTO author (author_id, first_name, last_name, country) VALUES
    (1, 'Mark', 'Twain', 'United States'),
    (2, 'Joanne', 'Rowling', 'United Kingdom'),
    (3, 'George', 'Orwell', 'United Kingdom'),
    (4, 'John Ronald Reuel', 'Tolkien', 'United Kingdom'),
    (5, 'Arthur Conan', 'Doyle', 'United Kingdom'),
    (6, 'Agatha', 'Christie', 'United Kingdom'),
    (7, 'Ivan', 'Turgenev', 'Russia'),
    (8,'Neil','Gaiman', 'United Kingdom'),
    (9,'Terry','Pratchett', 'United Kingdom');

INSERT INTO sections (id, name_section) VALUES
    (1, 'Detective' ),
    (2, 'Fantasy'),
    (3, 'Adventure'),
    (4, 'Classic'),
    (5, 'Drama'),
    (6, 'Horror'),
    (7, 'Mystery');

INSERT INTO customer (customer_id, first_name, last_name, address, phone, email) VALUES
    (1, 'Maksim', 'Petrov', '246000, Gomel, Sovetskaya St. 53/21', '+375258522321', 'mpetrov@gsu.by'),
    (2, 'Volga', 'Semencova', '246000, Gomel, Lienin Ave 6/14', '+375336541212', 'volga_semencova@mail.ru'),
    (3, 'Oleg', 'Rizov', '246000, Gomel, Artyom St. 10/9', '+375299636336', 'oleg_rizov@gmail.com'),
    (4, 'Myhamed', 'Ali', '246000, Gomel, Billecki St. 6/12', '+375251417845', 'mali@gsu.by'),
    (5, 'Marya', 'Koshkina', '246000, Gomel, Katunin St. 86/33', '+375331488256', 'mama_koshka@gmail.com'),
    (6, 'Ihar', 'Golovachov', '246000, Gomel, Moiseenko St. 13/13', '+375294565685', 'ihar_golovachov@mail.ru'),
    (7, 'Oksana', 'Ivanova', '246000, Gomel, Golovatskogo St. 124/57', '+375291784565', 'oivanova@gsu.by'),
    (8,'Elena','Tarasova', '246000, Gomel, Matrosova St. 4/2', '+375297878521', 'elena-tarasova@gmail.com'),
    (9,'Taras','Kolinin', '246000, Gomel, Pinskaya St. 6/44', '+375297412169', 'tkolinin@gsu.by');

INSERT INTO publishing_house (publishing_house_id, name_publisher, address) VALUES
    (1, 'Penguin Clothbound Classics', '20 Vauxhall Bridge Road London, United Kingdom'),
    (2, 'BBC Books', '8 Viaduct Gardens, London,  United Kingdom'),
    (3, 'Orbit Books',' 1290 Avenue of the Americas, New York, United States'),
    (4, 'AST','21 Zvezdny Boulevard, Ostankinsky, Moscow');

INSERT INTO supplier (id, supplier_name, address, phone) VALUES
    (1, 'Perfect books', '14 Pinskaya Street, Gomel, Belarus','+375291251256'),
    (2, 'All you need', '10 Kozlova Street, Minsk, Belarus','+375253625252'),
    (3, 'Houses of the Book','23 Zvezdny Boulevard, Ostankinsky, Moscow','');

INSERT INTO books (book_id, title, isbn, section_id, year_of_issue,publishing_house_id,price,stock_balances) VALUES
    (1, 'The Adventures of Sherlock Holmes', '9780241347782', 1, 2018, 1, 23, 2),
    (2, 'Good Omens', '9781910281918', 7, 2015, 2, 23.16, 1),
    (3, 'The Lord of the Rings', '9780553714777', 2, 2015, 4, 43.5, 1),
    (4, 'The Hobbit', '9780007525508', 2, 2013, 4, 33.8, 2),
    (5, 'The Hobbit','0-618-00221-9', 2, 1937, 1, 213, 1),
    (6, 'The Adventures of Tom Sawyer', '9781094015231', 3, 2020, 3, 15, 5),
    (7, 'The Mysterious Stranger', '9781977555175', 7, 2017, 3, 17.4, 2),
    (8, 'Harry Potter and the Deathly Hallows', '9780553714777', 3, 2017, 4, 24.1, 6),
    (9, 'Fantastic Beasts and Where to Find Them', '9780368500039', 7, 2019, 2, 35, 1),
    (10, 'Nineteen Eighty-Four','9780822235927', 4, 2017, 2, 21.3, 2),
    (11, 'Animal Farm', '9780241341667', 4, 2019, 4, 19.5, 1),
    (12, 'The Murder at the Vicarage', '9780008196516', 1, 2016, 1, 17.3, 1),
    (13, 'Fathers and Sons', '9780553714777', 4, 2017, 4, 25, 4),
    (14, 'The Graveyard Book', '9788897141761', 7, 2016, 2, 28.7, 10),
    (15, 'The Colour of Magic','9788499892849', 7, 2011, 3, 8, 1);

INSERT INTO author_book (book_id, author_id) VALUES
    (1, 5),    (2, 8),
    (2, 9),    (3, 4),
    (4, 4),    (5, 4),
    (6, 1),    (7, 1),
    (8, 2),    (9, 2),
    (10, 3),    (11, 3),
    (12, 6),    (13, 7),
    (14, 8),    (15, 9);

INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
    (1, 2, '2020-01-14 00:00:00',213),
    (2, 1, '2020-01-25 00:00:00', 83.2),
    (3, 3, '2020-02-29 00:00:00', 23),
    (4, 4, '2020-07-14 00:00:00', 33.8),
    (5, 5, '2020-03-08 00:00:00', 61.7),
    (6, 6, '2020-08-30 00:00:00', 62.1),
    (7, 7, '2020-09-07 00:00:00', 23),
    (8, 7, '2020-05-19 00:00:00', 15),
    (9, 8, '2020-05-26 00:00:00', 66.66),
    (10, 9, '2020-06-01 00:00:00', 38.7),
    (11, 2, '2020-04-21 00:00:00', 8);

INSERT INTO book_order (order_id, book_id, quantity) VALUES
    (1, 5, 1),
    (2, 8, 2),
    (2, 9, 1),
    (3, 1, 1),
    (4, 4, 1),
    (5, 13, 1),
    (5, 14, 1),
    (5, 15, 1),
    (6, 10, 2),
    (6, 11, 1),
    (7, 1, 1),
    (7, 12, 1),
    (8, 6, 1),
    (9, 2, 1),
    (9, 3, 1),
    (10, 7, 1),
    (10, 10, 1),
    (11, 15, 1);

INSERT INTO supply (supply_id, supplier_id, supply_date, supplier_price) VALUES
    (1, 1, '2019-10-15 00:00:00',129.1),
    (2, 2,'2020-01-10 00:00:00', 108.3),
    (3, 3,'2020-01-10 00:00:00', 450),
    (4, 2,'2008-03-01 00:00:00', 152.3),
    (5, 1,'2008-03-13 00:00:00', 238.8);

INSERT INTO book_supply (supply_id, book_id, quantity) VALUES
    (1, 1, 4),
    (1, 2, 2),
    (1, 3, 2),
    (1, 4, 3),
    (2, 8, 8),
    (2, 9, 2),
    (3, 5, 2),
    (3, 6, 6),
    (3, 7, 3),
    (4, 13, 5),
    (4, 14, 11),
    (4, 15, 3),
    (5, 10, 5),
    (5, 11, 2),
    (5, 12, 2);

ALTER TABLE books ADD COLUMN picture VARCHAR(200);

UPDATE books SET picture = 'https://i.ibb.co/RQ4dHd6/download-2.jpg'
WHERE book_id = 1;


UPDATE books SET picture = 'https://i.ibb.co/zGKQKrB/65373096.jpg'
WHERE book_id = 2;


UPDATE books SET picture = 'https://i.ibb.co/RQ4dHd6/download-2.jpg'
WHERE book_id = 3;


UPDATE books SET picture = 'https://i.ibb.co/zGKQKrB/65373096.jpg'
WHERE book_id = 4;


UPDATE books SET picture = 'https://i.ibb.co/RQ4dHd6/download-2.jpg'
WHERE book_id = 5;


UPDATE books SET picture = 'https://i.ibb.co/zGKQKrB/65373096.jpg'
WHERE book_id = 6;


UPDATE books SET picture = 'https://i.ibb.co/RQ4dHd6/download-2.jpg'
WHERE book_id = 7;


UPDATE books SET picture = 'https://i.ibb.co/zGKQKrB/65373096.jpg'
WHERE book_id = 8;


UPDATE books SET picture = 'https://i.ibb.co/RQ4dHd6/download-2.jpg'
WHERE book_id = 9;


UPDATE books SET picture = 'https://i.ibb.co/zGKQKrB/65373096.jpg'
WHERE book_id = 10;


UPDATE books SET picture = 'https://i.ibb.co/RQ4dHd6/download-2.jpg'
WHERE book_id = 11;


UPDATE books SET picture = 'https://i.ibb.co/zGKQKrB/65373096.jpg'
WHERE book_id = 12;


UPDATE books SET picture = 'https://i.ibb.co/RQ4dHd6/download-2.jpg'
WHERE book_id = 13;


UPDATE books SET picture = 'https://i.ibb.co/zGKQKrB/65373096.jpg'
WHERE book_id = 14;


UPDATE books SET picture = 'https://i.ibb.co/RQ4dHd6/download-2.jpg'
WHERE book_id = 15;




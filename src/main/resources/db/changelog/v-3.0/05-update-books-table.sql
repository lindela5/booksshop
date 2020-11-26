--liquibase formatted sql
--changeset sinitsa:05-update-books-table.sql


UPDATE books SET picture = 'https://ibb.co/gzsms3f'
WHERE book_id = 1;
GO

UPDATE books SET picture = 'https://ibb.co/mhFgzgy'
WHERE book_id = 2;
GO

UPDATE books SET picture = 'https://ibb.co/gzsms3f'
WHERE book_id = 3;
GO

UPDATE books SET picture = 'https://ibb.co/mhFgzgy'
WHERE book_id = 4;
GO

UPDATE books SET picture = 'https://ibb.co/gzsms3f'
WHERE book_id = 5;
GO

UPDATE books SET picture = 'https://ibb.co/mhFgzgy'
WHERE book_id = 6;
GO

UPDATE books SET picture = 'https://ibb.co/gzsms3f'
WHERE book_id = 7;
GO

UPDATE books SET picture = 'https://ibb.co/mhFgzgy'
WHERE book_id = 8;
GO

UPDATE books SET picture = 'https://ibb.co/gzsms3f'
WHERE book_id = 9;
GO

UPDATE books SET picture = 'https://ibb.co/mhFgzgy'
WHERE book_id = 10;
GO

UPDATE books SET picture = 'https://ibb.co/gzsms3f'
WHERE book_id = 11;
GO

UPDATE books SET picture = 'https://ibb.co/mhFgzgy'
WHERE book_id = 12;
GO

UPDATE books SET picture = 'https://ibb.co/gzsms3f'
WHERE book_id = 13;
GO

UPDATE books SET picture = 'https://ibb.co/mhFgzgy'
WHERE book_id = 14;
GO

UPDATE books SET picture = 'https://ibb.co/gzsms3f'
WHERE book_id = 15;
GO


--rollback UPDATE books SET picture = NULL WHERE book_id = 15;
--rollback UPDATE books SET picture = NULL WHERE book_id = 14;
--rollback UPDATE books SET picture = NULL WHERE book_id = 13;
--rollback UPDATE books SET picture = NULL WHERE book_id = 12;
--rollback UPDATE books SET picture = NULL WHERE book_id = 11;
--rollback UPDATE books SET picture = NULL WHERE book_id = 10;
--rollback UPDATE books SET picture = NULL WHERE book_id = 9;
--rollback UPDATE books SET picture = NULL WHERE book_id = 8;
--rollback UPDATE books SET picture = NULL WHERE book_id = 7;
--rollback UPDATE books SET picture = NULL WHERE book_id = 6;
--rollback UPDATE books SET picture = NULL WHERE book_id = 5;
--rollback UPDATE books SET picture = NULL WHERE book_id = 4;
--rollback UPDATE books SET picture = NULL WHERE book_id = 3;
--rollback UPDATE books SET picture = NULL WHERE book_id = 2;
--rollback UPDATE books SET picture = NULL WHERE book_id = 1;

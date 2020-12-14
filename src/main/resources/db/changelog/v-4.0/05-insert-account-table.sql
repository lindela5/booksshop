--liquibase formatted sql
--changeset sinitsa:05-insert-account-table


INSERT INTO account (id, username, password, email, roles, status) VALUES
(1, 'admin','$2y$12$fi1DJkSRQrUvENO1.FEzKOeOTotpUrKcVrvmhYXDD2qmPn6nJEsq2','admin@mail.ru','ADMIN','ACTIVE' ),
(2, 'maksim', '$2y$12$iajgIR1KH6gc5TM.EDBSf.gO8NQIJ7APrdjrGmqn59CY4XmooWrde','mpetrov@gsu.by','USER','ACTIVE');
GO



--rollback DELETE FROM account;
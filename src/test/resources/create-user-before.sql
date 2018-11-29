delete from user_role;
                delete from usr;

insert into usr (id,active, password, username) values
(1, true, '$2a$08$88t54n3zCnZSgC2UxgWmy.NLIyvr/kgZa0vteqqldh/GxphbpLF8u', 'admin'),
(2, true, '$2a$08$88t54n3zCnZSgC2UxgWmy.NLIyvr/kgZa0vteqqldh/GxphbpLF8u', 'mike');

insert into user_role(user_id,roles) values
(1,'USER'), (1,'ADMIN'),
(2,'USER');
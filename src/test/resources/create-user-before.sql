delete from user_role;
delete from usr;

insert into usr(id, active, password, username) values
(1, true, '202cb962ac59075b964b07152d234b70', 'admin'),
(2, true, '{P1EaZuzxg6dunos3bT/OWeeee4m/KRX8GipsCbJjT88=}81f3ffb7ba054884016776ef25f0f9b2', 'mike');

insert into user_role(user_id, roles) values
(1, 'USER'), (1, 'ADMIN'),
(2, 'USER');
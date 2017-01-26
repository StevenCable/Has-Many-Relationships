
SELECT * FROM users;

SELECT * FROM posts WHERE posts.users_id = 100;

SELECT posts.*, users.first_name, users.last_name FROM users INNER JOIN posts ON users.id = posts.users_id WHERE users_id = 200;

SELECT posts.*
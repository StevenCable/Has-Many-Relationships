
-- SELECT * FROM users;

-- SELECT * FROM posts WHERE posts.users_id = 100;
-- --#2
-- SELECT posts.*, users.first_name, users.last_name FROM users 
--   INNER JOIN posts ON users.id = posts.users_id
--   WHERE users_id = 200;
-- --#4
-- SELECT p.*, u.username 
--   FROM users u 
--   INNER JOIN posts p ON p.users_id = u.id 
--   WHERE u.first_name = 'Norene' AND u.last_name = 'Schmitt'; 
-- --#5
-- SELECT u.username FROM users u
-- INNER JOIN posts p
-- ON p.users_id = u.id
-- WHERE p.created_at > '2015-01-01 00:00:00-10';
-- --#6
-- SELECT p.title, p.content, u.username FROM users u
-- INNER JOIN posts p
-- ON p.users_id = u.id
-- WHERE u.created_at > '2015-01-01 00:00:00-10';
--#7
-- SELECT c.*, p.title as 'Post Title' FROM post p 
-- INNER JOIN comments c
-- c.posts_id = p.id;
-- --#8
-- SELECT c.*, p.title as 'post_title', p.url as 'post_url', c.body as 'comment_body' FROM comments c
-- INNER JOIN posts p ON p.id = c.posts_id
-- WHERE p.created_at < '2015-01-01 00:00:00-10';
--#9

SELECT * FROM users;

SELECT * FROM posts WHERE posts.users_id = 100;
--#2
SELECT posts.*, users.first_name, users.last_name FROM users 
  INNER JOIN posts ON users.id = posts.users_id
  WHERE users_id = 200;
--#4
SELECT p.*, u.username 
  FROM users u 
  INNER JOIN posts p ON p.users_id = u.id 
  WHERE u.first_name = 'Norene' AND u.last_name = 'Schmitt'; 
--#5
SELECT u.username FROM users u
INNER JOIN posts p
ON p.users_id = u.id
WHERE p.created_at > '2015-01-01 00:00:00-10';
--#6
SELECT p.title, p.content, u.username FROM users u
INNER JOIN posts p
ON p.users_id = u.id
WHERE u.created_at > '2015-01-01 00:00:00-10';
#7
SELECT c.*, p.title as 'Post Title' FROM post p 
INNER JOIN comments c
c.posts_id = p.id;
--#8
SELECT c.*, p.title as 'post_title', p.url as 'post_url', c.body as 'comment_body' FROM comments c
INNER JOIN posts p ON p.id = c.posts_id
WHERE p.created_at < '2015-01-01 00:00:00-10';
#9
SELECT c.*, p.title as 'post_title', p.url as 'post_url', c.body as 'comment_body' 
FROM comments c INNER JOIN posts p 
ON p.id = c.posts_id
WHERE p.created_at > '2015-01-01 00:00:00:-10';
--#10
SELECT c.*, p.title as 'post_title', p.url as 'post_url', c.body as 'comment_body'
FROM comments c INNER JOIN posts p
ON p.id = c.posts_id
WHERE c.body = 'USB';
--#11
SELECT p.title as 'post_title', u.first_name,u.last_name, c.body as 'comment_body' 
FROM posts p INNER JOIN comments c
ON p.id = c.posts_id
posts p INNER JOIN user u
ON p.users_id = u.id
WHERE c.body = 'matrix';
--#12
SELECT u.first_name, u.last_name, c.body as 'comment_body',
FROM posts p INNER JOIN comments c
ON p.id = c.posts_id
posts p INNER JOIN user u
ON p.users_id = u.id
WHERE c.body LIKE '%SSL%' AND p.content LIKE '%dolorum%';
--#13
SELECT u.first_name as 'post_author_first_name', u.last_name as 'post_author_last_name', p.title as 'post_title', u.name as 'comment_author_username', c.body as 'comment_body' 
FROM users u INNER JOIN posts p
ON u.id = p.users_id
posts p INNER JOIN comments c
ON p.id = c.posts_id
WHERE c.body LIKE '%SSL%'
  OR c.boy LIKE '%firewall%'
  AND p.content LIKE '%nemo%';


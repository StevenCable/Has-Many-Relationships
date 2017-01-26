-- \c postgres

DROP DATABASE IF EXISTS "has_many_blogs";
DROP USER IF EXISTS "has_many_user";

CREATE USER has_many_user;
CREATE DATABASE has_many_blogs OWNER has_many_user;

-- \c has_many_user

DROP TABLE IF EXISTS "users";
CREATE TABLE users (
  id SERIAL NOT NULL PRIMARY KEY, username varchar(90) NOT NULL, first_name varchar(90) NULL, last_name varchar(90) NULL, created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

DROP TABLE IF EXISTS "posts";
CREATE TABLE posts (
  id SERIAL NOT NULL PRIMARY KEY, 
  title varchar(180) NULL, 
  url varchar(510) NULL, 
  content text NULL, 
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), 
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), 
  users_id SERIAL REFERENCES users (id)

);

DROP TABLE IF EXISTS "comments";
CREATE TABLE comments (
  id SERIAL NOT NULL PRIMARY KEY, 
  body varchar(510) NULL, 
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), 
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), 
  users_id SERIAL REFERENCES users (id), 
  posts_id SERIAL REFERENCES posts (id)
);

\i scripts/blog_data.sql


-- \d+ "users";
-- \d+ "posts";
-- \d+ "comments";

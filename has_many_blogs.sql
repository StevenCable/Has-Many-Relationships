DROP DATABASE IF EXISTS "has_many_blogs";
DROP USER IF EXISTS "has_many_user";

CREATE USER has_many_user;
CREATE DATABASE has_many_blogs OWNER has_many_user;

-- \c has_many_user

DROP TABLE IF EXISTS "users";
CREATE TABLE users (
  id SERIAL NOT NULL PRIMARY KEY, username varchar(90) NOT NULL, first_name varchar(90) NULL, last_name varchar(90) NULL, created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

\d+ "users";
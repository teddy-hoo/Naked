DROP TABLE IF EXISTS users;

CREATE TABLE users (
  uid serial primary key,
  username varchar(32)   NOT NULL,
  password char(40)   NOT NULL,
  name varchar(120)   NOT NULL,
  email varchar(70)   NOT NULL,
  created_at timestamp NOT NULL,
  active char(1)   NOT NULL
);

DROP TABLE IF EXISTS blogs;

CREATE TABLE blogs (
  bid serial primary key,
  author_id integer references users(uid),
  create_at timestamp NOT NULL,
  title text,
  content text,
  key_words varchar
);


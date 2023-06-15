CREATE TABLE IF NOT EXISTS users (
  user_id INT PRIMARY KEY UNIQUE,
  username VARCHAR(255) UNIQUE NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  creation_date DATE DEFAULT CURRENT_TIMESTAMP,
  is_active BOOLEAN
);

CREATE TABLE IF NOT EXISTS categories (
  category_id INT PRIMARY KEY NOT NULL ,
  name VARCHAR(255) UNIQUE NOT NULL,
  creation_date DATE 
);

CREATE TABLE IF NOT EXISTS posts (
  post_id INT PRIMARY KEY,
  user_id INT NOT NULL,
  category_id INT NOT NULL,
  title VARCHAR(50),
  content TEXT,
  view_count INT DEFAULT 0,
  creation_date DATE DEFAULT CURRENT_TIMESTAMP,
  is_published BOOLEAN,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


CREATE TABLE IF NOT EXISTS comments (
  comment_id INT PRIMARY KEY,
  post_id INT NOT NULL,
  user_id INT NOT NULL,
  comment TEXT NOT NULL,
  creation_date DATE DEFAULT CURRENT_TIMESTAMP,
  is_confirmed BOOLEAN,
  FOREIGN KEY (post_id) REFERENCES posts(post_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);
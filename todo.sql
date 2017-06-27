CREATE TABLE todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details TEXT, priority INT NOT NULL DEFAULT 1, created_at TIMESTAMP DEFAULT now(), completed_at TIMESTAMP);

INSERT INTO todos(title) VALUES ('Kitchen');
INSERT INTO todos(title) VALUES ('Bathroom');
INSERT INTO todos(title) VALUES ('Yardwork');
INSERT INTO todos(title) VALUES ('Oil');
INSERT INTO todos(title) VALUES ('Grocieries');

UPDATE todos SET completed_at = now() WHERE id = 1;

SELECT title, completed_at FROM todos WHERE completed_at IS NULL;

UPDATE todos set priority = 5 WHERE id = 4;
SELECT title, priority FROM todos WHERE priority > 1;

DELETE FROM todos WHERE completed_at IS NOT NULL;
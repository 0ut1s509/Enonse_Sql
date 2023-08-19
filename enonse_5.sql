--kreyasyon baz de done todolist
CREATE DATABASE todolist

-- Kreye yon tab ki rele tasks avèk kolòn task_id, task_name, description, due_date, ak status.
CREATE TABLE tasks (
    task_id INT PRIMARY KEY,
    task_name VARCHAR(255),
    description TEXT,
    due_date DATE,
    status VARCHAR(15)
    priority INT
);

-- Ensere kèk tach nan tab sa, sou diferan non, deskripsyon, dat, ak stati ('pending', 'completed')
INSERT INTO tasks (task_id, task_name, description, due_date, status, priority)
VALUES
    (1, 'Premye Tach', 'Deskripsyon Premye Tach', '2023-08-25', 'pending'),
    (2, 'Dezyèm Tach', 'Deskripsyon Dezyèm Tach', '2023-08-20', 'completed'),
    (3, 'Twazyèm Tach', 'Deskripsyon Twazyèm Tach', '2023-08-28', 'pending');



-- Rekipere tout tach yo.
SELECT * FROM tasks;

-- Rekipere tach ki gen pending yo
SELECT * FROM tasks WHERE status = 'pending';


-- Rekipere tach ki ke dat yo ap rive, nan semèn pwochen an (7 jou).
SELECT * FROM tasks WHERE status = 'pending' AND due_date <= DATE_ADD(CURDATE(), INTERVAL 7 DAY);


-- Rekipere tach ki konplete yo.
SELECT * FROM tasks WHERE status = 'completed';



-- Ajoute yon nouvo kolòn priority (ki ka gen valè 1,2,3,4) nan tab tasks la epi mete ajou tout rantre ki te deja ekziste yo.
ALTER TABLE tasks ADD COLUMN priority INT;


-- Kreye yon nouvo tab ki rele categories epi asosye l ak tab tach yo, gras ak yon relasyon kle etranje.
CREATE TABLE categories (
category_id INT PRIMARY KEY,
category_name VARCHAR(255)
);

ALTER TABLE tasks ADD COLUMN category_id INT;
ALTER TABLE tasks ADD FOREIGN KEY (category_id) REFERENCES categories(category_id);


-- Kreye yon rekèt pou w rekipere tach ki enpòtan yo. Ki gen priyorite 1.
SELECT * FROM tasks WHERE priority = 1;


-- Answit kreye rekèt ki pou retire tout tach ki "completed" yo oubyen ki ekspire.
DELETE FROM tasks WHERE status = 'completed' OR due_date < CURDATE();






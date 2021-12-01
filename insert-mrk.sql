use videoteka;

INSERT Film (title, theme, country, director, release_date)
VALUES 
('Something about love', 'drama', 'Ukraine', 'Ilon Mask', '2020-6-04'),
('Green mile', 'horror', 'America', 'Stiven Spilberg', '2020-6-20'),
('Family', 'comedy', 'America', 'Quentin Tarantino', '2019-2-13'),
('Never again', 'drama', 'Ukraine', 'Martin Scorcese', '2020-3-04'),
('Intouchables', 'drama', 'France', 'Verona Query', '2019-11-05'),
('Cherry', 'drama', 'America', 'Selena Gomez', '2020-3-18'),
('Purple', 'drama', 'America', 'Christofer Nolan', '2021-3-13')
;

INSERT Disk (cost, film_id)
VALUES 
(300, 1),
(430, 2),
(290, 3),
(450, 4),
(500.05, 5),
(220, 6),
(300, 7)
;


INSERT Buyer (age, sex, social_status, disk_id)
VALUES 
(18, 'female', 'poor', 1),
(19, 'male', 'rich', 1),
(24, 'female', 'rich', 2),
(30, 'male', 'average', 3),
(42, 'male', 'rich', 4),
(19, 'female', 'average', 3),
(23, 'male', 'poor', 2),
(20, 'male', 'poor', 5),
(17, 'female', 'average', 6),
(19, 'female', 'average', 7),
(20, 'male', 'average', 7),
(21, 'male', 'rich', 7)
;

INSERT Actor (name_, hasOscar)
VALUES
('Angelina Jolie', 1),
('Will Smith', 0),
('Johnny Depp', 1),
('Robert Downey', 1),
('Jack Nicholson', 0),
('Marlon Brando', 0),
('Denzel Wash', 1),
('Meryl Streep', 1),
('Sidney Poitier', 0),
('Angelina Jolie', 1),
('Kate Winslet', 1),
('Sophia Loren', 0),
('Kate Winslet', 1),
('Angelina Jolie', 1),
('Johnny Depp', 0),
('Kate Winslet', 0);

INSERT Film_Actor (actor_id, film_id)
VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 1),
(5, 2),
(6, 4),
(7, 5),
(8, 6),
(9, 7),
(9, 2),
(6, 4),
(2, 7),
(11, 4),
(12, 3),
(14, 6),
(15, 5),
(11, 2),
(13, 7);

INSERT Purchase (disk_id, purchase_date)
VALUES
(1 ,'2020-1-19'),
(2,'2020-1-21'),
(3,'2020-1-31'),
(4,'2020-3-12'),
(5,'2019-4-12'),
(6,'2019-4-30'),
(6,'2021-6-4'),
(1,'2021-6-22'),
(1,'2021-6-30'),
(2,'2021-8-1'),
(5,'2019-9-2'),
(4,'2021-10-30'),
(3,'2021-5-3');
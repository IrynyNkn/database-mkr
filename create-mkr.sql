DROP DATABASE videoteka;
CREATE DATABASE videoteka;
USE videoteka;

CREATE TABLE IF NOT EXISTS Film (
	id int primary key auto_increment,
    title varchar(30),
    theme varchar(30),
    country varchar(15),
    director varchar(30),
    release_date date
);
CREATE TABLE IF NOT EXISTS Disk (
	id int primary key auto_increment,
    cost float,
    film_id int not null unique,
    foreign key (film_id) references Film(id)
);
CREATE TABLE IF NOT EXISTS Buyer (
	id int primary key auto_increment,
    age int,
    sex varchar(15),
    social_status varchar(15),
    disk_id int,
    foreign key (disk_id) references Disk(id)
);
CREATE TABLE IF NOT EXISTS Actor (
	id int primary key auto_increment,
    name_ varchar(15),
    hasOscar BOOLEAN
);
CREATE TABLE IF NOT EXISTS Film_Actor (
	actor_id int,
    film_id int,
    foreign key (film_id) references Film(id),
    foreign key (actor_id) references Actor(id)
);
CREATE TABLE IF NOT EXISTS Purchase (
	disk_id int,
    purchase_date date,
    foreign key (disk_id) references Disk(id)
);

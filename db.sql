CREATE DATABASE boardgames;

CREATE TABLE client (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    password VARCHAR(25) NOT NULL
);

CREATE TABLE publishers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE designers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50),
    description TEXT
);

CREATE TABLE artists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50),
    description TEXT
);

CREATE TABLE boardgames (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    minPlayers INT,
    maxPlayers INT,
    minPlayTime INT,
    maxPlayTime INT,
    price DECIMAL(10,2) NOT NULL,
    publisher_id INT NOT NULL,
    designer_id INT,
    artist_id INT,
    FOREIGN KEY (publisher_id) REFERENCES publishers(id),
    FOREIGN KEY (designer_id) REFERENCES designers(id),
    FOREIGN KEY (artist_id) REFERENCES artists(id)
);
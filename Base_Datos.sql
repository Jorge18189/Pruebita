DROP DATABASE IF EXISTS LSA;
CREATE DATABASE LSA;
USE LSA;

-- Tabla de usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
select * from usuarios;

-- Tabla de resultados
CREATE TABLE resultados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    score INT NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userId) REFERENCES usuarios(id) ON DELETE CASCADE
);
select * from resultados;

-- Tabla de escuelas guardadas
CREATE TABLE schools (
    id INT AUTO_INCREMENT PRIMARY KEY,
    school_name VARCHAR(255) NOT NULL,
    userId INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userId) REFERENCES usuarios(id) ON DELETE CASCADE
);
select * from schools;

-- Tabla de resultados_mensaje
CREATE TABLE resultados_mensaje (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    mensaje_resumen TEXT NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userId) REFERENCES usuarios(id) ON DELETE CASCADE
);
select * from resultados_mensaje;
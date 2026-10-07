CREATE DATABASE IF NOT EXISTS automax;
USE automax;

CREATE TABLE marca (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL UNIQUE
);

CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE vehiculo (
    id_vehiculo INT AUTO_INCREMENT PRIMARY KEY,
    id_marca INT NOT NULL,
    id_categoria INT NOT NULL,
    modelo VARCHAR(80) NOT NULL,
    anio INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    imagen VARCHAR(500),
    descripcion VARCHAR(500),
    FOREIGN KEY (id_marca) REFERENCES marca(id_marca),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE caracteristica (
    id_caracteristica INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE vehiculo_caracteristica (
    id_vehiculo INT NOT NULL,
    id_caracteristica INT NOT NULL,
    PRIMARY KEY (id_vehiculo, id_caracteristica),
    FOREIGN KEY (id_vehiculo) REFERENCES vehiculo(id_vehiculo),
    FOREIGN KEY (id_caracteristica) REFERENCES caracteristica(id_caracteristica)
);

CREATE TABLE promocion (
    id_promocion INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    descripcion VARCHAR(300),
    descuento DECIMAL(5,2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL
);

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE resena (
    id_resena INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_vehiculo INT NOT NULL,
    comentario VARCHAR(500) NOT NULL,
    valoracion INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_vehiculo) REFERENCES vehiculo(id_vehiculo)
);

INSERT INTO marca (nombre) VALUES
('Toyota'), ('Ford'), ('Porsche'), ('Hyundai'), ('Honda');

INSERT INTO categoria (nombre) VALUES
('Sedán'), ('SUV'), ('Camioneta'), ('Deportivo');


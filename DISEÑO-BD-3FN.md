# Diseño lógico de base de datos - AutoMax

## Entidades

### MARCA
- id_marca (PK)
- nombre

### CATEGORIA
- id_categoria (PK)
- nombre

### VEHICULO
- id_vehiculo (PK)
- id_marca (FK)
- id_categoria (FK)
- modelo
- anio
- precio
- nombre
- imagen
- descripcion

### CARACTERISTICA
- id_caracteristica (PK)
- nombre

### VEHICULO_CARACTERISTICA
- id_vehiculo (PK, FK)
- id_caracteristica (PK, FK)

### PROMOCION
- id_promocion (PK)
- nombre
- descripcion
- descuento
- fecha_inicio
- fecha_fin

### CLIENTE
- id_cliente (PK)
- nombre
- correo

### RESENA
- id_resena (PK)
- id_cliente (FK)
- id_vehiculo (FK)
- comentario
- valoracion

## Relaciones

- Una MARCA tiene muchos VEHICULOS.
- Una CATEGORIA tiene muchos VEHICULOS.
- Un VEHICULO puede tener muchas CARACTERISTICAS.
- Una CARACTERISTICA puede pertenecer a muchos VEHICULOS.
- Un CLIENTE puede registrar muchas RESEÑAS.
- Un VEHICULO puede recibir muchas RESEÑAS.

La tabla VEHICULO_CARACTERISTICA resuelve la relación muchos a muchos.

## 3FN

Las entidades tienen una clave primaria que identifica cada registro. Los atributos dependen de su clave primaria y los datos que corresponden a otras entidades se separan mediante claves foráneas, evitando dependencias transitivas innecesarias.

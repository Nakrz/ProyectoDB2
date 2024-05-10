-- tablas

CREATE TABLE ciudad (
    id_ciudad INT(5) PRIMARY KEY,
    nombre_ciudad VARCHAR(50)
);

CREATE TABLE tipo_asignatura (
    id INT(10) PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE grado (
    id INT(10) PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE telefono (
    id_telefono INT(10) PRIMARY KEY,
    numero VARCHAR(15),
    id_profesor INT(10),
    id_alumno INT(10)
);

CREATE TABLE direccion (
    id_direccion INT(10) PRIMARY KEY,
    direccion VARCHAR(50),
    id_ciudad INT(5),
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
);

CREATE TABLE curso_escolar (
    id INT(10) PRIMARY KEY,
    anyo_inicio YEAR(4),
    anyo_fin YEAR(4)
);

CREATE TABLE departamento (
    id INT(10) PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE profesor (
    id INT(10) PRIMARY KEY,
    nif VARCHAR(9),
    nombre VARCHAR(25),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    id_ciudad INT(5),
    id_direccion INT(10),
    telefono_id INT(10),
    fecha_nacimiento DATE,
    sexo ENUM('H', 'M'),
    id_departamento INT(10),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id),
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad),
    FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion),
    FOREIGN KEY (telefono_id) REFERENCES telefono(id_telefono)
);

CREATE TABLE alumno (
    id INT(10) PRIMARY KEY,
    nif VARCHAR(9),
    nombre VARCHAR(25),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    id_ciudad INT(5),
    id_direccion INT(10),
    telefono_id INT(10),
    fecha_nacimiento DATE,
    sexo ENUM('H', 'M'),
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad),
    FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion),
    FOREIGN KEY (telefono_id) REFERENCES telefono(id_telefono)
);


CREATE TABLE asignatura (
    id INT(10) PRIMARY KEY,
    nombre VARCHAR(100),
    creditos FLOAT,
    tipo_asignatura_id INT(10),
    curso TINYINT(3),
    cuatrimestre TINYINT(3),
    id_profesor INT(10),
    id_grado INT(10),
    FOREIGN KEY (id_profesor) REFERENCES profesor(id),
    FOREIGN KEY (id_grado) REFERENCES grado(id),
    FOREIGN KEY (tipo_asignatura_id) REFERENCES tipo_asignatura(id)
);

CREATE TABLE alumno_se_matricula_asignatura (
    id_alumno INT(10),
    id_asignatura INT(10),
    id_curso_escolar INT(10),
    PRIMARY KEY (id_alumno, id_asignatura, id_curso_escolar),
    FOREIGN KEY (id_alumno) REFERENCES alumno(id),
    FOREIGN KEY (id_asignatura) REFERENCES asignatura(id),
    FOREIGN KEY (id_curso_escolar) REFERENCES curso_escolar(id)
);


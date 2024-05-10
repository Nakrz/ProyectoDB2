-- insertar datos

INSERT INTO ciudad (id_ciudad, nombre_ciudad) VALUES
(1, 'Madrid'),
(2, 'Barcelona'),
(3, 'Valencia'),
(4, 'Sevilla'),
(5, 'Lisboa');


INSERT INTO departamento (id, nombre) VALUES
(1, 'Departamento de Matemáticas'),
(2, 'Departamento de Historia'),
(3, 'Departamento de Ciencias Naturales'),
(4, 'Departamento de Lenguas'),
(5, 'Departamento de Arte'),
(6, 'Departamento de Economía'),
(7, 'Departamento de Ciencias de la Computación'),
(8, 'Departamento de Física');



INSERT INTO grado (id, nombre) VALUES
(1, 'Ingeniería Informática (Plan 2015)'),
(2, 'Medicina (Plan 2015)'),
(3, 'Derecho (Plan 2013)'),
(4, 'Arquitectura (Plan 2011)'),
(5, 'Biología (Plan 2016)'),
(6, 'Economía (Plan 2017)'),
(7, 'Psicología (Plan 2015)'),
(8, 'Comunicación (Plan 2014)'),
(9, 'Filosofía (Plan 2019)'),
(10, 'Matemáticas (Plan 2013)');

INSERT INTO tipo_asignatura (id, nombre) VALUES
(12, 'Básica'),
(7, 'Optativa'),
(9, 'Obligatoria');


INSERT INTO direccion (id_direccion, direccion, id_ciudad) VALUES
(1, 'Calle A, 123', 1),
(2, 'Avenida B, 456', 2),
(3, 'Calle C, 789', 3),
(4, 'Avenida D, 101', 4),
(5, 'Calle E, 111', 5),
(6, 'Avenida F, 222', 1),
(7, 'Calle G, 333', 5),
(8, 'Avenida H, 444', 3),
(9, 'Calle I, 555', 2),
(10, 'Avenida J, 666', 1),
(11, 'Calle K, 777', 3),
(12, 'Avenida L, 888', 2),
(13, 'Calle M, 999', 3),
(14, 'Avenida N, 1000', 4),
(15, 'Calle O, 2000', 5);


INSERT INTO curso_escolar (id, anyo_inicio, anyo_fin) VALUES
(1, 2013, 2014),
(2, 2014, 2015),
(3, 2015, 2016),
(4, 2016, 2017),
(5, 2017, 2018),
(6, 2018, 2019),
(7, 2019, 2020);

INSERT INTO telefono (id_telefono, numero, id_profesor, id_alumno) VALUES
(1, '123456789', 1, 1),
(2, '987654321', 2, 2),
(3, '654321987', 3, 3),
(4, '789456123', 4, 4),
(5, '369258147', NULL, NULL),
(6, '147258369', NULL, 6),
(7, '258369147', 7, 7),
(8, '369147258', 8, 8),
(9, '147369258', 9, 9),
(10, '258147369', 10, 10),
(11, '111111111', 1, 11),
(12, '222222222', 2, 12),
(13, '333333333', 3, 13),
(14, '444444444', 4, 14),
(15, '555555555', 5, 15),
(16, '666666666', 6, 16),
(17, '777777777', 7, 17),
(18, '888888888', 8, 18),
(19, '999999999', 9, 19),
(20, '101010101', 10, 20);


INSERT INTO alumno (id, nif, nombre, apellido1, apellido2, id_ciudad, id_direccion, telefono_id, fecha_nacimiento, sexo) VALUES
(1, '12345678A', 'María', 'González', 'López', 1, 1, 1, '1995-05-10', 'M'),
(2, '23456789B', 'Juan', 'Martínez', 'Hernández', 2, 2, 2, '1996-08-15', 'H'),
(3, '34567890C', 'Laura', 'Pérez', 'García', 3, 3, 3, '1994-03-20', 'M'),
(4, '45678901D', 'Pedro', 'Sánchez', 'Martínez', 4, 4, 4, '1993-11-25', 'H'),
(5, '56789012E', 'Ana', 'Fernández', 'Rodríguez', 5, 5, NULL, '1997-06-30', 'M'), 
(6, '67890123F', 'Javier', 'López', 'Gómez', 5, 6, NULL, '1992-09-05', 'H'),
(7, '78901234G', 'Sara', 'García', 'Hernández', 2, 7, 7, '1998-12-10', 'M'),
(8, '89012345H', 'David', 'Martínez', 'Fernández', 1, 8, 8, '1991-04-15', 'H'),
(9, '90123456I', 'Elena', 'Hernández', 'Sánchez', 2, 9, 9, '1990-07-20', 'M'),
(10, '01234567J', 'Carlos', 'Gómez', 'Pérez', 3, 10, 10, '1999-02-25', 'H'),
(11, '11223344K', 'Luisa', 'Pérez', 'González', 4, 11, 11, '1994-10-30', 'M'),
(12, '26902806M', 'Pablo', 'García', 'Martínez', 5, 12, 12, '1993-03-05', 'H'),
(13, '33445566M', 'Carmen', 'Martínez', 'Gómez', 1, 13, 13, '1996-06-10', 'M'),
(14, '44556677N', 'Sergio', 'Fernández', 'Hernández', 2, 14, 14, '1992-09-15', 'H'),
(15, '55667788O', 'Marina', 'Gómez', 'López', 4, 15, 15, '1997-12-20', 'M');




INSERT INTO profesor (id, nif, nombre, apellido1, apellido2, id_ciudad, id_direccion, telefono_id, fecha_nacimiento, sexo, id_departamento) VALUES
(1, '12345678A', 'Juan', 'García', 'Pérez', 1, 1, 1, '1980-05-15', 'H', 1),
(2, '98765432B', 'María', 'Martínez', 'López', 2, 2, 2, '1975-08-20', 'M', 2),
(3, '54321678C', 'Pedro', 'Rodríguez', 'González', 3, 3, 3, '1982-10-10', 'H', 3),
(4, '87654321D', 'Laura', 'Hernández', 'Sánchez', 4, 4, 4, '1978-04-25', 'M', 4),
(5, '13579246E', 'Carlos', 'López', 'Martínez', 5, 5, NULL, '1984-07-30', 'H', NULL),
(6, '24681359F', 'Ana', 'García', 'Fernández', 3, 6, NULL, '1981-02-18', 'M', NULL),
(7, '36925814G', 'Javier', 'Martín', 'Gómez', 4, 7, 7, '1979-11-12', 'H', 7),
(8, '25814736H', 'Elena', 'Pérez', 'Rodríguez', 4, 8, 8, '1983-09-05', 'M', 8),
(9, '14725836I', 'Sergio', 'Sánchez', 'Martínez', 1, 9, 9, '1980-06-28', 'H', 4),
(10, '78945612J', 'Luisa', 'González', 'Hernández', 1, 10, 10, '1976-12-15', 'M', 1),
(11, '65498723K', 'Pablo', 'Fernández', 'García', 1, 11, 11, '1985-03-08', 'H', 8),
(12, '98765432L', 'Carmen', 'Martínez', 'Sánchez', 2, 12, 12, '1977-09-22', 'M', 2),
(13, '12345678M', 'David', 'Gómez', 'Pérez', 3, 13, 13, '1986-08-14', 'H', 3),
(14, '78912345N', 'Sara', 'Hernández', 'García', 4, 14, 14, '1974-10-02', 'M', 4),
(15, '45678912O', 'Alberto', 'López', 'Martínez', 5, 15, 15, '1988-05-07', 'H', 5),
(16, '36925814N', 'Marta', 'Gómez', 'Martínez', 2, 2, 16, '1984-09-10', 'M', 5);


INSERT INTO asignatura (id, nombre, creditos, tipo_asignatura_id, curso, cuatrimestre, id_profesor, id_grado) VALUES
(1, 'Matemáticas I', 6.0, 12, 1, 1, 1, 1),
(2, 'Física I', 6.0, 12, 1, 1, 3, 1),
(3, 'Química I', 6.0, 12, 3, 1, 1, 3),
(4, 'Inglés I', 6.0, 7, 1, 1, 4, 1),
(5, 'Historia del Arte I', 6.0, 9, 3, 1, 5, 1),
(6, 'Programación I', 6.0, 12, 1, 1, 6, 1),
(7, 'Cálculo II', 6.0, 12, 1, 3, 3, 1),
(8, 'Física II', 6.0, 12, 1, 2, 8, 1),
(9, 'Química II', 6.0, 12, 1, 2, 9, 1),
(10, 'Inglés II', 6.0, 7, 1, 2, 10, 1),
(11, 'Historia del Arte II', 6.0, 9, 1, 2, 11, 1),
(12, 'Programación II', 6.0, 12, 1, 2, 12, 1),
(13, 'Matemáticas III', 6.0, 12, 1, 3, 13, 1),
(14, 'Física III', 6.0, 12, 1, 3, 14, 1),
(15, 'Química III', 6.0, 12, 1, 3, NULL, 1),
(16, 'Inglés III', 6.0, 7, 1, 3, 1, 1),
(17, 'Historia del Arte III', 6.0, 9, 1, 3, 2, 1),
(18, 'Programación III', 6.0, 12, 1, 3, 3, 1),
(19, 'Matemáticas IV', 6.0, 12, 1, 4, 4, 1),
(20, 'Física IV', 6.0, 12, 1, 4, 5, 1),
(21, 'Química IV', 6.0, 12, 1, 4, 6, 1),
(22, 'Inglés IV', 6.0, 7, 1, 4, 7, 1),
(23, 'Historia del Arte IV', 6.0, 9, 1, 4, 8, 1),
(24, 'Programación IV', 6.0, 12, 1, 4, 9, 1),
(25, 'Matemáticas V', 6.0, 12, 2, 1, 10, 1),
(26, 'Física V', 6.0, 12, 2, 1, 11, 1),
(27, 'Química V', 6.0, 12, 2, 1, 12, 1),
(28, 'Inglés V', 6.0, 7, 2, 1, 13, 1),
(29, 'Historia del Arte V', 6.0, 9, 2, 1, 14, 1),
(30, 'Programación V', 6.0, 12, 2, 1, 15, 1),
(31, 'Matemáticas VI', 6.0, 12, 2, 2, 1, 1),
(32, 'Física VI', 6.0, 12, 2, 2, 2, 1),
(33, 'Química VI', 6.0, 12, 2, 2, 3, 1),
(34, 'Inglés VI', 6.0, 7, 2, 2, 4, 1),
(35, 'Historia del Arte VI', 6.0, 9, 2, 2, 5, 1),
(36, 'Programación VI', 6.0, 12, 2, 2, 6, 1),
(37, 'Matemáticas VII', 6.0, 12, 2, 3, 7, 1),
(38, 'Física VII', 6.0, 12, 2, 3, 8, 1),
(39, 'Química VII', 6.0, 12, 2, 3, 9, 1),
(40, 'Inglés VII', 6.0, 7, 2, 3, 10, 1),
(41, 'Historia del Arte VII', 6.0, 9, 2, 3, 11, 1),
(42, 'Programación VII', 6.0, 12, 2, 3, 12, 1);



INSERT INTO alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(2, 4, 6),
(2, 5, 7),
(2, 6, 6),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(4, 10, 1),
(4, 11, 1),
(4, 12, 1),
(5, 13, 1),
(5, 15, 1),
(5, 15, 6),
(6, 16, 1),
(6, 17, 1),
(6, 18, 1),
(7, 19, 1),
(7, 20, 1),
(7, 21, 1),
(8, 22, 1),
(8, 23, 1),
(8, 24, 1),
(9, 25, 1),
(9, 26, 1),
(9, 27, 1),
(10, 28, 1),
(10, 29, 1),
(10, 30, 1),
(11, 31, 1),
(11, 32, 1),
(11, 33, 1),
(12, 34, 1),
(12, 35, 1),
(12, 36, 1),
(13, 37, 1),
(13, 38, 1),
(13, 39, 1),
(14, 40, 1),
(14, 41, 1),
(14, 42, 1);
USE SISTEMA_TEL
GO

-- INSERT TABLA DEPARTAMENTO --
INSERT INTO Departamento (nom_depto) VALUES 
   ('Ahuachapán'  ),
   ('Cabañas'     ),
   ('Chalatenango'),
   ('Cuscatlán'   ),
   ('La Libertad' ),
   ('La Paz'      ),
   ('La Unión'    ),
   ('Morazán'     ),
   ('San Miguel'  ),
   ('San Salvador'),
   ('Santa Ana'   ),
   ('San Vicente' ),
   ('Sonsonate'   ),
   ('Usulután'    )
GO -- 14 INSERTS
-- SELECT*FROM DEPARTAMENTO ORDER BY ID_DEPTO

-- INSERT TABLA AGENCIAS --
INSERT INTO Agencias (id_depto, nom_agencia, direccion) VALUES 
   (1,  'Agencia Ahuachapán',        'Avenida El Progreso #25, Ahuachapán'              ),
   (2,  'Agencia Cuscatlán',         'Calle El Calvario #15, Cojutepeque'               ),
   (3,  'Agencia La Unión',          'Boulevard Centroamérica #110, La Unión'           ),
   (4,  'Agencia Morazán',           'Avenida Los Próceres #29, San Francisco Gotera'   ),
   (5,  'Agencia San Salvador',      'Avenida Olímpica #201, San Salvador'              ),
   (6,  'Agencia Santa Ana',         'Calle El Carmen #25, Santa Ana'                   ),
   (7,  'Agencia Usulután',          'Calle La Reforma #5, Usulután'                    ),
   (8,  'Agencia Cabañas',           'Calle Principal #10, Sensuntepeque'               ),
   (9,  'Agencia Chalatenango',      'Avenida Roosevelt #45, Chalatenango'              ),
   (10, 'Agencia La Libertad',       'Boulevard Monseñor Romero #301, Santa Tecla'      ),
   (11, 'Agencia La Paz',            'Calle El Calvario #10, Zacatecoluca'              ),
   (12, 'Agencia San Miguel',        'Avenida Roosevelt #100, San Miguel'               ),
   (13, 'Agencia San Vicente',       'Calle La Reforma #30, San Vicente'                ),
   (14, 'Agencia Sonsonate',         'Calle Los Mangos #15, Sonsonate'                  ),
   (1,  'Agencia Atiquizaya',        'Avenida Los Mártires #5, Atiquizaya'              ),
   (2,  'Agencia Ilobasco',          'Calle El Centro #20, Ilobasco'                    ),
   (3,  'Agencia Suchitoto',         'Boulevard Los Poetas #15, Suchitoto'              ),
   (4,  'Agencia San Rafael Cedros', 'Avenida Francisco Morazán #25, San Rafael Cedros' ),
   (5,  'Agencia Zaragoza',          'Calle San Juan #30, Zaragoza'                     ),
   (6,  'Agencia Santiago Nonualco', 'Avenida Francisco Menéndez #10, Santiago Nonualco'),
   (7,  'Agencia Conchagua',         'Calle Principal #35, Conchagua'                   )
GO -- 21 INSERTS
-- SELECT*FROM AGENCIAS ORDER BY ID_AGENCIA

-- INSERT TABLA EMPLEADOS --
INSERT INTO Empleados(nom_empleado, ape_Empleado, telefono, correo_electronico, fecha_nac, estado, usuario, clave) VALUES 
   ('Juan Enrique',       'Pérez Pérez',         '6754-3456', 'juan.perez@empresa.com',         '1990-05-15', 'Activo',   'admin',     'admin'   ),
   ('María Fernanda',     'García Contreras',    '3421-3421', 'maria.garcia@empresa.com',       '1985-10-10', 'Activo',   'subadmin',  'subadmin'),

   ('Luis Ángel',         'González Pacheco',    '5674-4564', 'luis.gonzalez@empresa.com',      '1995-03-22', 'Activo',   'lectura',   'lectura' ),
   ('Ana María',          'Martínez González',   '6908-6890', 'ana.martinez@empresa.com',       '1992-08-01', 'Activo',   'lectura',   'lectura' ),
   ('Pedro Danés',        'Sánchez Hernández',   '5435-6784', 'pedro.sanchez@empresa.com',      '1998-12-17', 'Activo',   'lectura',   'lectura' ),
   ('Carla Sofía',        'López López',         '5678-4356', 'carla.lopez@empresa.com',        '1987-02-28', 'Activo',   'lectura',   'lectura' ),
   ('José Enrique',       'Ramírez Pacheco',     '9067-0964', 'jose.ramirez@empresa.com',       '1991-11-03', 'Activo',   'lectura',   'lectura' ),
   ('Mónica Daniela',     'Hernández Artiga',    '6466-5678', 'monica.hernandez@empresa.com',   '1994-07-11', 'Activo',   'lectura',   'lectura' ),
   ('Ricardo Fernando',   'Torres Contreras',    '6640-4677', 'ricardo.torres@empresa.com',     '1993-06-19', 'Activo',   'lectura',   'lectura' ),
   ('Elena María',        'Vega Mayén',          '6488-0988', 'elena.vega@empresa.com',         '1990-09-25', 'Activo',   'lectura',   'lectura' ),
   ('David Steven',       'Fernández Martínez',  '6654-7785', 'david.fernandez@empresa.com',    '1989-04-12', 'Activo',   'lectura',   'lectura' ),
   ('Patricia Ándrea',    'Díaz Díaz',           '5889-9006', 'patricia.diaz@empresa.com',      '1997-01-07', 'Activo',   'lectura',   'lectura' ),
   ('Jorge Andrés',       'Ruiz Chávez',         '6446-7659', 'jorge.ruiz@empresa.com',         '1986-12-09', 'Activo',   'lectura',   'lectura' ),
   ('Silvia Jaqueline',   'Castro Castaneda',    '5990-0957', 'silvia.castro@empresa.com',      '1996-02-13', 'Activo',   'lectura',   'lectura' ),
   ('Sergio Kaleb',       'Sosa Sosa',           '5435-8890', 'sergio.sosa@empresa.com',        '1992-07-29', 'Activo',   'lectura',   'lectura' ),
   ('Laura Paola',        'Prado Pacheco',       '6889-9864', 'laura.pacheco@empresa.com',      '1988-11-24', 'Activo',   'lectura',   'lectura' ),
   ('Manuel Haziel',      'López Duarte',        '5466-8764', 'manuel.lopez@empresa.com',       '1995-04-30', 'Activo',   'lectura',   'lectura' ),
   ('Daniela Gissel',     'Andrade Gómez',       '0987-8208', 'daniela.gomez@empresa.com',      '1993-09-02', 'Activo',   'lectura',   'lectura' ),
   ('Julia Patricia',     'Córtez Torres',       '5633-2092', 'julia.torres@empresa.com',       '1996-12-18', 'Activo',   'lectura',   'lectura' ),
   ('Miguel Ángel',       'Menjivar García',     '4567-8532', 'miguel.garcia@empresa.com',      '1994-05-22', 'Activo',   'lectura',   'lectura' ),
   ('Lucía Hazel',        'Palacios Hernández',  '5589-9859', 'lucia.hernandez@empresa.com',    '1997-08-10', 'Activo',   'lectura',   'lectura' ),
   ('Pedro Jose',         'Martinez Hernandez',  '5990-3779', 'pedro.martinez@empresa.com',     '1991-06-22', 'Inactivo', 'lectura',   'lectura' ),
   ('Laura Isabel',       'Ramirez Lopez',       '6690-6643', 'laura.ramirez@empresa.com',      '1988-03-11', 'Licencia', 'lectura',   'lectura' ),
   ('Ana Lucia',          'Garcia Perez',        '2143-5900', 'ana.garcia@empresa.com',         '1995-09-27', 'Activo',   'lectura',   'lectura' ),
   ('Carlos Alberto',     'Gomez Hernandez',     '2334-5666', 'carlos.gomez@empresa.com',       '1987-07-30', 'Activo',   'lectura',   'lectura' )
GO -- 25 INSERTS

INSERT INTO EMPLEADOS (NOM_EMPLEADO, APE_EMPLEADO, TELEFONO, CORREO_ELECTRONICO, FECHA_NAC, USUARIO, CLAVE) VALUES 
   ('Juan Orlando',       'Pérez Mendoza',       '5552-1234', 'juan.perez@example.com',         '1985-05-01',             'lectura',   'lectura' ),
   ('Ana Valería',        'García Siguenza',     '5554-5678', 'ana.garcia@example.com',         '1990-02-14',             'lectura',   'lectura' ),
   ('Pedro Rodrigo',      'Sánchez Guzman',      '5523-4321', 'pedro.sanchez@example.com',      '1995-09-30',             'lectura',   'lectura' ),
   ('Rosa María',         'Martínez Belloso',    '5341-8765', 'maria.martinez@example.com',     '1987-11-21',             'lectura',   'lectura' ),
   ('Jorge Alberto',      'Acotto Hernández',    '2555-2468', 'jorge.hernandez@example.com',    '1992-06-03',             'lectura',   'lectura' ),
   ('Sofía Liliana',      'Rivera López',        '4532-3690', 'sofia.lopez@example.com',        '1999-03-15',             'lectura',   'lectura' ),
   ('Daniel Alejandro',   'Artiga Gómez',        '7638-1357', 'alejandro.gomez@example.com',    '1991-08-11',             'lectura',   'lectura' ),
   ('Carla Valeria',      'Díaz Díaz',           '3485-2468', 'carla.diaz@example.com',         '1997-02-08',             'lectura',   'lectura' ),
   ('Laura Saraí',        'Castaneda García',    '5625-1234', 'laura.garcia@example.com',       '1995-03-12',             'lectura',   'lectura' ),
   ('Pablo Rodrigo',      'Pacheco Díaz',        '3456-5678', 'pablo.diaz@example.com',         '1982-09-22',             'lectura',   'lectura' ),
   ('María Lucía',        'Pérez Martínez',      '9705-7890', 'lucia.martinez@example.com',     '1990-05-30',             'lectura',   'lectura' ),
   ('Javier Jimenez',     'Mendoza Sánchez',     '2155-4567', 'javier.sanchez@example.com',     '1988-02-17',             'lectura',   'lectura' ),
   ('Cristina Carisma',   'Garcia Fernández',    '6524-2345', 'cristina.fernandez@example.com', '1985-11-07',             'lectura',   'lectura' ),
   ('Pedro Enrique',      'Ortega Gómez',        '3255-8901', 'pedro.gomez@example.com',        '1992-08-15',             'lectura',   'lectura' ),
   ('Sofía Gabriela',     'Madero Alvarez',      '4464-3456', 'sofia.alvarez@example.com',      '1986-06-29',             'lectura',   'lectura' ),
   ('Marta Ariana',       'Bello Romero',        '2744-6789', 'marta.romero@example.com',       '1998-01-01',             'lectura',   'lectura' ),
   ('Juan Alberto',       'Maferer Ramírez',     '4495-9012', 'juan.ramirez@example.com',       '1984-04-23',             'lectura',   'lectura' ),
   ('Fernanda Silvia',    'Arteaga Ortega',      '3465-7891', 'silvia.ortega@example.com',      '1991-07-10',             'lectura',   'lectura' ),
   ('Carlos Raúl',        'Cedillos Ruiz',       '2995-2346', 'carlos.ruiz@example.com',        '1987-12-03',             'lectura',   'lectura' ),
   ('Ana Alejandra',      'Villalta Hernández',  '6855-5679', 'ana.hernandez@example.com',      '1989-03-18',             'lectura',   'lectura' ),
   ('Diego Marcelo',      'Derás Castro',        '9645-9013', 'diego.castro@example.com',       '1994-10-12',             'lectura',   'lectura' ),
   ('María Marcela',      'Sevilla Santos',      '2375-4568', 'maria.santos@example.com',       '1996-12-31',             'lectura',   'lectura' ),
   ('Jorge Daniel',       'Flores Servantes',    '9458-2347', 'jorge.flores@example.com',       '1993-02-14',             'lectura',   'lectura' ),
   ('Marta Fernanda',     'Escalante García',    '7639-6743', 'marta.garcia@example.com',       '1993-05-12',             'lectura',   'lectura' ),
   ('Juan Gustavo',       'Pérez Fernandez',     '6488-7560', 'juan.perez@example.com',         '1987-12-01',             'lectura',   'lectura' ),
   ('Osiris Salomon',      'Chávez Menjívar',     '7986-8803', 'ozzy.dev@gmail.com',            '1988-12-01',             'lectura',   'lectura' ),
   ('Maxi Accotto',        'Domain Accotto',      '5868-6699', 'maxi.accotto@gmail.com',        '1977-08-08',             'lectura',   'lectura' )
GO -- 25 INSERTS
-- SELECT*FROM EMPLEADOS

-- INSERT TABLA ROLES --
INSERT INTO Roles(roles) VALUES 
   ('Gerente general'),
   ('Director de operaciones'),
   ('Ejecutivo de ventas')
GO  -- 3 INSERTS
-- SELECT*FROM ROLES

-- INSERT TABLA ROLES_EMPLEADOS --
INSERT INTO Roles_Empleados(ID_EMPLEADO, ID_ROL) VALUES 
   (1, 1),
   (2, 2),
   (3, 3),
   (4, 3),
   (5, 3),
   (6, 3),
   (7, 3),
   (8, 3),
   (9, 3),
   (10, 3),
   (11, 3),
   (12, 3),
   (13, 3),
   (14, 3),
   (15, 3),
   (16, 3),
   (17, 3),
   (18, 3),
   (19, 3),
   (20, 3),
   (21, 3),
   (22, 3),
   (23, 3),
   (24, 3),
   (25, 3),
   (26, 3),
   (27, 3),
   (28, 3),
   (29, 3),
   (30, 3),
   (31, 3),
   (32, 3),
   (33, 3),
   (34, 3),
   (35, 3),
   (36, 3),
   (37, 3),
   (38, 3),
   (39, 3),
   (40, 3),
   (41, 3),
   (42, 3),
   (43, 3),
   (44, 3),
   (45, 3),
   (46, 3),
   (47, 3),
   (48, 3),
   (49, 3),
   (50, 3),
   (51, 3),
   (52, 3)
GO -- 50 INSERTS
-- SELECT*FROM ROLES_EMPLEADOS 

-- INSERT TABLA FORMS --
INSERT INTO FORMS(NOMBRE, DESCRIPCION) VALUES
   ('SisCompa', 'Sistema Compañia Teléfonica'),
   ('SisCompa', 'Empleados y Clientes'),
   ('SisCompa', 'Clientes y Ventas')
GO -- 3 INSERTS
-- SELECT*FROM FORMS

-- INSERT TABLA FORMS_ROLES --
INSERT INTO FORMS_ROLES(ID_FORM, ID_ROL, ID_EMPLEADO) VALUES
   (1, 1, 1),
   (2, 2, 2),
   (3, 3, 3),
   (3, 3, 4),
   (3, 3, 5),
   (3, 3, 6),
   (3, 3, 7),
   (3, 3, 8),
   (3, 3, 9),
   (3, 3, 10),
   (3, 3, 11),
   (3, 3, 12),
   (3, 3, 13),
   (3, 3, 14),
   (3, 3, 15),
   (3, 3, 16),
   (3, 3, 17),
   (3, 3, 18),
   (3, 3, 19),
   (3, 3, 20),
   (3, 3, 21),
   (3, 3, 22),
   (3, 3, 23),
   (3, 3, 24),
   (3, 3, 25),
   (3, 3, 26),
   (3, 3, 27),
   (3, 3, 28),
   (3, 3, 29),
   (3, 3, 30),
   (3, 3, 31),
   (3, 3, 32),
   (3, 3, 33),
   (3, 3, 34),
   (3, 3, 35),
   (3, 3, 36),
   (3, 3, 37),
   (3, 3, 38),
   (3, 3, 39),
   (3, 3, 40),
   (3, 3, 41),
   (3, 3, 42),
   (3, 3, 43),
   (3, 3, 44),
   (3, 3, 45),
   (3, 3, 46),
   (3, 3, 47),
   (3, 3, 48),
   (3, 3, 49),
   (3, 3, 50),
   (3, 3, 51),
   (3, 3, 52)
GO -- 52 INSERTS - PARA 52 EMPLEADOS
-- SELECT*FROM FORMS_ROLES

-- INSERT TABLA CLIENTES --
INSERT INTO CLIENTES (NOMBRE, APELLIDO, DUI, CUENTA_FACTURACION, SALDO, CORREO_ELECTRONICO, TELEFONO_MOVIL)
VALUES
   ('Sara',       'González',    '00876543-2', '1234567890', 100.00,     'saragonzalez@hotmail.com',       '7777-2345'),
   ('Juan',       'Ortega',      '00432109-8', '2345678901', 75.00,      'juanortega@yahoo.com',           '7777-6789'),
   ('Mónica',     'Gómez',       '00123456-7', '3456789012', 500.00,     'monicagomez@gmail.com',          '7777-0123'),
   ('David',      'Pérez',       '00987654-3', '4567890123', 300.00,     'davidperez@hotmail.com',         '7777-4567'),
   ('Carmen',     'Gutiérrez',   '00210987-4', '5678901234', 200.00,     'carmengutierrez@yahoo.com',      '7777-8901'),
   ('Arturo',     'Castro',      '00678901-2', '6789012345', 1000.00,    'arturocastro@gmail.com',         '7777-2345'),
   ('Alejandra',  'Hernández',   '00543210-9', '7890123456', 150.00,     'alejandrahernandez@gmail.com',   '7777-6789'),
   ('Gabriel',    'Reyes',       '00765432-1', '8901234567', 900.00,     'gabrielreyes@hotmail.com',       '7777-0123'),
   ('Natalia',    'Vásquez',     '00321098-5', '9012345678', 250.00,     'nataliavasquez@yahoo.com',       '7777-4567'),
   ('Miguel',     'Fuentes',     '00432109-8', '0123456789', 175.00,     'miguelfuentes@gmail.com',        '7777-8901'),
   ('Laura',      'Chávez',      '00876543-2', '1234567890', 400.00,     'laurachavez@hotmail.com',        '7777-2345'),
   ('Pedro',      'Cabrera',     '00210987-4', '2345678901', 50.00,      'pedrocabrera@yahoo.com',         '7777-6789'),
   ('Elena',      'Rivas',       '00543210-9', '3456789012', 100.00,     'elenarivas@gmail.com',           '7777-0123'),
   ('Javier',     'Sandoval',    '00765432-1', '4567890123', 800.00,     'javiersandoval@hotmail.com',     '7777-4567'),
   ('Gloria',     'Navarro',     '00321098-5', '5678901234', 25.00,      'glorianavarro@yahoo.com',        '7777-8901'),
   ('Ana',        'López',       '00678901-2', '3333333333', 50.00,      'anilopez@gmail.com',             '7777-2345'),
   ('Mario',      'Ramírez',     '00432109-8', '4444444444', 200.00,     'marioramirez@hotmail.com',       '7777-6789'),
   ('Sofía',      'Méndez',      '00765432-1', '5555555555', 900.00,     'arturocastro@gmail.com',         '7777-0123'),
   ('José',       'Ruiz',        '00210987-4', '6666666666', 150.00,     'joseruiz@yahoo.com',             '7777-4567'),
   ('Karla',      'García',      '00567890-3', '7777777777', 350.00,     'karlagarcia@gmail.com',          '7777-8901'),
   ('Carlos',     'Sánchez',     '00876543-2', '8888888888', 1000.00,    'carlossanchez@hotmail.com',      '7777-2345'),
   ('Fernanda',   'Herrera',     '00321098-5', '9999999999', 600.00,     'fernandaherrera@gmail.com',      '7777-6789'),
   ('Ricardo',    'Castellanos', '00987654-3', '0000000000', 75.00,      'ricardocastellanos@hotmail.com', '7777-0123'),
   ('Paola',      'Sosa',        '00123456-7', '1111111111', 850.00,     'paolasosa@yahoo.com',            '7777-4567'),
   ('Luisa',      'Torres',      '00543210-9', '2222222222', 450.00,     'luisatorres@gmail.com',          '7777-8901'),
   ('Maria',      'Mendez',      '02345678-9', '000000001',  2000.00,    'maria.mendez@example.com',       '7890-1234'),
   ('Carlos',     'Garcia',      '11223344-5', '000000002',  3000.00,    'carlos.garcia@example.com',      '7890-5678'),
   ('Luis',       'Rivas',       '45678901-2', '000000003',  1500.00,    'luis.rivas@example.com',         '7890-9012'),
   ('Ana',        'Castillo',    '34567890-1', '000000004',  2500.00,    'ana.castillo@example.com',       '6789-1234'),
   ('Julio',      'Perez',       '98765432-1', '000000005',  5000.00,    'julio.perez@example.com',        '6789-5678'),
   ('Laura',      'Lopez',       '11223344-5', '000000006',  8000.00,    'laura.lopez@example.com',        '6789-9012'),
   ('Pedro',      'Velasquez',   '22334455-6', '000000007',  7000.00,    'pedro.velasquez@example.com',    '5678-1234'),
   ('Sofia',      'Gonzalez',    '88990011-2', '000000008',  12000.00,   'sofia.gonzalez@example.com',     '5678-5678'),
   ('Miguel',     'Castro',      '55667788-9', '000000009',  6000.00,    'miguel.castro@example.com',      '5678-9012'),
   ('Alicia',     'Marquez',     '33445566-7', '000000010',  9000.00,    'alicia.marquez@example.com',     '4567-1234'),
   ('Jorge',      'Fuentes',     '77889900-1', '000000011',  4000.00,    'jorge.fuentes@example.com',      '4567-5678'),
   ('Rosa',       'Hernandez',   '11223344-5', '000000012',  7000.00,    'rosa.hernandez@example.com',     '4567-9012'),
   ('Gabriel',    'Gomez',       '00998877-6', '000000013',  15000.00,   'gabriel.gomez@example.com',      '3456-1234'),
   ('Lorena',     'Luna',        '11223344-5', '000000014',  18000.00,   'lorena.luna@example.com',        '3456-5678'),
   ('Juliana',    'Pérez',       '01234567-8', 'CTA-123456', 500.00,     'juliana.perez@gmail.com',        '7890-1234'),
   ('Roberto',    'González',    '11223344-5', 'CTA-234567', 1000.00,    'roberto.gonzalez@hotmail.com',   '7890-2345'),
   ('Ana',        'Martínez',    '22334455-6', 'CTA-345678', 750.00,     'ana.martinez@yahoo.com',         '7890-3456'),
   ('Santiago',   'Gómez',       '33445566-7', 'CTA-456789', 2000.00,    'santiago.gomez@gmail.com',       '7890-4567'),
   ('María',      'García',      '44556677-8', 'CTA-567890', 1500.00,    'maria.garcia@hotmail.com',       '7890-5678'),
   ('Luis',       'Hernández',   '55667788-9', 'CTA-678901', 2500.00,    'luis.hernandez@yahoo.com',       '7890-6789'),
   ('Marta',      'Díaz',        '66778899-0', 'CTA-789012', 1750.00,    'marta.diaz@gmail.com',           '7890-7890'),
   ('Pedro',      'López',       '77889900-1', 'CTA-890123', 3000.00,    'pedro.lopez@hotmail.com',        '7890-8901'),
   ('Gabriela',   'Fuentes',     '88990011-2', 'CTA-901234', 2250.00,    'gabriela.fuentes@yahoo.com',     '7890-9012'),
   ('Diego',      'Sánchez',     '99001122-3', 'CTA-012345', 1750.00,    'diego.sanchez@gmail.com',        '7890-0123'),
   ('Julio',      'Castro',      '00112233-4', 'CTA-123456', 800.00,     'julio.castro@hotmail.com',       '7890-1234')
GO -- 50 INSERTS   
-- SELECT*FROM CLIENTES 

-- INSERTS TABLA SERVICIOS_ADQUIRIDOS --
INSERT INTO Servicios_Adquiridos (TIPO_SERVICIO) VALUES
   ('Hogar'       ),
   ('Hogar'       ),
   ('Hogar'       ),
   ('Hogar'       ),

   ('Movil'       ),
   ('Movil'       ),
   ('Hogar/Movil' ),
   ('Hogar/Movil' ),

   ('Hogar'       ),
   ('Hogar'       ),

   ('Movil'       ),
   ('Movil'       ),
   --
   ('Movil'       ),
   ('Movil'       ),
   ('Hogar'       ),
   ('Hogar'       ),
   ('Movil'       ),
   ('Movil'       ),
   ('Hogar'       ),
   ('Hogar'       ),
   ('Movil'       ),
   ('Movil/Hogar' ),

   ('Hogar'       ),
   ('Hogar'       ),
   ('Movil'       ),
   ('Hogar'       ),
   ('Movil/Hogar' ),
   ('Movil'       ),

   ('Movil'       ),
   ('Hogar'       ),
   ('Hogar'       ),

   ('Movil'       ),
   ('Movil'       ),
   ('Hogar'       ),
   ('Movil'       ),

   ('Hogar'       ),
   ('Movil'       ),
   ('Movil/Hogar' ),

   ('Hogar'       ),
   ('Movil'       ),
   ('Hogar'       ),
   ('Movil'       ),
   ('Hogar/Movil' ),
   ('Hogar'       ),
   ('Movil'       ),
   ('Hogar/Movil' ),
   ('Hogar'       ),
   ('Movil'       ),
   ('Hogar/Movil' ),
   ('Hogar'       ),
   ('Movil'       ),
   ('Hogar/Movil' ),
   ('Hogar'       ),
   ('Movil'       ),
   ('Hogar/Movil' ),
   ('Hogar'       ),
   ('Movil'       ),
   ('Hogar'       ),
   ('Movil'       ),
   ('Hogar/Movil' ),
   ('Hogar'       ),
   ('Movil'       ),
   ('Hogar/Movil' ),
   ('Hogar'       ),
   ('Movil'       ),
   ('Hogar/Movil' ),
   ('Hogar'       )
GO -- 3 INSERTS PARA 50 CLIENTES
-- SELECT*FROM SERVICIOS_ADQUIRIDOS

-- TABLA CATALOGO
-- INSERTS TABLA PLANES_SERVICIOS --
INSERT INTO PLANES_SERVICIOS (PLANES) VALUES 
   ('Internet Residencial'),
   ('Televisión por cable'),
   ('Servicio telefónico residencial'),
   ('Paquete combinado de internet, televisión y teléfono'),

   ('Plan de datos móviles con llamadas ilimitadas'),
   ('Plan de datos móviles con llamadas limitadas'),
   ('Paquete combinado de internet residencial y plan de datos móviles con llamadas ilimitadas'),
   ('Paquete combinado de internet residencial y plan de datos móviles con llamadas limitadas'),

   ('Paquete de Internet residencial básico'),
   ('Paquete de Internet residencial premium'),

   ('Plan de datos móviles para estudiantes'),
   ('Plan de datos móviles para negocios'),
   --
   ('Plan de datos móviles con SMS ilimitados'),
   ('Plan de datos móviles con SMS limitados'),
   ('Paquete de Internet residencial básico'),
   ('Paquete de Internet residencial premium'),
   ('Plan de datos móviles para estudiantes'),
   ('Plan de datos móviles para negocios'),

   ('Servicio de internet residencial'),
   ('Servicio de televisión por cable'),
   ('Plan de datos móviles con llamadas ilimitadas'),
   ('Paquete combinado de internet residencial y plan de datos móviles con llamadas ilimitadas'),
   ('Servicio telefónico residencial'),
   ('Paquete combinado de internet, televisión y teléfono'),
   ('Plan de datos móviles con llamadas limitadas'),
   ('Servicio de internet residencial'),
   ('Paquete combinado de internet residencial y plan de datos móviles con llamadas ilimitadas'),
   ('Plan de datos móviles con llamadas ilimitadas'),
   ('Plan de datos móviles con llamadas limitadas'),
   ('Servicio de televisión por cable'),
   ('Servicio telefónico residencial'),
   ('Plan de datos móviles con llamadas ilimitadas'),
   ('Plan de datos móviles con llamadas ilimitadas'),
   ('Servicio de internet residencial'),
   ('Plan de datos móviles con llamadas limitadas'),
   ('Servicio de televisión por cable'),
   ('Plan de datos móviles con llamadas ilimitadas'),
   ('Paquete combinado de internet residencial y plan de datos móviles con llamadas ilimitadas'),

   ('Internet y televisión'),
   ('Plan de datos ilimitado'),
   ('Paquete básico de internet y televisión'),
   ('Plan de datos de 5GB'),
   ('Paquete completo de internet y telefonía móvil'),
   ('Internet de alta velocidad y televisión premium'),
   ('Plan de llamadas y mensajes ilimitados'),
   ('Paquete completo de internet, telefonía móvil y televisión'),
   ('Internet de fibra óptica y televisión por cable'),
   ('Plan de datos de 10GB con roaming internacional'),
   ('Paquete premium de internet, telefonía móvil y televisión'),
   ('Internet de alta velocidad y paquete premium de televisión'),

   ('Plan de datos de 3GB con llamadas internacionales'),
   ('Paquete completo de internet, telefonía móvil y televisión premium'),
   ('Internet y televisión por cable con canales HD'),
   ('Plan de llamadas y mensajes internacionales ilimitados'),
   ('Paquete premium de internet, telefonía móvil y televisión por cable'),
   ('Internet de alta velocidad con paquete premium de películas'),
   ('Plan de datos de 7GB con llamadas y mensajes ilimitados'),
   ('Paquete de internet y televisión con canales deportivos'),
   ('Plan de datos de 2GB con llamadas y mensajes limitados'),
   ('Paquete completo de internet, telefonía móvil y televisión con canales premium'),
   ('Internet de alta velocidad y televisión con canales de noticias'),
   ('Plan de llamadas y mensajes nacionales ilimitados'),
   ('Paquete premium de internet, telefonía móvil y televisión con canales deportivos'),
   ('Internet y televisión por cable con paquete de canales infantiles'),
   ('Plan de datos de 15GB con llamadas y mensajes internacionales'),
   ('Paquete completo de internet, telefonía móvil y televisión con canales infantiles y educativos'),
   ('Internet de fibra óptica y televisión con canales HD y de cine')
GO -- 67 INSERTS PARA 50 CLIENTES
-- SELECT*FROM PLANES_SERVICIOS

-- INSERTS TABLA CONTRATOS --
INSERT INTO CONTRATOS(ID_EMPLEADO, ID_CLIENTE, FECHA_CREACION, VIGENCIA) VALUES
   (3,  1,  '30/04/2023', '30/04/2024'),
   (3,  1,  '30/04/2023', '30/04/2024'),
   (3,  1,  '30/04/2023', '30/04/2024'),
   (3,  1,  '30/04/2023', '30/04/2024'),

   (4,  2,  '01/05/2023', '01/05/2024'),
   (4,  2,  '01/05/2023', '01/05/2024'),
   (4,  2,  '01/05/2023', '01/05/2024'),
   (4,  2,  '01/05/2023', '01/05/2024'),

   (5,  3,  '01/06/2023', '01/06/2024'),
   (5,  3,  '01/06/2023', '01/06/2024'),

   (6,  4,  '01/07/2023', '01/07/2024'),
   (6,  4,  '01/07/2023', '01/07/2024'),

   (7,  5,  '05/08/2023', '05/08/2024'),
   (8,  6,  '09/09/2023', '09/09/2024'),
   (9,  7,  '12/10/2023', '12/10/2024'),
   (10, 8,  '25/11/2023', '25/11/2024'),
   (11, 9,  '30/12/2023', '30/12/2024'),
   (12, 10, '12/01/2023', '12/01/2024'),

   (13, 11, '05/02/2023', '05/02/2024'),
   (14, 12, '07/03/2023', '07/03/2024'),
   (15, 13, '08/04/2023', '08/04/2024'),
   (16, 14, '09/05/2023', '09/05/2024'),
   (17, 15, '10/07/2023', '10/07/2024'),
   (18, 16, '11/08/2023', '11/08/2024'),
   (19, 17, '12/09/2023', '12/09/2024'),
   (20, 18, '13/10/2023', '13/10/2024'),
   (21, 19, '14/11/2023', '14/11/2024'),
   (22, 20, '15/12/2023', '15/12/2024'),
   (23, 21, '16/01/2023', '16/01/2024'),
   (24, 22, '17/02/2023', '17/02/2024'),
   (25, 23, '18/03/2023', '18/03/2024'),
   (26, 24, '25/04/2023', '25/04/2024'),
   (27, 25, '30/05/2023', '30/05/2024'),
   (28, 26, '02/06/2023', '02/06/2024'),
   (29, 27, '12/07/2023', '12/07/2024'),
   (30, 28, '19/08/2023', '19/08/2024'),
   (31, 29, '20/09/2023', '20/09/2024'),
   (32, 30, '21/10/2023', '21/10/2024'),
   (33, 31, '22/11/2023', '22/11/2024'),
   (34, 32, '23/12/2023', '23/12/2024'),
   (35, 33, '24/01/2023', '24/01/2024'),
   (36, 34, '25/02/2023', '25/02/2024'),
   (37, 35, '26/03/2023', '26/03/2024'),
   (38, 36, '27/04/2023', '27/04/2024'),
   (39, 37, '28/05/2023', '28/05/2024'),
   (40, 38, '29/06/2023', '29/06/2024'),
   (41, 39, '30/07/2023', '30/07/2024'),
   (42, 40, '31/08/2023', '31/08/2024'),
   (43, 41, '01/09/2023', '01/09/2024'),
   (44, 42, '02/10/2023', '02/10/2024'),
   (45, 43, '03/11/2023', '03/11/2024'),
   (46, 44, '04/12/2023', '04/12/2024'),
   (47, 45, '05/01/2023', '05/01/2024'),
   (48, 46, '06/02/2023', '06/02/2024'),
   (49, 47, '07/03/2023', '07/03/2024'),
   (50, 48, '08/04/2023', '08/04/2024'),
   (51, 49, '09/05/2023', '09/05/2024'),
   (52, 50, '10/06/2023', '10/06/2024')
GO -- 68 INSERTS - 50 EMPLEADOS Y 50 CLIENTES
-- SELECT*FROM CONTRATOS

-- INSERTS TABLA PLANES_SERVICIOS_ADQUIRIDOS --
-- LAS FECHAS DESCRIBEN LA SUSCRIPCION DE UN PLAN EN UN SERVICIO CONTRATADO
-- Y SI UN CLIENTE QUE REALIZA UN CONTRATO CON UN PLAN DE SERVICIOS MOVILES O HOGAR
-- DESEE EN UN DETERMINADO TIEMPO AGRANDAR SU PLAN CON UN NUEVO PLAN EN SU SERVICIO
-- YA SEAN LLAMADAS, INTERNET O AÑADIR MÁS CANALES DE TELEVISIÓN A UN SERVICIO HOGAR POR EJEMPLO
-- PUES POR MEDIO DE LA FECHA_CREACIO Y VIGENCIA SE ESPECIFICA CUANDO REALIZO SU NUEVA
-- SUSCRIPCION Y AUTOMATICMANETE LA FECHA EN QUE VENCE QUE PODRÍA SER INDEFINIDO EN DADO CASO


INSERT INTO PLANES_SERVICIOS_ADQUIRIDOS(ID_CONTRATO, ID_SERVICIO, ID_PLAN, FECHA_CREACION, VIGENCIA) VALUES
   (1,  1,  1,  '30/04/2023', '30/04/2024'),
   (2,  2,  2,  '30/04/2023', '30/04/2024'),
   (3,  3,  3,  '30/04/2023', '30/04/2024'),
   (4,  4,  4,  '30/04/2023', '30/04/2024'),

   (5,  5,  5,  '01/05/2023', '01/05/2024'),
   (6,  6,  6,  '01/05/2023', '01/05/2024'),
   (7,  7,  7,  '01/05/2023', '01/05/2024'),
   (8,  8,  8,  '01/05/2023', '01/05/2024'),

   (9,  9,  9,  '01/06/2023', '01/06/2024'),
   (10, 10, 10, '01/06/2023', '01/06/2024'),

   (11, 11, 11, '01/07/2023', '01/07/2024'),
   (12, 12, 12, '01/07/2023', '01/07/2024'),

   (13, 13, 13, '05/08/2023', '05/08/2024'),
   (14, 14, 14, '09/09/2023', '09/09/2024'),
   (15, 15, 15, '12/10/2023', '12/10/2024'),
   (16, 16, 16, '25/11/2023', '25/11/2024'),
   (17, 17, 17, '30/12/2023', '30/12/2024'),
   (18, 18, 18, '12/01/2023', '12/01/2024'),

   (19, 19, 19, '05/02/2023', '05/02/2024'),
   (20, 20, 20, '07/03/2023', '07/03/2024'),
   (21, 21, 21, '08/04/2023', '08/04/2024'),
   (22, 22, 22, '09/05/2023', '09/05/2024'),
   (23, 23, 23, '10/07/2023', '10/07/2024'),
   (24, 24, 24, '11/08/2023', '11/08/2024'),
   (25, 25, 25, '12/09/2023', '12/09/2024'),
   (26, 26, 26, '13/10/2023', '13/10/2024'),
   (27, 27, 27, '14/11/2023', '14/11/2024'),
   (28, 28, 28, '15/12/2023', '15/12/2024'),
   (29, 29, 29, '16/01/2023', '16/01/2024'),
   (30, 30, 30, '17/02/2023', '17/02/2024'),
   (31, 31, 31, '18/03/2023', '18/03/2024'),
   (32, 32, 32, '25/04/2023', '25/04/2024'),
   (33, 33, 33, '30/05/2023', '30/05/2024'),
   (34, 34, 34, '02/06/2023', '02/06/2024'),
   (35, 35, 35, '12/07/2023', '12/07/2024'),
   (36, 36, 36, '19/08/2023', '19/08/2024'),
   (37, 37, 37, '20/09/2023', '20/09/2024'),
   (38, 38, 38, '21/10/2023', '21/10/2024'),
   (38, 39, 39, '22/11/2023', '22/11/2024'),
   (40, 40, 40, '23/12/2023', '23/12/2024'),
   (41, 41, 41, '24/01/2023', '24/01/2024'),
   (42, 42, 42, '25/02/2023', '25/02/2024'),
   (43, 43, 43, '26/03/2023', '26/03/2024'),
   (44, 44, 44, '27/04/2023', '27/04/2024'),
   (45, 45, 45, '28/05/2023', '28/05/2024'),
   (46, 46, 46, '29/06/2023', '29/06/2024'),
   (47, 47, 47, '30/07/2023', '30/07/2024'),
   (48, 48, 48, '31/08/2023', '31/08/2024'),
   (49, 49, 49, '01/09/2023', '01/09/2024'),
   (50, 60, 50, '02/10/2023', '02/10/2024'),
   (51, 51, 51, '03/11/2023', '03/11/2024'),
   (52, 52, 52, '04/12/2023', '04/12/2024'),
   (53, 53, 53, '05/01/2023', '05/01/2024'),
   (54, 54, 54, '06/02/2023', '06/02/2024'),
   (55, 55, 55, '07/03/2023', '07/03/2024'),
   (56, 56, 56, '08/04/2023', '08/04/2024'),
   (57, 57, 57, '09/05/2023', '09/05/2024'),
   (58, 58, 58, '10/06/2023', '10/06/2024')
GO -- 58 INSERTS PARA 50 CONTRATOS DE CLIENTES Y SERVICIOS 
-- SELECT*FROM PLANES_SERVICIOS_ADQUIRIDOS



-- INSERTS TABLA FORMAS_DE_PAGO --
INSERT INTO FORMAS_DE_PAGO (METODO_DE_PAGO) VALUES
   ('Efectivo'),
   ('Transferencia')
GO
-- SELECT*FROM FORMAS_DE_PAGO ORDER BY ID_FORMA_PAGO

-- INSERTS TABLA PAGOS_DE_SERVICIOS --
INSERT INTO PAGOS_DE_SERVICIOS (ID_AGENCIA, ID_CLIENTE, ID_FORMA_PAGO, SERVICIO_MOVIL, SERVICIO_HOGAR) VALUES
   (1, 1, 1, NULL, 28.98),
   (1, 1, 1, NULL, 28.98),
   (1, 1, 1, NULL, 28.98),
   (1, 1, 1, NULL, 28.98)
GO

INSERT INTO PAGOS_DE_SERVICIOS (ID_AGENCIA, ID_CLIENTE, ID_FORMA_PAGO, SERVICIO_MOVIL, SERVICIO_HOGAR) VALUES
   (1, 1, 1, NULL, 18.98),
   (1, 1, 1, NULL, 18.98),
   (1, 1, 1, NULL, 18.98),
   (1, 1, 1, NULL, 18.98)
GO
-- SELECT*FROM PAGOS_DE_SERVICIOS

-- INSERTS TABLA FECHA_DE_PAGO_CLIENTE --
INSERT INTO FECHA_DE_PAGO_CLIENTE (ID_CLIENTE, ID_FORMA_PAGO, ID_PAGO) VALUES
   (1, 1, 1),
   (1, 1, 2),
   (1, 1, 3),
   (1, 1, 4)
GO
-- SELECT*FROM FECHA_DE_PAGO_CLIENTE

-- INSERTS TABLA FACTURAS --
INSERT INTO FACTURAS (FACTURA_EMITIDA, FECHA_DE_PAGO, ESTADO_FACTURACION) VALUES
   ('20/05/2023', '26/05/2023', 'Activo'),
   ('20/05/2023', '26/05/2023', 'Activo'),
   ('20/05/2023', '26/05/2023', 'Activo'),
   ('20/05/2023', '26/05/2023', 'Activo')
GO
-- SELECT*FROM FACTURAS

-- INSERTS TABLA DETALLE_FACTURAS --
INSERT INTO DETALLE_FACTURAS (ID_FACTURA, ID_SERVICIO, ID_PLAN, FECHA_DE_CANCELACION) VALUES
   (1, 1, 1, '1/06/2023'),
   (2, 2, 2, '1/06/2023'),
   (3, 3, 3, '1/06/2023'),
   (4, 4, 4, '1/06/2023')
GO
-- SELECT*FROM DETALLE_FACTURAS


-- INSERTS TABLA PAGOS_FACTURA_CLIENTE --
INSERT INTO PAGOS_FACTURA_CLIENTE (ID_FACTURA, ID_CLIENTE, ID_FECHA, ESTADO) VALUES
   (1, 1, 1, 'Activo'),
   (2, 1, 2, 'Activo'),
   (3, 1, 3, 'Activo'),
   (4, 1, 4, 'Activo')
GO
-- SELECT*FROM PAGOS_FACTURA_CLIENTE
-- SELECT*FROM PAGOS_FACTURA_CLIENTE WHERE ID_PAGO = ID_CLIENTE

-- INSERTS TABLA PAGOS_FACTURA_CLIENTE_DETALLE --
INSERT INTO PAGOS_FACTURA_CLIENTE_DETALLE (ID_PAGO, ID_SERVICIO, ID_PLAN, ID_FORMA_PAGO, STATUS_PAGO) VALUES
   (1, 1, 1, 1, 'Activo'),
   (2, 2, 2, 1, 'Activo'),
   (3, 3, 3, 2, 'Activo'),
   (4, 4, 4, 2, 'Activo')
GO
-- SELECT*FROM PAGOS_FACTURA_CLIENTE_DETALLE

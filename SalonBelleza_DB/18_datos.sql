USE SalonBelleza_DB;
GO

-- DATOS DE PRUEBA

-- 1. Roles de Seguridad
INSERT INTO Seguridad.Rol (Nombre) VALUES
('Dueño/a'),
('Administrador'),
('Cliente'),
('Atención y soporte'),
('Personal técnico');
GO

-- 2. Roles Laborales 
INSERT INTO RRHH.Rol(NombreRol) VALUES
('Administrador'), ('Estilista'), ('Colorista'), 
('Manicurista / Pedicurista'), ('Maquillador/a'), ('Recepcionista');
GO

-- 3. Métodos de pagp
INSERT INTO Ventas.MetodoPago (Nombre) VALUES
('Efectivo'),
('Tarjeta de débito'),
('Tarjeta de crédito'),
('QR / Transferencia');
GO

-- 4. Estados de Cita
INSERT INTO Agenda.EstadoCita (Nombre) VALUES
('Programada'),
('Confirmada'),
('En curso'),
('Completada'),
('Cancelada'),
('No asistió');
GO

-- 5. Categorias de servicio
INSERT INTO Servicios.CategoriaServicio (Nombre) VALUES
('Cabello'),
('Coloración'),
('Tratamientos Capilares'),
('Uñas'),
('Maquillaje'),
('Paquetes');

-- 6. Subcategorias de servicio
INSERT INTO Servicios.SubcategoriaServicio (CategoriaID, Nombre)
VALUES
-- Cabello (CategoriaID = 1)
(1, 'Corte'),           
(1, 'Peinado'),        
(1, 'Lavado'), 
(1, 'Alisado'), 
-- Coloración (CategoriaID = 2)
(2, 'Tinte Completo'),
(2, 'Mechas'), 
(2, 'Balayage'), 
(2, 'Decoloración'),
(2, 'Corrección de Color'),
-- Tratamientos Capilares (CategoriaID = 3)
(3, 'Hidratación'), 
(3, 'Reparación'), 
(3, 'Keratina'),
(3, 'Botox Capilar'),
(3, 'Detox Capilar'),
-- Uñas (CategoriaID = 4)
(4, 'Manicure'),
(4, 'Pedicure'), 
(4, 'Uñas Acrílicas'),
(4, 'Uñas en Gel'),
(4, 'Nail Art'),
(4, 'Retiro de Uñas'),
-- Maquillaje (CategoriaID = 5)
(5, 'Maquillaje Social'),
(5, 'Maquillaje de Novia'),
(5, 'Maquillaje Artístico'),
(5, 'Prueba de Maquillaje'),
-- Paquetes (CategoriaID = 6)
(6, 'Graduación'),
(6, 'Boda'),
(6, 'Quinceañera');

-- 7. Subcategoria de rol
INSERT INTO Servicios.SubcategoriaRol (SubcategoriaID, RolID) VALUES
-- Cabello (Estilista = RolID 3)
(1, 3), -- Corte
(2, 3), -- Peinado
(3, 3), -- Lavado
(4, 3), -- Alisado
-- Coloración (Colorista = RolID 4)
(5, 4), -- Tinte Completo
(6, 4), -- Mechas
(7, 4), -- Balayage
(8, 4), -- Decoloración
(9, 4), -- Corrección de Color
-- Tratamientos (Estilista = RolID 3)
(10, 3), -- Hidratación
(11, 3), -- Reparación
(12, 3), -- Keratina
(13, 3), -- Botox Capilar
(14, 3), -- Detox Capilar
-- Uñas (Manicurista = RolID 5)
(15, 5), -- Manicure
(16, 5), -- Pedicure
(17, 5), -- Uñas Acrílicas
(18, 5), -- Uñas en Gel
(19, 5), -- Nail Art
(20, 5), -- Retiro de Uñas
-- Maquillaje (Maquillador = RolID 6)
(21, 6), -- Maquillaje Social
(22, 6), -- Maquillaje de Novia
(23, 6), -- Maquillaje Artístico
(24, 6), -- Prueba de Maquillaje
(25, 3), -- Graduación - Estilista
(25, 6), -- Graduación - Maquillador
(26, 3), -- Boda - Estilista
(26, 6), -- Boda - Maquillador
(27, 3), -- Quinceañera - Estilista
(27, 6); -- Quinceañera - Maquillador

-- 7. Servicios
INSERT INTO Servicios.Servicio (Nombre, DuracionMin, SubcategoriaID, Descripcion, Activo) VALUES
-- SUBCATEGORÍA 1: Corte
('Corte Sólido',            30, 1, 'Corte recto, en V o en U',                          1), 
('Corte Encapado',          45, 1, 'Degradé, mariposa, degrafilado, curtain bangs',     1),
('Corte Bob / Pixie',       40, 1, 'Pixie cut, long bob, bob clásico',                  1),
-- SUBCATEGORÍA 2: Peinado
('Planchado',               30, 2, 'Peinado liso con plancha profesional',              1),
('Ondas al Agua / Bucleado',45, 2, 'Ondas o bucles con tenaza o difusor',               1),
('Cepillado',               30, 2, 'Peinado liso con cepillo redondo y secadora',       1),
('Semirecogido Lacio u Ondas',60,2,'Medias colas, colas bajas y altas',                 1),
('Ondas Calaminadas',       70, 2, 'Ondas marcadas estilo retro con ondulador',         1),
('Ondas Hollywood',         80, 2, 'Peinado glamour estilo Hollywood clásico',          1),
('Moño Simple (Lamido)',    60, 2, 'Moño clásico con acabado liso y pulido',            1),
('Moño Elaborado (Descontrolado)', 90, 2, 'Moño con texturas y estilo natural-artístico',1),
-- SUBCATEGORÍA 3: Lavado
('Lavado Neutro',           30, 3, 'Lavado y acondicionado con productos brasileros',   1),
('Lavado LOréal',         30, 3, 'Lavado y acondicionado con línea LOréal',         1),
-- SUBCATEGORÍA 4: Alisado
('Alisado Temporal',        60, 4, 'Alisado con calor, dura hasta el próximo lavado',   1),
('Alisado Permanente',     120, 4, 'Alisado químico de larga duración',                 1),
('Alisado con Proteínas',   90, 4, 'Alisado nutritivo con complejo de proteínas',       1),
-- SUBCATEGORÍA 5: Tinte Completo
('Tinte Completo Cabello Corto', 90, 5, 'Coloración total en cabello corto',            1),
('Tinte Completo Cabello Medio',120, 5, 'Coloración total en cabello a los hombros',    1),
('Tinte Completo Cabello Largo',150, 5, 'Coloración total en cabello largo',            1),
-- SUBCATEGORÍA 6: Mechas
('Mechas Clásicas',        120, 6, 'Mechones uniformes con papel de aluminio',          1),
('Mechas Babylights',      150, 6, 'Mechones muy finos para efecto natural',            1),
('Mechas Inversas',        120, 6, 'Mechones más oscuros que el color base',            1),
-- SUBCATEGORÍA 7: Balayage
('Balayage Clásico',       150, 7, 'Técnica de pintura a mano degradada',               1), 
('Balayage con Tono',      180, 7, 'Balayage con aplicación de tono personalizado',     1),
('Balayage + Matizado',    210, 7, 'Balayage con baño de color o matizador',            1),
-- SUBCATEGORÍA 8: Decoloración
('Decoloración Parcial',   120, 8, 'Decoloración en zonas específicas',                 1),  
('Decoloración Total',     180, 8, 'Decoloración completa del cabello',                 1), 
('Decoloración + Tonificación',210,8,'Decoloración y aplicación de tono final',         1), 
-- SUBCATEGORÍA 9: Corrección de Color
('Corrección de Color Parcial', 120, 9, 'Ajuste de color en zonas específicas',          1),
('Corrección de Color Total',   180, 9, 'Reformulación completa del color del cabello',  1),
-- SUBCATEGORÍA 10: Hidratación
('Hidratación Express',    45, 10, 'Mascarilla hidratante de acción rápida',            1),
('Hidratación Profunda',   60, 10, 'Tratamiento hidratante con vapor o calor',          1),
-- SUBCATEGORÍA 11: Reparación
('Reparación con Proteínas', 60, 11, 'Tratamiento reconstructor para cabello dañado',   1),
('Reparación Ampolla',      45, 11, 'Aplicación de ampolla reparadora concentrada',     1), 
-- SUBCATEGORÍA 12: Keratina
('Keratina Brasilera',     150, 12, 'Alisado y nutrición con keratina brasilera',       1), 
('Keratina Express',        90, 12, 'Tratamiento rápido de keratina sin formol',        1), 
-- SUBCATEGORÍA 13: Botox Capilar
('Botox Capilar',          120, 13, 'Relleno de fibra capilar, brillo y suavidad extrema', 1),
-- SUBCATEGORÍA 14: Detox Capilar
('Detox Capilar',           60, 14, 'Limpieza profunda del cuero cabelludo y fibra',    1),
-- SUBCATEGORÍA 15: Manicure
('Manicure Tradicional',    45, 15, 'Limpieza, forma y esmalte tradicional',            1),
('Manicure Semipermanente', 60, 15, 'Esmalte gel de larga duración con lámpara UV',     1),
-- SUBCATEGORÍA 16: Pedicure
('Pedicure Tradicional',    60, 16, 'Limpieza, exfoliación, forma y esmalte',           1),
('Pedicure Semipermanente', 75, 16, 'Pedicure con esmalte gel de larga duración',       1),
('Pedicure Spa',            90, 16, 'Pedicure completo con hidratación y masaje',       1),
-- SUBCATEGORÍA 17: Uñas Acrílicas
('Uñas Acrílicas Naturales',   90, 17, 'Esculpido en acrílico con acabado natural',    1),
('Uñas Acrílicas con Diseño',  120,17, 'Esculpido acrílico con decoración personalizada',1),
('Relleno Acrílico',            60, 17, 'Mantenimiento de crecimiento en uñas acrílicas',1),
-- SUBCATEGORÍA 18: Uñas en Gel
('Uñas en Gel Naturales',   90, 18, 'Esculpido en gel con acabado natural',             1),
('Uñas en Gel con Diseño', 120, 18, 'Esculpido en gel con decoración personalizada',    1),
('Relleno en Gel',          60, 18, 'Mantenimiento de crecimiento en uñas de gel',      1),
-- SUBCATEGORÍA 19: Nail Art
('Nail Art Simple',         30, 19, 'Diseño sencillo: líneas, puntos, flores básicas',  1),
('Nail Art Elaborado',      60, 19, 'Diseño complejo: 3D, degradado, encapsulado',      1),
-- SUBCATEGORÍA 20: Retiro de Uñas
('Retiro de Uñas Acrílicas', 30, 20, 'Retiro seguro de uñas acrílicas',                1),
('Retiro de Uñas en Gel',    30, 20, 'Retiro seguro de uñas en gel',                   1),
('Retiro de Semipermanente', 20, 20, 'Retiro de esmalte semipermanente',                1),
-- SUBCATEGORÍA 21: Maquillaje Social
('Maquillaje Social Día',    60, 21, 'Maquillaje natural para eventos diurnos',         1), 
('Maquillaje Social Noche',  75, 21, 'Maquillaje glamour para eventos nocturnos',       1),
-- SUBCATEGORÍA 22: Maquillaje de Novia
('Maquillaje de Novia Clásico',  90, 22, 'Look elegante y atemporal para la novia',    1),
('Maquillaje de Novia Glam',    100, 22, 'Look sofisticado y de alto impacto',          1),
-- SUBCATEGORÍA 23: Maquillaje Artístico
('Maquillaje Artístico Fantasía', 90, 23, 'Maquillaje creativo para shows o fotografía',1),
('Maquillaje Caracterización',   120, 23, 'Transformación en personaje o caracterización',1),
-- SUBCATEGORÍA 24: Prueba de Maquillaje
('Prueba de Maquillaje Novia',   60, 24, 'Ensayo previo del look nupcial',              1),
('Prueba de Maquillaje Evento',  45, 24, 'Ensayo de maquillaje para evento especial',   1), 
-- SUBCATEGORÍA 25: Paquete Graduación
('Paquete Graduación Básico',   120, 25, 'Peinado + maquillaje social para graduación', 1),
('Paquete Graduación Completo', 180, 25, 'Peinado + maquillaje + manicure para graduación',1),
-- SUBCATEGORÍA 26: Paquete Boda
('Paquete Novia Completo',      240, 26, 'Peinado + maquillaje + uñas para la novia',   1),
('Paquete Damas de Honor',      180, 26, 'Peinado + maquillaje para damas de honor',    1),
-- SUBCATEGORÍA 27: Paquete Quinceañera
('Paquete Quinceañera Básico',  150, 27, 'Peinado + maquillaje para quinceañera',       1), 
('Paquete Quinceañera Premium', 210, 27, 'Peinado + maquillaje + uñas + pestañas',      1);

-- 7. Precios iniciales
INSERT INTO Servicios.ServicioPrecio (ServicioID, Precio, FechaInicio, FechaFin)
VALUES
-- Corte
(1,  100.00, GETDATE(), NULL),
(2,  120.00, GETDATE(), NULL),
(3,  130.00, GETDATE(), NULL),
-- Peinado
(4,  100.00, GETDATE(), NULL),
(5,  100.00, GETDATE(), NULL),
(6,  100.00, GETDATE(), NULL),
(7,  150.00, GETDATE(), NULL),
(8,  150.00, GETDATE(), NULL),
(9,  150.00, GETDATE(), NULL),
(10, 150.00, GETDATE(), NULL),
(11, 180.00, GETDATE(), NULL),
-- Lavado
(12,  60.00, GETDATE(), NULL),
(13,  80.00, GETDATE(), NULL),
-- Alisado
(14, 120.00, GETDATE(), NULL),
(15, 350.00, GETDATE(), NULL),
(16, 200.00, GETDATE(), NULL),
-- Tinte Completo
(17, 180.00, GETDATE(), NULL),
(18, 220.00, GETDATE(), NULL),
(19, 280.00, GETDATE(), NULL),
-- Mechas
(20, 200.00, GETDATE(), NULL),
(21, 250.00, GETDATE(), NULL),
(22, 200.00, GETDATE(), NULL),
-- Balayage
(23, 300.00, GETDATE(), NULL),
(24, 350.00, GETDATE(), NULL),
(25, 400.00, GETDATE(), NULL),
-- Decoloración
(26, 200.00, GETDATE(), NULL),
(27, 320.00, GETDATE(), NULL),
(28, 380.00, GETDATE(), NULL),
-- Corrección de Color
(29, 250.00, GETDATE(), NULL),
(30, 400.00, GETDATE(), NULL),
-- Hidratación
(31,  80.00, GETDATE(), NULL),
(32, 120.00, GETDATE(), NULL),
-- Reparación
(33, 130.00, GETDATE(), NULL),
(34,  90.00, GETDATE(), NULL),
-- Keratina
(35, 400.00, GETDATE(), NULL),
(36, 250.00, GETDATE(), NULL),
-- Botox Capilar
(37, 380.00, GETDATE(), NULL),
-- Detox Capilar
(38, 150.00, GETDATE(), NULL),
-- Manicure
(39,  60.00, GETDATE(), NULL),
(40,  90.00, GETDATE(), NULL),
-- Pedicure
(41,  80.00, GETDATE(), NULL),
(42, 110.00, GETDATE(), NULL),
(43, 140.00, GETDATE(), NULL),
-- Uñas Acrílicas
(44, 180.00, GETDATE(), NULL),
(45, 220.00, GETDATE(), NULL),
(46,  90.00, GETDATE(), NULL),
-- Uñas en Gel
(47, 190.00, GETDATE(), NULL),
(48, 230.00, GETDATE(), NULL),
(49,  95.00, GETDATE(), NULL),
-- Nail Art
(50,  50.00, GETDATE(), NULL),
(51, 100.00, GETDATE(), NULL),
-- Retiro de Uñas
(52,  50.00, GETDATE(), NULL),
(53,  50.00, GETDATE(), NULL),
(54,  30.00, GETDATE(), NULL),
-- Maquillaje Social
(55, 120.00, GETDATE(), NULL),
(56, 160.00, GETDATE(), NULL),
-- Maquillaje de Novia
(57, 300.00, GETDATE(), NULL),
(58, 380.00, GETDATE(), NULL),
-- Maquillaje Artístico
(59, 200.00, GETDATE(), NULL),
(60, 280.00, GETDATE(), NULL),
-- Prueba de Maquillaje
(61, 150.00, GETDATE(), NULL),
(62, 100.00, GETDATE(), NULL),
-- Paquetes Graduación
(63, 300.00, GETDATE(), NULL),
(64, 420.00, GETDATE(), NULL),
-- Paquetes Boda
(65, 700.00, GETDATE(), NULL),
(66, 450.00, GETDATE(), NULL),
-- Paquetes Quinceañera
(67, 380.00, GETDATE(), NULL),
(68, 520.00, GETDATE(), NULL);

-- 9. Dueña 1
-- Contraseña: Coco2026!
DECLARE @hash VARCHAR(255) = '$2b$10$OXXzr2pUqCgmOvSsy127wOcP0OxM3BxD.UV0x1cL1YSCf0hXhZL62';

DECLARE @IDDuena INT;
INSERT INTO Personas.Persona (Nombre, Apellido, Telefono, Email)
VALUES ('Alicia', 'Belaunde', '+591 79886101', 'duena1@coco.com');
SET @IDDuena = SCOPE_IDENTITY();

DECLARE @UIDDuena INT;
INSERT INTO Seguridad.Usuario (PersonaID, Username, PasswordHash)
VALUES (@IDDuena, 'duena1@coco.com', @hash);
SET @UIDDuena = SCOPE_IDENTITY();

INSERT INTO Seguridad.UsuarioRol (UsuarioID, RolID)
VALUES (@UIDDuena, 1);

-- 10. Dueña 2
-- Contraseña: Coco2026!
DECLARE @hash VARCHAR(255) = '$2b$10$OXXzr2pUqCgmOvSsy127wOcP0OxM3BxD.UV0x1cL1YSCf0hXhZL62';

DECLARE @IDDuena INT;
INSERT INTO Personas.Persona (Nombre, Apellido, Telefono, Email)
VALUES ('Paola', 'Quinteros', '+591 77455834', 'duena2@coco.com');
SET @IDDuena = SCOPE_IDENTITY();

DECLARE @UIDDuena INT;
INSERT INTO Seguridad.Usuario (PersonaID, Username, PasswordHash)
VALUES (@IDDuena, 'duena2@coco.com', @hash);
SET @UIDDuena = SCOPE_IDENTITY();

INSERT INTO Seguridad.UsuarioRol (UsuarioID, RolID)
VALUES (@UIDDuena, 1);

-- 11. Administrador 1
-- Contraseña: Coco2026!
DECLARE @hash VARCHAR(255) = '$2b$10$OXXzr2pUqCgmOvSsy127wOcP0OxM3BxD.UV0x1cL1YSCf0hXhZL62';

DECLARE @IDAdmin INT;
INSERT INTO Personas.Persona (Nombre, Apellido, Telefono, Email)
VALUES ('Lucia', 'Lopez', '+591 70000002', 'admin1@coco.com');
SET @IDAdmin = SCOPE_IDENTITY();

INSERT INTO RRHH.Empleado (EmpleadoID, FechaContratacion, Activo)
VALUES (@IDAdmin, GETDATE(), 1);
INSERT INTO RRHH.EmpleadoRol (EmpleadoID, RolID)
VALUES (@IDAdmin, 2);
INSERT INTO RRHH.EmpleadoSueldo (EmpleadoID, SueldoBase, FechaInicio)
VALUES (@IDAdmin, 5000.00, GETDATE());
INSERT INTO RRHH.EmpleadoComision (EmpleadoID, Porcentaje, FechaInicio)
VALUES (@IDAdmin, 0.00, GETDATE());

DECLARE @UIDAdmin INT;
INSERT INTO Seguridad.Usuario (PersonaID, Username, PasswordHash)
VALUES (@IDAdmin, 'admin1@coco.com', @hash);
SET @UIDAdmin = SCOPE_IDENTITY();
INSERT INTO Seguridad.UsuarioRol (UsuarioID, RolID)
VALUES (@UIDAdmin, 2);

-- 12. Administrador 2
-- Contraseña: Coco2026!
DECLARE @hash VARCHAR(255) = '$2b$10$OXXzr2pUqCgmOvSsy127wOcP0OxM3BxD.UV0x1cL1YSCf0hXhZL62';

DECLARE @IDAdmin INT;
INSERT INTO Personas.Persona (Nombre, Apellido, Telefono, Email)
VALUES ('Martina', 'Guzman', '+591 78846452', 'admin2@coco.com');
SET @IDAdmin = SCOPE_IDENTITY();

INSERT INTO RRHH.Empleado (EmpleadoID, FechaContratacion, Activo)
VALUES (@IDAdmin, GETDATE(), 1);
INSERT INTO RRHH.EmpleadoRol (EmpleadoID, RolID)
VALUES (@IDAdmin, 2);
INSERT INTO RRHH.EmpleadoSueldo (EmpleadoID, SueldoBase, FechaInicio)
VALUES (@IDAdmin, 5000.00, GETDATE());
INSERT INTO RRHH.EmpleadoComision (EmpleadoID, Porcentaje, FechaInicio)
VALUES (@IDAdmin, 0.00, GETDATE());

DECLARE @UIDAdmin INT;
INSERT INTO Seguridad.Usuario (PersonaID, Username, PasswordHash)
VALUES (@IDAdmin, 'admin2@coco.com', @hash);
SET @UIDAdmin = SCOPE_IDENTITY();
INSERT INTO Seguridad.UsuarioRol (UsuarioID, RolID)
VALUES (@UIDAdmin, 2);

-- 13. Estilista
-- Contraseña: Coco2026!
DECLARE @hash VARCHAR(255) = '$2b$10$OXXzr2pUqCgmOvSsy127wOcP0OxM3BxD.UV0x1cL1YSCf0hXhZL62';

DECLARE @IDMaria INT;
INSERT INTO Personas.Persona (Nombre, Apellido, Telefono, Email)
VALUES ('María', 'González', '+591 70000010', 'maria@coco.com');
SET @IDMaria = SCOPE_IDENTITY();

INSERT INTO RRHH.Empleado (EmpleadoID, FechaContratacion, Activo)
VALUES (@IDMaria, GETDATE(), 1);
INSERT INTO RRHH.EmpleadoRol (EmpleadoID, RolID)
VALUES (@IDMaria, 3);
INSERT INTO RRHH.EmpleadoSueldo (EmpleadoID, SueldoBase, FechaInicio)
VALUES (@IDMaria, 3200.00, GETDATE());
INSERT INTO RRHH.EmpleadoComision (EmpleadoID, Porcentaje, FechaInicio)
VALUES (@IDMaria, 15.00, GETDATE());
INSERT INTO RRHH.HorarioEmpleado (EmpleadoID, DiaSemana, HoraEntrada, HoraSalida, Activo) VALUES
(@IDMaria,2,'09:00','19:00',1),(@IDMaria,3,'09:00','19:00',1),
(@IDMaria,4,'09:00','19:00',1),(@IDMaria,5,'09:00','19:00',1),
(@IDMaria,6,'09:00','19:00',1),(@IDMaria,7,'09:00','14:00',1);

DECLARE @UIDMaria INT;
INSERT INTO Seguridad.Usuario (PersonaID, Username, PasswordHash)
VALUES (@IDMaria, 'maria@coco.com', @hash);
SET @UIDMaria = SCOPE_IDENTITY();
INSERT INTO Seguridad.UsuarioRol (UsuarioID, RolID)
VALUES (@UIDMaria, 5);

-- 14. Manicurista
-- Contraseña: Coco2026!
DECLARE @hash VARCHAR(255) = '$2b$10$OXXzr2pUqCgmOvSsy127wOcP0OxM3BxD.UV0x1cL1YSCf0hXhZL62';

DECLARE @IDKaren INT;
INSERT INTO Personas.Persona (Nombre, Apellido, Telefono, Email)
VALUES ('Karen', 'Reyes', '+591 70000011', 'karen@coco.com');
SET @IDKaren = SCOPE_IDENTITY();

INSERT INTO RRHH.Empleado (EmpleadoID, FechaContratacion, Activo)
VALUES (@IDKaren, GETDATE(), 1);
INSERT INTO RRHH.EmpleadoRol (EmpleadoID, RolID)
VALUES (@IDKaren, 5);
INSERT INTO RRHH.EmpleadoSueldo (EmpleadoID, SueldoBase, FechaInicio)
VALUES (@IDKaren, 2800.00, GETDATE());
INSERT INTO RRHH.EmpleadoComision (EmpleadoID, Porcentaje, FechaInicio)
VALUES (@IDKaren, 15.00, GETDATE());
INSERT INTO RRHH.HorarioEmpleado (EmpleadoID, DiaSemana, HoraEntrada, HoraSalida, Activo) VALUES
(@IDKaren,1,'09:00','19:00',1),(@IDKaren,2,'09:00','19:00',1),
(@IDKaren,3,'09:00','19:00',1),(@IDKaren,4,'09:00','19:00',1),
(@IDKaren,5,'09:00','19:00',1),(@IDKaren,6,'09:00','14:00',1);

DECLARE @UIDKaren INT;
INSERT INTO Seguridad.Usuario (PersonaID, Username, PasswordHash)
VALUES (@IDKaren, 'karen@coco.com', @hash);
SET @UIDKaren = SCOPE_IDENTITY();
INSERT INTO Seguridad.UsuarioRol (UsuarioID, RolID)
VALUES (@UIDKaren, 5);

-- 15. Colorista
-- Contraseña: Coco2026!
DECLARE @hash VARCHAR(255) = '$2b$10$OXXzr2pUqCgmOvSsy127wOcP0OxM3BxD.UV0x1cL1YSCf0hXhZL62';

DECLARE @IDLucia INT;
INSERT INTO Personas.Persona (Nombre, Apellido, Telefono, Email)
VALUES ('Lucía', 'Flores', '+591 70000012', 'lucia@coco.com');
SET @IDLucia = SCOPE_IDENTITY();

INSERT INTO RRHH.Empleado (EmpleadoID, FechaContratacion, Activo)
VALUES (@IDLucia, GETDATE(), 1);
INSERT INTO RRHH.EmpleadoRol (EmpleadoID, RolID)
VALUES (@IDLucia, 4);
INSERT INTO RRHH.EmpleadoSueldo (EmpleadoID, SueldoBase, FechaInicio)
VALUES (@IDLucia, 3000.00, GETDATE());
INSERT INTO RRHH.EmpleadoComision (EmpleadoID, Porcentaje, FechaInicio)
VALUES (@IDLucia, 15.00, GETDATE());
INSERT INTO RRHH.HorarioEmpleado (EmpleadoID, DiaSemana, HoraEntrada, HoraSalida, Activo) VALUES
(@IDLucia,1,'09:00','19:00',1),(@IDLucia,2,'09:00','19:00',1),
(@IDLucia,3,'09:00','19:00',1),(@IDLucia,4,'09:00','19:00',1),
(@IDLucia,5,'09:00','19:00',1),(@IDLucia,6,'09:00','14:00',1);

DECLARE @UIDLucia INT;
INSERT INTO Seguridad.Usuario (PersonaID, Username, PasswordHash)
VALUES (@IDLucia, 'lucia@coco.com', @hash);
SET @UIDLucia = SCOPE_IDENTITY();
INSERT INTO Seguridad.UsuarioRol (UsuarioID, RolID)
VALUES (@UIDLucia, 5);

-- 16. Recepcionista 
-- Contraseña: Coco2026!
DECLARE @hash VARCHAR(255) = '$2b$10$OXXzr2pUqCgmOvSsy127wOcP0OxM3BxD.UV0x1cL1YSCf0hXhZL62';

DECLARE @IDQuispe INT;
INSERT INTO Personas.Persona (Nombre, Apellido, Telefono, Email)
VALUES ('María', 'Prado', '+591 70000013', 'mprado@coco.com');
SET @IDQuispe = SCOPE_IDENTITY();

INSERT INTO RRHH.Empleado (EmpleadoID, FechaContratacion, Activo)
VALUES (@IDQuispe, GETDATE(), 1);
INSERT INTO RRHH.EmpleadoRol (EmpleadoID, RolID)
VALUES (@IDQuispe, 7);
INSERT INTO RRHH.EmpleadoSueldo (EmpleadoID, SueldoBase, FechaInicio)
VALUES (@IDQuispe, 2400.00, GETDATE());
INSERT INTO RRHH.EmpleadoComision (EmpleadoID, Porcentaje, FechaInicio)
VALUES (@IDQuispe, 0.00, GETDATE());
INSERT INTO RRHH.HorarioEmpleado (EmpleadoID, DiaSemana, HoraEntrada, HoraSalida, Activo) VALUES
(@IDQuispe,1,'08:30','19:00',1),(@IDQuispe,2,'08:30','19:00',1),
(@IDQuispe,3,'08:30','19:00',1),(@IDQuispe,4,'08:30','19:00',1),
(@IDQuispe,5,'08:30','19:00',1),(@IDQuispe,6,'08:30','14:30',1);

DECLARE @UIDQuispe INT;
INSERT INTO Seguridad.Usuario (PersonaID, Username, PasswordHash)
VALUES (@IDQuispe, 'mprado@coco.com', @hash);
SET @UIDQuispe = SCOPE_IDENTITY();
INSERT INTO Seguridad.UsuarioRol (UsuarioID, RolID)
VALUES (@UIDQuispe, 4);

-- 17. Promociones
INSERT INTO Marketing.Promocion (Nombre, Descripcion, FechaInicio, FechaFin, Descuento, Activo)
VALUES
('Día de la Mujer',   'Descuento especial en todos los servicios para celebrar a la mujer',   '2026-03-07', '2026-03-08', 20.00, 1),
('Día de la Madre',   'Descuento en maquillaje y peinados para consentir a mamá',              '2026-05-25', '2026-05-31', 15.00, 1),
('Mes de Graduación', 'Descuento en paquetes de graduación durante la temporada',              '2026-11-01', '2026-12-01', 10.00, 1),
('Cumpleaños',        '¡Descuento especial el mes de tu cumpleaños en cualquier servicio!',   '2026-01-01', '2026-12-31', 25.00, 1);

-- 18. Servicios en promociones
INSERT INTO Marketing.PromocionServicio (PromocionID, ServicioID)
VALUES
-- Día de la Mujer (PromocionID = 1): cortes, peinados y maquillaje
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 55),
(1, 56),

-- Día de la Madre (PromocionID = 2): peinados, maquillaje y tratamientos
(2, 4),
(2, 5),
(2, 10),
(2, 11),
(2, 31),
(2, 32),
(2, 55),
(2, 56),

-- Mes de Graduación (PromocionID = 3): paquetes de graduación
(3, 63),
(3, 64),

-- Cumpleaños (PromocionID = 4): todos los servicios
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 31),
(4, 32),
(4, 37),
(4, 39),
(4, 40),
(4, 41),
(4, 42),
(4, 43),
(4, 55),
(4, 56);

-- 19. Proveedor
INSERT INTO Inventario.Proveedor (Nombre, Telefono, Email, Activo)
VALUES
('L''Oréal Profesional', '+591 70000001', 'contacto@loreal-profesional.com', 1),
('Wella Professionals', '+591 70000002', 'ventas@wella.com', 1),
('Schwarzkopf Professional', '+591 70000003', 'info@schwarzkopf.com', 1),
('OPI Products', '+591 70000004', 'soporte@opi.com', 1),
('Moroccanoil', '+591 70000005', 'ventas@moroccanoil.com', 1);

-- 20. Inventario Producto
INSERT INTO Inventario.Producto (Nombre, StockActual, StockMinimo, UnidadMedida, Activo)
VALUES
('Shampoo Profesional Reparador', 20, 5, 'ml', 1),
('Acondicionador Hidratante', 15, 5, 'ml', 1),
('Tinte Negro Intenso', 30, 10, 'unidad', 1),
('Tinte Rubio Claro', 25, 10, 'unidad', 1),
('Oxidante 20 Vol', 40, 10, 'ml', 1),
('Esmalte Gel Rojo', 10, 3, 'unidad', 1),
('Esmalte Gel Nude', 8, 3, 'unidad', 1),
('Removedor de Gel', 12, 4, 'ml', 1),
('Aceite Capilar Argán', 6, 2, 'ml', 1),
('Spray Fijador', 14, 5, 'ml', 1);

-- 21. Precio de productos
INSERT INTO Inventario.ProductoPrecio (ProductoID, Precio, FechaInicio, FechaFin)
VALUES
(1, 80.00, '2025-01-01', NULL),
(2, 75.00, '2025-01-01', NULL),
(3, 50.00, '2025-01-01', NULL),
(4, 55.00, '2025-01-01', NULL),
(5, 40.00, '2025-01-01', NULL),
(6, 60.00, '2025-01-01', NULL),
(7, 60.00, '2025-01-01', NULL),
(8, 35.00, '2025-01-01', NULL),
(9, 120.00, '2025-01-01', NULL),
(10, 70.00, '2025-01-01', NULL);

USE SalonBelleza_DB;
GO

-- Usuarios existentes
SELECT
    p.PersonaID,
    p.Nombre + ' ' + p.Apellido AS NombreCompleto,
    p.Email,
    sr.Nombre  AS RolSeguridad,
    rr.NombreRol  AS RolLaboral
FROM Personas.Persona      p
JOIN Seguridad.Usuario      u  ON u.PersonaID  = p.PersonaID
JOIN Seguridad.UsuarioRol   ur ON ur.UsuarioID = u.UsuarioID
JOIN Seguridad.Rol          sr ON sr.RolID     = ur.RolID
LEFT JOIN RRHH.Empleado     e  ON e.EmpleadoID = p.PersonaID
LEFT JOIN RRHH.EmpleadoRol  er ON er.EmpleadoID = e.EmpleadoID
LEFT JOIN RRHH.Rol          rr ON rr.RolID     = er.RolID
ORDER BY p.PersonaID;
GO

USE SalonBelleza_DB;
GO

-- Corregir Gabriela Suarez (Colorista → Personal técnico)
UPDATE Seguridad.UsuarioRol
SET RolID = 5
WHERE UsuarioID = (
    SELECT u.UsuarioID FROM Seguridad.Usuario u
    JOIN Personas.Persona p ON p.PersonaID = u.PersonaID
    WHERE p.Email = 'gsuarez@coco.com'
)
AND RolID = 4;

-- Agregar rol Atención y soporte a Ana Caballero (tiene Recepcionista)
INSERT INTO Seguridad.UsuarioRol (UsuarioID, RolID)
SELECT u.UsuarioID, 4
FROM Seguridad.Usuario u
JOIN Personas.Persona p ON p.PersonaID = u.PersonaID
WHERE p.Email = 'acaballero@coco.com'
AND NOT EXISTS (
    SELECT 1 FROM Seguridad.UsuarioRol ur
    WHERE ur.UsuarioID = u.UsuarioID AND ur.RolID = 4
);
GO

USE SalonBelleza_DB;
GO
EXEC RRHH.SP_SincronizarRolesSeguridad;
GO

USE SalonBelleza_DB;
GO

-- Eliminar duplicados en UsuarioRol
WITH CTE AS (
    SELECT UsuarioID, RolID,
           ROW_NUMBER() OVER (PARTITION BY UsuarioID, RolID ORDER BY UsuarioID) AS rn
    FROM Seguridad.UsuarioRol
)
DELETE FROM CTE WHERE rn > 1;

-- Verificar
SELECT
    p.Nombre+' '+p.Apellido AS Nombre,
    p.Email,
    STRING_AGG(r.Nombre, ', ') WITHIN GROUP (ORDER BY r.RolID) AS Roles,
    COUNT(ur.RolID) AS Total
FROM Seguridad.Usuario      u
JOIN Personas.Persona        p  ON p.PersonaID  = u.PersonaID
JOIN Seguridad.UsuarioRol    ur ON ur.UsuarioID = u.UsuarioID
JOIN Seguridad.Rol           r  ON r.RolID      = ur.RolID
GROUP BY p.Nombre, p.Apellido, p.Email
ORDER BY p.Nombre;
GO

USE SalonBelleza_DB;
GO

EXEC Servicios.SP_ListarSubcategorias;

USE SalonBelleza_DB;
GO

-- Ver cuáles son duplicados (los de ID mayor son los duplicados)
WITH CTE AS (
    SELECT SubcategoriaID,
           ROW_NUMBER() OVER (PARTITION BY Nombre, CategoriaID ORDER BY SubcategoriaID) AS rn
    FROM Servicios.SubcategoriaServicio
)
DELETE FROM CTE WHERE rn > 1;
GO

-- Verificar
SELECT * FROM Servicios.SubcategoriaServicio ORDER BY CategoriaID, Nombre;
GO

USE SalonBelleza_DB;
GO

SELECT p.PersonaID, p.Nombre, p.Apellido, r.NombreRol, er.RolID
FROM RRHH.Empleado e
JOIN Personas.Persona p ON p.PersonaID = e.EmpleadoID
JOIN RRHH.EmpleadoRol er ON er.EmpleadoID = e.EmpleadoID
JOIN RRHH.Rol r ON r.RolID = er.RolID
WHERE e.Activo = 1 AND r.RolID IN (3,4,5,6)
ORDER BY p.Nombre;


USE SalonBelleza_DB;
GO

SET IDENTITY_INSERT Notificaciones.TipoNotificacion ON;

IF NOT EXISTS (SELECT 1 FROM Notificaciones.TipoNotificacion WHERE TipoNotificacionID = 8)
    INSERT INTO Notificaciones.TipoNotificacion (TipoNotificacionID, Nombre) VALUES (8, 'solicitud_aprobada');

IF NOT EXISTS (SELECT 1 FROM Notificaciones.TipoNotificacion WHERE TipoNotificacionID = 9)
    INSERT INTO Notificaciones.TipoNotificacion (TipoNotificacionID, Nombre) VALUES (9, 'solicitud_rechazada');

SET IDENTITY_INSERT Notificaciones.TipoNotificacion OFF;

SELECT * FROM Notificaciones.TipoNotificacion ORDER BY TipoNotificacionID;



USE SalonBelleza_DB;
GO

-- Corregir hora en citas creadas desde solicitudes con offset de 4 horas
UPDATE Agenda.Cita
SET FechaInicio = DATEADD(HOUR, 4, FechaInicio)
WHERE CitaID IN (40, 41);

UPDATE Agenda.CitaServicio
SET FechaInicioServicio = DATEADD(HOUR, 4, FechaInicioServicio),
    FechaFinServicio    = DATEADD(HOUR, 4, FechaFinServicio)
WHERE CitaID IN (40, 41);

UPDATE Agenda.SolicitudEspecial
SET FechaSolicitada = DATEADD(HOUR, 4, FechaSolicitada)
WHERE SolicitudID IN (4, 5);
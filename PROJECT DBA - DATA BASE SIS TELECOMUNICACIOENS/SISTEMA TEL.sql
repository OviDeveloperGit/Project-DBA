CREATE DATABASE SISTEMA_TEL
GO
USE SISTEMA_TEL
GO

CREATE TABLE DEPARTAMENTO(
   ID_DEPTO                     INT IDENTITY(1,1),
   NOM_DEPTO                    VARCHAR(100) NOT NULL,

   CONSTRAINT PK_DEPARTAMENTO PRIMARY KEY (ID_DEPTO),
   CONSTRAINT UQ_NOM_DEPTO UNIQUE (NOM_DEPTO)
)
GO

CREATE TABLE AGENCIAS(
   ID_AGENCIA                   INT IDENTITY(1,1),
   ID_DEPTO                     INT,               

   NOM_AGENCIA                  VARCHAR(60) NOT NULL,
   DIRECCION                    VARCHAR(60) NOT NULL,     
   
   CONSTRAINT PK_AGENCIAS PRIMARY KEY (ID_AGENCIA),
   CONSTRAINT UQ_DIRECCION UNIQUE (DIRECCION),
   CONSTRAINT FK_DEPTO    FOREIGN KEY (ID_DEPTO) REFERENCES DEPARTAMENTO(ID_DEPTO)
)                                                              
GO

CREATE TABLE EMPLEADOS(
   ID_EMPLEADO                INT IDENTITY(1,1),
   ID_AGENCIA                 INT,

   NOM_EMPLEADO               VARCHAR(60) NOT NULL,
   APE_EMPLEADO               VARCHAR(60) NOT NULL,
   TELEFONO                   VARCHAR(9)  NOT NULL,
   CORREO_ELECTRONICO         VARCHAR(60) NOT NULL,
   FECHA_NAC                  DATE        NOT NULL,
   ESTADO                     VARCHAR(20) DEFAULT 'Activo' NOT NULL,
   
   USUARIO                    VARCHAR(20) NOT NULL,
   CLAVE                      VARCHAR(20) NOT NULL,

   CONSTRAINT PK_Empleado     PRIMARY KEY (ID_EMPLEADO),
   CONSTRAINT Empleado_Correo CHECK (CORREO_ELECTRONICO LIKE '%@%.%'),
   CONSTRAINT Empleado_Estado CHECK (ESTADO IN ('Activo', 'Inactivo', 'Licencia')),
   CONSTRAINT FK_EMPLEADO_AGENCIA FOREIGN KEY (ID_AGENCIA) REFERENCES AGENCIAS(ID_AGENCIA)
)
GO

CREATE TABLE ROLES(
   ID_ROL                     INT IDENTITY(1,1),
   ROLES                      VARCHAR(100) NOT NULL, 
   
   CONSTRAINT PK_Roles PRIMARY KEY (ID_ROL),
   CONSTRAINT UQ_ROLES UNIQUE (ROLES)
)
GO

CREATE TABLE ROLES_EMPLEADOS(
   ID_ROL                     INT,
   ID_EMPLEADO                INT,

   CONSTRAINT PK_Roles_Empleados PRIMARY KEY (ID_ROL, ID_EMPLEADO),
   CONSTRAINT FK_Rol_Empleado    FOREIGN KEY (ID_ROL) REFERENCES ROLES(ID_ROL),
   CONSTRAINT FK_Empleado_Rol    FOREIGN KEY (ID_EMPLEADO) REFERENCES EMPLEADOS(ID_EMPLEADO)
)
GO

------------------------------------------------------------------------------------------
-- SIRVE PARA CREAR UN MENÚ.
-- PARA LOS NIVELES QUE TIENE ACCESO UN USUARIO.
CREATE TABLE FORMS(
   ID_FORM                    INT IDENTITY(1,1),
   NOMBRE                     VARCHAR(60),       -- NOMBRE DEL FORMULARIO 'SisCompa'
   DESCRIPCION                VARCHAR(60),       -- NIVEL DE ACCESO DENTRO DEL FORMULARIO.

   CONSTRAINT PK_FORM PRIMARY KEY (ID_FORM),
   CONSTRAINT UQ_DESC_FORM UNIQUE (DESCRIPCION)
)
GO

CREATE TABLE FORMS_ROLES(
   ID_FORM                    INT,
   ID_ROL                     INT,
   ID_EMPLEADO                INT,
   CONSTRAINT PK_FORM_ROLES PRIMARY KEY (ID_FORM, ID_ROL, ID_EMPLEADO),
   CONSTRAINT FK_FORMS_FRM  FOREIGN KEY (ID_FORM)     REFERENCES FORMS(ID_FORM),
   CONSTRAINT FK_FORMS_EMP  FOREIGN KEY (ID_EMPLEADO) REFERENCES EMPLEADOS(ID_EMPLEADO),
   CONSTRAINT FK_FORMS_ROL  FOREIGN KEY (ID_FORM, ID_ROL) REFERENCES ROLES_EMPLEADOS(ID_ROL, ID_EMPLEADO)
)
GO
-- SELECT*FROM FORMS_ROLES

------------------------------------------------------------------------------------------

CREATE TABLE CLIENTES(
   ID_CLIENTE                 INT IDENTITY(1,1),
   ID_AGENCIA                 INT,

   NOMBRE                     VARCHAR(80)   NOT NULL,
   APELLIDO                   VARCHAR(80)   NOT NULL,
   DUI                        VARCHAR(60)   NOT NULL, -- ACCESO PARA LOS USUARIOS DE HOGAR
   CUENTA_FACTURACION         VARCHAR(80)       NULL, -- ACCESO PARA LOS USUARIOS DE HOGAR
   SALDO                      DECIMAL(10,2) NOT NULL,
   CORREO_ELECTRONICO         VARCHAR(60)       NULL,
   TELEFONO_MOVIL             VARCHAR(60)   NOT NULL, -- ACCESO PARA LOS USUARIOS DE MOVIL
   CLAVE                      VARCHAR(60)       NULL, -- ACCESO PARA LOS USUARIOS DE MOVIL, ES GENERADA POR LA BASE AL INSERTAR REGISTROS - TRIGGER

   CONSTRAINT PK_Clientes PRIMARY KEY (ID_CLIENTE),
   CONSTRAINT CK_Correo_Cliente CHECK (CORREO_ELECTRONICO LIKE '%@%.%'),
   CONSTRAINT FK_Agencia_Cliente FOREIGN KEY (ID_AGENCIA) REFERENCES Agencias(ID_AGENCIA)
)
GO

CREATE TABLE SERVICIOS_ADQUIRIDOS(
   ID_SERVICIO                INT IDENTITY(1,1),
   TIPO_SERVICIO              VARCHAR(40)  NOT NULL,         -- HOGAR, MOVIL, HOGAR/MOVIL.

   CONSTRAINT PK_SERVICIOS_ADQUIRIDOS PRIMARY KEY (ID_SERVICIO)
)
GO

-- TABLA CATALOGO
CREATE TABLE PLANES_SERVICIOS(
   ID_PLAN                    INT IDENTITY(1,1),
   PLANES                     VARCHAR(100),  -- EXISTIRIA UN REGISTRO PARA CADA PLAN, APPS_MOVIL, LLAMADAS_MOVIL ETC

   CONSTRAINT PK_PLAN PRIMARY KEY (ID_PLAN)
)
GO

CREATE TABLE CONTRATOS(
   ID_CONTRATO                INT IDENTITY(1,1),
   ID_EMPLEADO                INT,
   ID_CLIENTE                 INT,  
   FECHA_CREACION             DATE NOT NULL,
   VIGENCIA                   DATE NOT NULL,

   CONSTRAINT PK_CONTRATO PRIMARY KEY (ID_CONTRATO),
   CONSTRAINT FK_CONTRATO_EMPLEADO FOREIGN KEY (ID_EMPLEADO) REFERENCES EMPLEADOS(ID_EMPLEADO),
   CONSTRAINT FK_CONTRATO_SERVICIO_CLIENTES    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(ID_CLIENTE)
)
GO

CREATE TABLE PLANES_SERVICIOS_ADQUIRIDOS(
   ID_CONTRATO                INT,
   ID_SERVICIO                INT,   
   ID_PLAN                    INT,

   FECHA_CREACION             DATE,
   VIGENCIA                   DATE,

   CONSTRAINT PK_PLAN_ADQUIRIDO PRIMARY KEY (ID_CONTRATO, ID_SERVICIO, ID_PLAN),
   CONSTRAINT FK_PLAN_CONTRATO FOREIGN KEY (ID_CONTRATO) REFERENCES CONTRATOS(ID_CONTRATO),
   CONSTRAINT FK_PLAN_SERVICIO FOREIGN KEY (ID_SERVICIO) REFERENCES SERVICIOS_ADQUIRIDOS(ID_SERVICIO),
   CONSTRAINT FK_PLAN_PLANES FOREIGN KEY (ID_PLAN) REFERENCES PLANES_SERVICIOS(ID_PLAN)
)
GO

-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------

CREATE TABLE FORMAS_DE_PAGO(                
   ID_FORMA_PAGO              INT IDENTITY(1,1),  -- porque tipo y no forma lo mismo para metodo porque no forma debe ser nombrada de acuerdo al nombre de la tabla
   METODO_DE_PAGO             VARCHAR(50),         -- TRANSFERENCIA, EFECTIVO, MOVIL... TRANSEFERNCIA/EFECTIVO/MOVIL.

   CONSTRAINT PK_FORMA_DE_PAGO PRIMARY KEY (ID_FORMA_PAGO),
   CONSTRAINT UQ_METODO_PAGO UNIQUE (METODO_DE_PAGO)
)
GO

-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------

-- SELECT*FROM PAGOS_DE_SERVICIOS
CREATE TABLE PAGOS_DE_SERVICIOS(
   ID_PAGO                    INT IDENTITY(1,1),
   ID_AGENCIA                 INT,
   ID_CLIENTE                 INT,
   ID_FORMA_PAGO              INT, --- ESTO VA SERVIRTE PARA SABER QUE TE ESTA PAGANDO SI ES MOVIL O HOGAR NO NECESITAS DEFINIRLO EN LAS SIGUIENTES COLUMNAS
                                   --- SOLO BASTARIA CON UNA COLUMNA QUE SE LLAME SERVICIO O VALOR --- EL CLIENTE PAGA FACTURAS DONDE lo controlas
   SERVICIO_MOVIL             DECIMAL(10,2) NULL, -- VALOR DEL SERVICIO MOVIL
   SERVICIO_HOGAR             DECIMAL(10,2) NULL, -- VALOR DEL SERVICIO HOGAR

   CONSTRAINT        PK_PAGO  PRIMARY KEY (ID_PAGO),
   CONSTRAINT FK_PAGOS_SERVICIOS_CLIENTE FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(ID_CLIENTE),
   CONSTRAINT FK_TIPO_PAGO_DE_SERVICIOS FOREIGN KEY (ID_FORMA_PAGO) REFERENCES FORMAS_DE_PAGO(ID_FORMA_PAGO),
   CONSTRAINT FK_TIPO_PAGO_DE_SERVICIOS_AGENCIA FOREIGN KEY (ID_AGENCIA) REFERENCES AGENCIAS(ID_AGENCIA)
)
GO

-------------------------------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------------------------------

CREATE TABLE FECHA_DE_PAGO_CLIENTE(
   ID_FECHA                    INT IDENTITY(1,1), 
   ID_CLIENTE                  INT,
   ID_FORMA_PAGO               INT, 
   ID_PAGO                     INT,

   CONSTRAINT PK_FECHA_PAGO PRIMARY KEY (ID_FECHA),
   CONSTRAINT FK_FECHA_CANCELACION  FOREIGN KEY (ID_PAGO) REFERENCES PAGOS_DE_SERVICIOS(ID_PAGO),
   CONSTRAINT FK_SERVICIO_CLIENTE  FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(ID_CLIENTE),
   CONSTRAINT FK_FORMA_PAGO_FECHA_PAGO_CLIENTE FOREIGN KEY (ID_FORMA_PAGO) REFERENCES FORMAS_DE_PAGO(ID_FORMA_PAGO)
)
GO

-------------------------------------------------------------------------------------------------------------------
/*  CAMBIAR NOMBRE DE TABLA  */
-- EXEC sp_rename 'FACTURAS.FECHA_DE_PAGO', 'FEC_LIM_PAGO', 'COLUMN';

-------------------------------------------------------------------------------------------------------------------

CREATE TABLE FACTURAS( 
   ID_FACTURA                  INT IDENTITY(1,1),

   FACTURA_EMITIDA             DATE    NOT NULL,        -- FECHA EN QUE SE EMITE LA FACTURA PARA SER CANCELADA
   FEC_LIM_PAGO                DATE    NOT NULL,        -- FECHA LIMITE DE PAGO CON PRECIO NORMAL

   ESTADO_FACTURACION          VARCHAR(20) DEFAULT 'ACTIVO' NOT NULL,  
   
   CONSTRAINT PK_FACTURACION PRIMARY KEY (ID_FACTURA),
   CONSTRAINT CK_ESTADO_DE_FACTURACION CHECK (ESTADO_FACTURACION IN ('ACTIVO', 'INACTIVO', 'PENDIENTE'))
)
GO

CREATE TABLE DETALLE_FACTURAS(
   ID_FACTURA                  INT, 
   ID_SERVICIO                 INT,
   ID_PLAN                     INT,         
   
   FECHA_DE_CANCELACION        DATE NOT NULL,            -- FECHA DE PAGO

   CONSTRAINT PK_FACTURA PRIMARY KEY (ID_FACTURA, ID_SERVICIO, ID_PLAN),
   CONSTRAINT FK_DETALLE_FACTURA_NUM FOREIGN KEY (ID_FACTURA) REFERENCES FACTURAS(ID_FACTURA),
   CONSTRAINT FK_DETALLE_FACTURA_SERVICIO FOREIGN KEY (ID_SERVICIO) REFERENCES SERVICIOS_ADQUIRIDOS(ID_SERVICIO),
   CONSTRAINT FK_DETALLE_FACTURA_PLAN FOREIGN KEY (ID_PLAN)   REFERENCES PLANES_SERVICIOS(ID_PLAN)
)
GO

-------------------------------------------------------------------------------------------------------------------

CREATE TABLE PAGOS_FACTURA_CLIENTE(
   ID_PAGO                    INT IDENTITY(1,1), 
   ID_FACTURA                 INT,   
   ID_CLIENTE                 INT,
   ID_FECHA                   INT, 

   MONTO_DE_FACTURA           DECIMAL(10,2),
   ESTADO                     VARCHAR(50)   DEFAULT 'ACTIVO',

   CONSTRAINT PK_PAGO_FACTURA_CLIENTE PRIMARY KEY (ID_PAGO, ID_FACTURA, ID_CLIENTE, ID_FECHA),
   CONSTRAINT CK_ESTADO_DE_FACT CHECK (ESTADO IN ('ACTIVO', 'INACTIVO', 'PENDIENTE')),
   CONSTRAINT FK_PAGOS_FACT FOREIGN KEY (ID_PAGO) REFERENCES PAGOS_DE_SERVICIOS(ID_PAGO),
   CONSTRAINT FK_FACT_DETALLE FOREIGN KEY (ID_FACTURA) REFERENCES FACTURAS(ID_FACTURA),
   CONSTRAINT FK_FACT_CLIENTE FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(ID_CLIENTE),
   CONSTRAINT FK_FACTURA_FECHA FOREIGN KEY (ID_FECHA) REFERENCES FECHA_DE_PAGO_CLIENTE(ID_FECHA)
) 
GO

CREATE TABLE PAGOS_FACTURA_CLIENTE_DETALLE( 
  ID_PAGO                    INT,   
  ID_SERVICIO                INT,
  ID_PLAN                    INT,
  ID_FORMA_PAGO              INT,
 
  STATUS_PAGO                VARCHAR(50)   DEFAULT 'ACTIVO' NOT NULL,

  CONSTRAINT ESTADO_DE_FACT CHECK (STATUS_PAGO IN ('ACTIVO', 'INACTIVO', 'PENDIENTE')),
  CONSTRAINT FK_FACT_CLIENTE_DETALLE FOREIGN KEY (ID_PAGO) REFERENCES PAGOS_DE_SERVICIOS(ID_PAGO),
  CONSTRAINT FK_FACT_SERVICIO_DETALLE  FOREIGN KEY (ID_SERVICIO) REFERENCES SERVICIOS_ADQUIRIDOS(ID_SERVICIO),
  CONSTRAINT FK_FACT_FROMAS_DE_PAGO FOREIGN KEY (ID_FORMA_PAGO) REFERENCES FORMAS_DE_PAGO(ID_FORMA_PAGO)
) 
GO



--------------------------------------------------------------------------------------------------------------------------------

--  VISTAS Y TRIGGERS  --

--------------------------------------------------------------------------------------------------------------------------------
-- VISTA MODIFICADA --
     -- VISTA PARA MONTO DE PAGO TARDIO DE SERVICIO HOGAR Y MOVIL --
CREATE VIEW Factura_Servicios_Consumidos AS
SELECT
      nom_depto               AS Departamento,
      nom_agencia             AS Agencia,
      direccion               AS Ubicación,                  
      nombre                  AS Nombre_Cliente,
      apellido                AS Apellido_Cliente,
      cuenta_facturacion      AS Cuenta_Facturacion_Cliente,
      Dui                     AS Dui_Cliente,
      Telefono_Movil          AS Número_Cliente,
      correo_electronico      AS Correo_Cliente, 
      TIPO_SERVICIO           AS Servicio,
      planes                  AS Plan_Adquirido,
	  FACTURA_EMITIDA,
      FEC_LIM_PAGO           AS Fecha_De_Pago,
      DATEADD(day, DATEDIFF(day, FECHA_DE_CANCELACION, FEC_LIM_PAGO) * 0.98, FACTURA_EMITIDA) AS Monto_Pago_Tardio_Movil
FROM  Departamento a,
      Agencias b,
      Clientes c,
      Servicios_Adquiridos d,
      Planes_Servicios e,
      Planes_Servicios_Adquiridos f,
	  PAGOS_DE_SERVICIOS P,
      Contratos g,
      DETALLE_FACTURAS h,
      Facturas i,
      PAGOS_FACTURA_CLIENTE_DETALLE j,
      PAGOS_FACTURA_CLIENTE k
WHERE FEC_LIM_PAGO < GETDATE()
  AND c.saldo > 0
  AND a.id_depto    = b.id_depto
  AND c.id_cliente  = b.ID_AGENCIA
  AND c.id_cliente  = G.ID_CLIENTE
  AND e.id_plan     = f.id_plan
  AND d.id_servicio = f.id_servicio
  AND g.id_cliente  = c.id_cliente
  AND h.id_factura  = i.id_factura
  AND h.ID_FACTURA  = K.ID_FACTURA
  AND j.id_pago     = k.id_pago
  AND k.ID_PAGO     = J.ID_FORMA_PAGO
  AND j.id_servicio = D.ID_SERVICIO
  AND j.ID_PLAN     = E.ID_PLAN
GO 
-- SELECT*FROM  FACTURA_SERVICIOS_CONSUMIDOS
-- DROP VIEW   FACTURA_SERVICIOS_CONSUMIDOS

CREATE VIEW Vista_Monto_Pago_Tardio AS
SELECT
    d.nom_depto AS Departamento,
    a.nom_agencia AS Agencia,
    a.direccion AS Ubicación,
    c.nombre AS Nombre_Cliente,
    c.apellido AS Apellido_Cliente,
    c.cuenta_facturacion AS Cuenta_Facturacion_Cliente,
    c.dui AS Dui_Cliente,
    c.telefono_movil AS Número_Cliente,
    c.correo_electronico AS Correo_Cliente,
    sa.tipo_servicio AS Servicio,
    ps.planes AS Plan_Adquirido,
    i.factura_emitida,
    i.fec_lim_pago AS Fecha_De_Pago,
    DATEADD(day, DATEDIFF(day, df.fecha_de_cancelacion, i.fec_lim_pago) * 0.98, i.factura_emitida) AS Monto_Pago_Tardio
FROM
    departamento d
    INNER JOIN agencias a ON d.id_depto = a.id_depto
    INNER JOIN clientes c ON a.id_agencia = c.id_agencia
    INNER JOIN servicios_adquiridos sa ON c.id_cliente = sa.ID_SERVICIO
    INNER JOIN contratos co ON c.id_cliente = co.id_cliente
    INNER JOIN planes_servicios_adquiridos psa ON co.id_contrato = psa.id_contrato
    INNER JOIN planes_servicios ps ON psa.id_plan = ps.id_plan
    INNER JOIN detalle_facturas df ON sa.id_servicio = df.id_servicio AND ps.id_plan = df.id_plan
    INNER JOIN facturas i ON df.id_factura = i.id_factura
    INNER JOIN pagos_factura_cliente pfc ON i.id_factura = pfc.id_factura
    INNER JOIN pagos_factura_cliente_detalle pfcd ON pfc.id_pago = pfcd.id_pago
WHERE
    i.fec_lim_pago < GETDATE()
    AND c.saldo > 0
GO

CREATE VIEW Vista_Monto_Pago_Tardio AS
SELECT
   p.ID_PAGO,
   f.ID_FACTURA,
   f.FACTURA_EMITIDA,
   f.FEC_LIM_PAGO,
   d.FECHA_DE_CANCELACION,
   p.MONTO_DE_FACTURA,
   CASE
      WHEN d.FECHA_DE_CANCELACION > f.FEC_LIM_PAGO THEN
         p.MONTO_DE_FACTURA * 0.02  -- 2% de penalidad por pago tardío
      ELSE
         0.00  -- No hay penalidad por pago a tiempo
   END AS Monto_Pago_Tardio
FROM
   PAGOS_FACTURA_CLIENTE p
   INNER JOIN FACTURAS f ON p.ID_FACTURA = f.ID_FACTURA
   INNER JOIN DETALLE_FACTURAS d ON f.ID_FACTURA = d.ID_FACTURA
GO

-------------------------------------------------------------------------------
CREATE VIEW Vista_Monto_Pago_Tardio AS
SELECT
   p.ID_PAGO,
   f.ID_FACTURA,
   f.FACTURA_EMITIDA,
   f.FEC_LIM_PAGO,
   d.FECHA_DE_CANCELACION,
   p.MONTO_DE_FACTURA,
   ROUND(CASE
      WHEN d.FECHA_DE_CANCELACION > f.FEC_LIM_PAGO THEN
         p.MONTO_DE_FACTURA * 0.98  -- 2% de penalidad por pago tardío
      ELSE
         0  -- No hay penalidad por pago a tiempo
   END, 2) AS Monto_Pago_Tardio
FROM
   PAGOS_FACTURA_CLIENTE p
   INNER JOIN FACTURAS f ON p.ID_FACTURA = f.ID_FACTURA
   INNER JOIN DETALLE_FACTURAS d ON f.ID_FACTURA = d.ID_FACTURA
GO

CREATE VIEW CLIENTES_SERVICIOS_CONTRATADOS AS
SELECT
      DP.NOM_DEPTO            AS DEPARTAMENTO,
	  AG.NOM_AGENCIA          AS AGENCIA,
	  AG.DIRECCION            AS DIRECCIÓN,
      CL.NOMBRE               AS NOM_CLIENTE,
      CL.APELLIDO             AS APE_CLIENTE,
	  CL.CUENTA_FACTURACION,
	  CL.DUI,
	  CL.TELEFONO_MOVIL,
	  CL.CORREO_ELECTRONICO,
      SA.ID_SERVICIO,
      SA.TIPO_SERVICIO,
      CO.ID_CONTRATO,
      CO.FECHA_CREACION       AS CREACION_DE_CONTRATO,
      CO.VIGENCIA             AS VIGENCIA_DE_CONTRATO,
	  EM.ID_EMPLEADO,
	  EP.NOM_EMPLEADO,
	  EP.APE_EMPLEADO,
	  RL.ROLES                AS ROL_EMPLEADO,
	  PS.SERVICIO_MOVIL,
	  PS.SERVICIO_HOGAR
FROM
      CLIENTES                               AS CL
      LEFT JOIN CONTRATOS                    AS CO
          ON CL.ID_CLIENTE = CO.ID_CONTRATO
      LEFT JOIN SERVICIOS_ADQUIRIDOS         AS SA
          ON CO.ID_CONTRATO = SA.ID_SERVICIO
      LEFT JOIN CONTRATOS                    AS EM
          ON CO.ID_CONTRATO = EM.ID_CONTRATO
	  LEFT JOIN EMPLEADOS                    AS EP
          ON EP.ID_EMPLEADO = EM.ID_EMPLEADO
	 LEFT JOIN AGENCIAS                      AS AG
          ON EP.ID_EMPLEADO = AG.ID_AGENCIA
	 LEFT JOIN DEPARTAMENTO                  AS DP
          ON AG.ID_AGENCIA = DP.ID_DEPTO
	 LEFT JOIN ROLES                         AS RL
          ON EM.ID_EMPLEADO = RL.ID_ROL
	 LEFT JOIN PAGOS_DE_SERVICIOS            AS PS
	      ON CL.ID_CLIENTE = PS.ID_PAGO
GO
-- SELECT*FROM CLIENTES_SERVICIOS_CONTRATADOS
-- DROP VIEW   CLIENTES_SERVICIOS_CONTRATADOS


-- PLANES DE LOS CLIENTES
/*
select*from PLANES_SERVICIOS_ADQUIRIDOS
SELECT*FROM CLIENTES
select*from SERVICIOS_ADQUIRIDOS
select*from PLANES_SERVICIOS*/

CREATE VIEW vista_planes_adquiridos AS
SELECT
    B.NOMBRE,
    B.APELLIDO,
    A.ID_CONTRATO,
    A.FECHA_CREACION,
    A.VIGENCIA,
    C.ID_PLAN,
    C.PLANES
FROM PLANES_SERVICIOS_ADQUIRIDOS A
JOIN CONTRATOS D ON A.ID_CONTRATO = D.ID_CONTRATO
JOIN CLIENTES B ON D.ID_CLIENTE = B.ID_CLIENTE
JOIN PLANES_SERVICIOS C ON A.ID_PLAN = C.ID_PLAN;
GO
-- SELECT*FROM vista_planes_adquiridos
-- DROP VIEW   vista_planes_adquiridos


-- SELECT*FROM PLANES_SERVICIOS
CREATE VIEW vista_servicios_adquiridos AS
SELECT
    A.NOMBRE,
    A.APELLIDO,
    C.ID_CONTRATO,
    B.ID_SERVICIO,
    B.TIPO_SERVICIO AS SERVICIOS,
    E.ID_PLAN,
    E.PLANES,
    C.FECHA_CREACION AS FECHA_DE_ADICION,
    C.VIGENCIA
FROM
    CLIENTES AS A
    INNER JOIN CONTRATOS AS C ON C.ID_CLIENTE = A.ID_CLIENTE
    INNER JOIN PLANES_SERVICIOS_ADQUIRIDOS AS D ON D.ID_CONTRATO = C.ID_CONTRATO 
    INNER JOIN PLANES_SERVICIOS AS E ON E.ID_PLAN = D.ID_PLAN 
    INNER JOIN SERVICIOS_ADQUIRIDOS AS B ON B.ID_SERVICIO = D.ID_CONTRATO
GO
-- SELECT*FROM vista_servicios_adquiridos
-- DROP VIEW   vista_servicios_adquiridos

     -- TRIGGER PARA GENERAR CONTRASEÑAS AUTOMATICAS DE CLIENTES --
CREATE TRIGGER Acceso_Clientes ON Clientes
AFTER INSERT
AS
BEGIN
    DECLARE @Longitud INT = 8
    DECLARE @Caracteres VARCHAR(50) = 'ABCDEWXYZabcdefghijklmnopvwxyz0123456789!@#$%^&*()_+-=[]{}|;:,.<>?'
    DECLARE @ContrasenaGenerada VARCHAR(50)

    DECLARE @Nombre VARCHAR(50), @Apellido VARCHAR(50)

    DECLARE cursorClientes CURSOR FOR
        SELECT Nombre, Apellido FROM inserted

    OPEN cursorClientes
    FETCH NEXT FROM cursorClientes INTO @Nombre, @Apellido

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @ContrasenaGenerada = 
            SUBSTRING(@Caracteres, CAST(RAND() * LEN(@Caracteres) + 1 AS INT), 1) +
            SUBSTRING(@Caracteres, CAST(RAND() * LEN(@Caracteres) + 1 AS INT), 1) +
            SUBSTRING(@Caracteres, CAST(RAND() * LEN(@Caracteres) + 1 AS INT), 1) +
            SUBSTRING(@Caracteres, CAST(RAND() * LEN(@Caracteres) + 1 AS INT), 1) +
            SUBSTRING(@Caracteres, CAST(RAND() * LEN(@Caracteres) + 1 AS INT), 1) +
            SUBSTRING(@Caracteres, CAST(RAND() * LEN(@Caracteres) + 1 AS INT), 1) +
            SUBSTRING(@Caracteres, CAST(RAND() * LEN(@Caracteres) + 1 AS INT), 1) +
            SUBSTRING(@Caracteres, CAST(RAND() * LEN(@Caracteres) + 1 AS INT), 1)

        UPDATE Clientes
        SET Clave = @ContrasenaGenerada
        WHERE Nombre = @Nombre AND Apellido = @Apellido

        FETCH NEXT FROM cursorClientes INTO @Nombre, @Apellido
    END

    CLOSE cursorClientes
    DEALLOCATE cursorClientes
END
GO


/*  TRIGGER PARA ASIGNAR UNA AGENCIA A UN EMPLEADO  */
CREATE TRIGGER EMPLEADOS_AGENCIAS
ON EMPLEADOS
AFTER INSERT
AS
BEGIN
    DECLARE @MinID INT, @MaxID INT, @Range INT
    SELECT @MinID = 1, @MaxID = MAX(ID_AGENCIA) FROM AGENCIAS
    SET @Range = @MaxID - @MinID + 1

    UPDATE E
    SET E.ID_AGENCIA = A.ID_AGENCIA
    FROM EMPLEADOS E
    INNER JOIN (
        SELECT ID_EMPLEADO, (ROW_NUMBER() OVER (ORDER BY ID_EMPLEADO) - 1) % @Range + @MinID AS AssignedAgenciaID
        FROM INSERTED
    ) I ON E.ID_EMPLEADO = I.ID_EMPLEADO
    INNER JOIN (
        SELECT ID_AGENCIA, ROW_NUMBER() OVER (ORDER BY ID_AGENCIA) AS AgenciaRowNum
        FROM AGENCIAS
    ) A ON I.AssignedAgenciaID = A.AgenciaRowNum
END
GO

/*  TRIGGER PARA ASIGAR UNA AGENCIA A UN CLIENTE  */
CREATE TRIGGER CLIENTE_AGENCIA
ON CLIENTES
AFTER INSERT
AS
BEGIN
    DECLARE @IdAgencia INT
    SELECT @IdAgencia = MAX(ID_AGENCIA) FROM CLIENTES
    UPDATE CLIENTES SET ID_AGENCIA = @IdAgencia + 1 WHERE ID_CLIENTE IN (SELECT ID_CLIENTE FROM inserted)
END
GO

-- VISTA AGENCIAS
CREATE VIEW AGEN_DEPTO AS
SELECT
      A.ID_DEPTO,
      A.NOM_DEPTO AS DEPARTAMENTOS,
	  B.ID_AGENCIA,
	  B.NOM_AGENCIA  AS AGENCIA,
	  B.DIRECCION
FROM 
      DEPARTAMENTO AS A
LEFT JOIN AGENCIAS B 
ON   B.ID_AGENCIA = A.ID_DEPTO
GO
-- SELECT*FROM AGEN_DEPTO

-- CALCULAR EL MONTO TOTAL DE LA FACTURA --
CREATE TRIGGER CalculoMontoFactura
ON PAGOS_FACTURA_CLIENTE
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE PFC
    SET MONTO_DE_FACTURA = ISNULL((SELECT SUM(ISNULL(SERVICIO_MOVIL, 0) + ISNULL(SERVICIO_HOGAR, 0)) 
                                   FROM PAGOS_DE_SERVICIOS PDS
                                   WHERE PDS.ID_CLIENTE = PFC.ID_CLIENTE), 0)
    FROM PAGOS_FACTURA_CLIENTE PFC
    INNER JOIN inserted I ON PFC.ID_FACTURA = I.ID_FACTURA AND PFC.ID_CLIENTE = I.ID_CLIENTE AND PFC.ID_FECHA = I.ID_FECHA
END
GO


CREATE VIEW METODO_PAGO_CLIENTES AS
SELECT 
    PS.ID_CLIENTE,
    C.NOMBRE,
	C.APELLIDO,
	FP.ID_FORMA_PAGO,
    FP.METODO_DE_PAGO,
	PS.ID_PAGO,
    ISNULL(PS.SERVICIO_MOVIL,0) AS SERVICIO_MOVIL,
    ISNULL(PS.SERVICIO_HOGAR,0) AS SERVICIO_HOGAR,
    (ISNULL(PS.SERVICIO_MOVIL,0) + ISNULL(PS.SERVICIO_HOGAR,0)) AS TOTAL_PAGADO
FROM 
    PAGOS_DE_SERVICIOS PS
    JOIN CLIENTES C ON PS.ID_CLIENTE = C.ID_CLIENTE
    JOIN FORMAS_DE_PAGO FP ON PS.ID_FORMA_PAGO = FP.ID_FORMA_PAGO
GO
-- SELECT*FROM METODO_PAGO_CLIENTES
-- DROP VIEW   METODO_PAGO_CLIENTES

CREATE VIEW view_FACTURACION AS
SELECT 
    C.NOMBRE,
	C.APELLIDO,
    S.TIPO_SERVICIO AS SERVICIO,
	CT.ID_CONTRATO,
	DF.ID_SERVICIO,
	DF.ID_PLAN,
	FP.ID_FECHA,
    CT.FECHA_CREACION,
	CT.VIGENCIA,
    F.ID_FACTURA,
    F.FACTURA_EMITIDA AS FACTURA_EMITIDA,
    F.FECHA_DE_PAGO,
    F.ESTADO_FACTURACION,
    DF.FECHA_DE_CANCELACION
FROM 
    CLIENTES AS C
    INNER JOIN CONTRATOS AS CT ON C.ID_CLIENTE = CT.ID_CLIENTE
    INNER JOIN PLANES_SERVICIOS AS PS ON CT.ID_CONTRATO = PS.ID_PLAN
    INNER JOIN SERVICIOS_ADQUIRIDOS AS S ON CT.ID_CONTRATO = S.ID_SERVICIO
    INNER JOIN DETALLE_FACTURAS AS DF ON S.ID_SERVICIO = DF.ID_SERVICIO AND PS.ID_PLAN = DF.ID_PLAN
    INNER JOIN PAGOS_DE_SERVICIOS AS P ON S.ID_SERVICIO = P.ID_PAGO
    INNER JOIN FECHA_DE_PAGO_CLIENTE AS FP ON P.ID_PAGO = FP.ID_FECHA
    INNER JOIN FACTURAS AS F ON S.ID_SERVICIO = F.ID_FACTURA;
GO
-- SELECT*FROM view_FACTURACION
-- DROP VIEW   view_FACTURACION

CREATE VIEW VIEW_Pagos_Factura_Cliente AS 
SELECT PFC.ID_CLIENTE, CL.NOMBRE, CL.APELLIDO, PFC.ID_PAGO, PFC.ID_FACTURA, PFC.ID_FECHA, PFC.MONTO_DE_FACTURA, PFC.ESTADO AS ESTADO_FACTURA, 
       PFD.ID_SERVICIO, PFD.ID_PLAN, PFD.ID_FORMA_PAGO, PFD.STATUS_PAGO
FROM PAGOS_FACTURA_CLIENTE PFC
INNER JOIN PAGOS_FACTURA_CLIENTE_DETALLE PFD ON PFC.ID_CLIENTE = PFD.ID_PAGO
INNER JOIN CLIENTES CL ON PFC.ID_CLIENTE = CL.ID_CLIENTE
GO
-- SELECT*FROM VIEW_Pagos_Factura_Cliente
-- DROP VIEW   VIEW_Pagos_Factura_Cliente


CREATE VIEW FACTURAS_DETALLE AS
SELECT F.ID_FACTURA, F.FACTURA_EMITIDA, F.FECHA_DE_PAGO, F.ESTADO_FACTURACION,
       D.ID_SERVICIO, D.ID_PLAN, D.FECHA_DE_CANCELACION
FROM FACTURAS F
INNER JOIN DETALLE_FACTURAS D ON F.ID_FACTURA = D.ID_FACTURA
GO
-- SELECT*FROM FACTURAS_DETALLE
--------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------

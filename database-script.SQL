create database papeleria_system;

--Conect at Database
\c papeleria_system;

CREATE TABLE CLIENTE (
    id_Cliente serial NOT NULL,
    nombre varchar(40) NOT NULL,
    ap_Pat varchar(20) NOT NULL,
    ap_Mat varchar(20),
    razon_Social text,
    PRIMARY KEY(id_Cliente)
    );

CREATE TABLE CORREO (
    id_Correo serial NOT NULL,
    email varchar(80) NOT NULL,
    PRIMARY KEY(id_Correo)
    );

CREATE TABLE DOMICILIO (
    id_Domicilio serial NOT NULL,
    estado varchar(40) NOT NULL,
    colonia varchar(40) NOT NULL,
    calle varchar(40) NOT NULL,
    numero smallint NOT NULL,
    cp smallint NOT NULL,
    PRIMARY KEY(id_Domicilio)
    );

CREATE TABLE INVENTARIO (
    id_Inventario serial NOT NULL,
    id_Domicilio int NOT NULL,
    PRIMARY KEY (id_Inventario),
    FOREIGN KEY (id_Domicilio) REFERENCES DOMICILIO(id_Domicilio)
    );
    
CREATE TABLE PRODUCTO (
    id_Producto serial NOT NULL,
    precio_Venta money NOT NULL,
    tipo_Articulo varchar(5) NOT NULL,
    codigo_Barras varchar(30) NOT NULL,
    PRIMARY KEY (id_Producto)
    );

CREATE TABLE PROVEEDOR (
    id_Proveedor serial NOT NULL,
    nombre varchar(40) NOT NULL,
    ap_Pat varchar(20) NOT NULL,
    ap_Mat varchar(20),
    razon_Social text,
    PRIMARY KEY (id_Proveedor)
    );

CREATE TABLE TELEFONO (
    id_Telefono serial NOT NULL,
    num_Telefono varchar(10) NOT NULL,
    PRIMARY KEY (id_Telefono)
    );

CREATE TABLE VENTA (
    id_Venta serial NOT NULL,
    cant_Art_Total smallint NOT NULL,
    precio_Total money NOT NULL,
    fecha_Venta date NOT NULL,
    PRIMARY KEY (id_Venta)
    );

CREATE TABLE CORREO_CLIENTE (
    id_Correo_Cliente serial NOT NULL ,
    id_Cliente int NOT NULL,
    id_Correo int NOT NULL,
    PRIMARY KEY (id_Correo_Cliente),
    FOREIGN KEY (id_Cliente) REFERENCES CLIENTE(id_Cliente),
    FOREIGN KEY (id_Correo) REFERENCES CLIENTE(id_Correo)
);

CREATE TABLE INVENTARIO_PRODUCTO (
    id_Inventario_Producto serial NOT NULL ,
    id_Inventario int NOT NULL,
    id_Producto int NOT NULL,
    descripcion text NOT NULL,
    cantidad smallint NOT NULL,
    marca varchar(25) NOT NULL,
    precio_Compra money NOT NULL,
    PRIMARY KEY (id_Inventario_Producto),
    FOREIGN KEY (id_Inventario) REFERENCES CLIENTE(id_Inventario),
    FOREIGN KEY (id_Producto) REFERENCES CLIENTE(id_Producto)
);

CREATE TABLE PROVEE (
    id_Inventario_Producto serial NOT NULL ,
    id_Inventario int NOT NULL,
    id_Producto int NOT NULL,
    descripcion text NOT NULL,
    cantidad smallint NOT NULL,
    marca varchar(25) NOT NULL,
    precio_Compra money NOT NULL,
    PRIMARY KEY (id_Inventario_Producto),
    FOREIGN KEY (id_Inventario) REFERENCES CLIENTE(id_Inventario),
    FOREIGN KEY (id_Producto) REFERENCES CLIENTE(id_Producto)
);
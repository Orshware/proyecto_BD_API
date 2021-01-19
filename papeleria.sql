-- Database: PAPELERIA

-- DROP DATABASE "PAPELERIA";

CREATE DATABASE papeleria_system_test
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    --LC_COLLATE = 'Spanish_Mexico.1252'
    --LC_CTYPE = 'Spanish_Mexico.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

\c papeleria_system_test

	CREATE TABLE CLIENTE ( 
    id_Cliente serial NOT NULL,
    nombre varchar(40) NOT NULL,
    ap_Pat varchar(20) NOT NULL,
    ap_Mat varchar(20),
    razon_Social text,
    email varchar(80) NOT NULL,
    PRIMARY KEY(id_Cliente)
    );
	


SELECT *FROM CLIENTE;
	
INSERT INTO CLIENTE(nombre, ap_Pat, ap_Mat, razon_Social, email) VALUES('JUAN','PEREZ','MARTINEZ','PEMJ980126','JPMARTINEZ@YAHOO.COM');
INSERT INTO CLIENTE(nombre, ap_Pat, ap_Mat, razon_Social, email) VALUES('KARLA','SANCHEZ','HERNANDEZ','SAHK500130','VIRGENSITA-POP@HOTMAIL.COM');
INSERT INTO CLIENTE(nombre, ap_Pat, ap_Mat, razon_Social, email) VALUES('EMILIANO','CORTES','\N','CORE931220','NACHOLIBREX3_@GMAIL.COM');
INSERT INTO CLIENTE(nombre, ap_Pat, ap_Mat, razon_Social, email) VALUES('JUAN','PEREZ','MARTINEZ','PEMJ810803','JPMARTINEZ@YAHOO.COM');

 CREATE TABLE INVENTARIO (
    id_Inventario serial NOT NULL,
    nombre varchar(40) NOT NULL,
    --id_Domicilio_Inventario serial NOT NULL,
    PRIMARY KEY(id_Inventario)
    --FOREIGN KEY(id_Domicilio_Inventario) REFERENCES DOMICILIO_INVENTARIO(id_Domicilio_Inventario)
    );
	SELECT *FROM INVENTARIO;
	
INSERT INTO INVENTARIO(nombre) VALUES('CD de Mexico');
INSERT INTO INVENTARIO(nombre) VALUES('Puebla');
INSERT INTO INVENTARIO(nombre) VALUES('Monterrey');
INSERT INTO INVENTARIO(nombre) VALUES('Jalisco, Guadalajara');
INSERT INTO INVENTARIO(nombre) VALUES('Toluca');

    
CREATE TABLE PRODUCTO (
    codigo_Barras varchar(20) NOT NULL,
    precio_Venta money NOT NULL,
    tipo_Articulo varchar(5) NOT NULL,
	nombre varchar(40) NOT NULL,
    PRIMARY KEY (codigo_Barras)
    );
	
SELECT *FROM PRODUCTO;

INSERT INTO PRODUCTO(codigo_Barras, precio_Venta, tipo_Articulo, nombre) VALUES('0011HOJASB100CARTA',20,'PAPEL','HOJAS BLANCAS');
INSERT INTO PRODUCTO(codigo_Barras, precio_Venta, tipo_Articulo, nombre) VALUES('0012TIJERAS020',12,'PAPEL','TIJERAS');
INSERT INTO PRODUCTO(codigo_Barras, precio_Venta, tipo_Articulo, nombre) VALUES('00605PELUCHE5',100,'REGAL','PELUCHE');
INSERT INTO PRODUCTO(codigo_Barras, precio_Venta, tipo_Articulo, nombre) VALUES('00547ALAJEROMUSIC',180,'REGAL','ALAJERO');
INSERT INTO PRODUCTO(codigo_Barras, precio_Venta, tipo_Articulo, nombre) VALUES('0064CARTERA6DAMA3000',50,'REGAL','CARTERA');
INSERT INTO PRODUCTO(codigo_Barras, precio_Venta, tipo_Articulo, nombre) VALUES('05506RECARGAT50',50,'RECAR','RECARGA 50 TELCEL');
INSERT INTO PRODUCTO(codigo_Barras, precio_Venta, tipo_Articulo, nombre) VALUES('0506RECARGATELCEL100',100,'RECAR','RECARGA 100 TELCEL');
INSERT INTO PRODUCTO(codigo_Barras, precio_Venta, tipo_Articulo, nombre) VALUES('0550RECARGAMOV50',50,'RECAR','RECARGA 50 MOVISTAR');
INSERT INTO PRODUCTO(codigo_Barras, precio_Venta, tipo_Articulo, nombre) VALUES('05506RECARGAMOV10024',100,'RECAR','RECARGA 100 MOVISTAR');
INSERT INTO PRODUCTO(codigo_Barras, precio_Venta, tipo_Articulo, nombre) VALUES('498IMPRESIONCOLOR584',5,'PAPEL','IMPRESION A COLOR');


CREATE TABLE DOMICILIO ( 
    id_Domicilio serial NOT NULL,
    estado varchar(40) NOT NULL,
    colonia varchar(40) NOT NULL,
    calle varchar(40) NOT NULL,
    numero smallint NOT NULL,
    cp integer NOT NULL,
    PRIMARY KEY(id_Domicilio)
    );

SELECT *FROM DOMICILIO;

INSERT INTO DOMICILIO(estado, colonia, calle, numero, cp) VALUES('CHIHUAHUA','PEDREGAL',11,5,98755);
INSERT INTO DOMICILIO(estado, colonia, calle, numero, cp) VALUES('CDMX','LOMAS','ENCINO',9,55746);
INSERT INTO DOMICILIO(estado, colonia, calle, numero, cp) VALUES('VERACRUZ','CASITAS','TLATELOLCO',52,63214);
INSERT INTO DOMICILIO(estado, colonia, calle, numero, cp) VALUES('SONORA','CHAPULTEPEC','RIO',364,98745);
INSERT INTO DOMICILIO(estado, colonia, calle, numero, cp) VALUES('CDMX','POLANCO','AV.EJERCITO NACIONAL',884,11540);
INSERT INTO DOMICILIO(estado, colonia, calle, numero, cp) VALUES('CDMX','INDUSTRIAL VALLEJO','NORTE 59',846,02300);
INSERT INTO DOMICILIO(estado, colonia, calle, numero, cp) VALUES('CDMX','ESPAÑA','POLIGONO DE POCOMACO',14,15190);
INSERT INTO DOMICILIO(estado, colonia, calle, numero, cp) VALUES('CDMX','DOCTORES','CLAUDIO BERNARD',50,06720);
INSERT INTO DOMICILIO(estado, colonia, calle, numero, cp) VALUES('Puebla','POLANCO','AV.EJERCITO NACIONAL',884,654646);
INSERT INTO DOMICILIO(estado, colonia, calle, numero, cp) VALUES('Nuevo León','INDUSTRIAL VALLEJO','NORTE 59',846,02300);
INSERT INTO DOMICILIO(estado, colonia, calle, numero, cp) VALUES('Jalisco','ESPAÑA','POLIGONO DE POCOMACO',14,15190);
INSERT INTO DOMICILIO(estado, colonia, calle, numero, cp) VALUES('Edo. Mex.','DOCTORES','CLAUDIO BERNARD',50,06720);


CREATE TABLE PROVEEDOR ( 
    id_Proveedor serial NOT NULL,
    nombre varchar(40) NOT NULL,
    ap_Pat varchar(20) NOT NULL,
    ap_Mat varchar(20),
    razon_Social text,
    PRIMARY KEY (id_Proveedor)
    );
    
SELECT *FROM PROVEEDOR;
INSERT INTO PROVEEDOR(nombre, ap_Pat, ap_Mat, razon_Social) VALUES('JUAN','RENE','LINARES','Industrias Danpex S.A de C.V.');
INSERT INTO PROVEEDOR(nombre, ap_Pat, ap_Mat, razon_Social) VALUES('KARLA','FERNANDEZ','RUIZ','OFICIMUNDO S.A. de C.V.');
INSERT INTO PROVEEDOR(nombre, ap_Pat, ap_Mat, razon_Social) VALUES('REY','CORTINES','FRAGOSO','SANTIAGO Y CÍA ALMACENES COMERCIALES S.L.');


CREATE TABLE TELEFONO ( 
    id_Telefono serial NOT NULL,
    num_Telefono varchar(10) NOT NULL,
    PRIMARY KEY (id_Telefono)
    );
	
	SELECT *FROM TELEFONO;
INSERT INTO TELEFONO(num_Telefono) VALUES(5562782479);
INSERT INTO TELEFONO(num_Telefono) VALUES(5553686296);
INSERT INTO TELEFONO(num_Telefono) VALUES(5569687954);

CREATE SEQUENCE num_Venta
    START WITH 1
    INCREMENT BY 1;

CREATE TABLE VENTA ( 
    id_Venta TEXT NOT NULL DEFAULT 'VENT-'||nextval('num_Venta'::regclass)::TEXT,
    cant_Art_Total smallint NOT NULL,
    precio_Total money NOT NULL,
    fecha_Venta date NOT NULL,
    PRIMARY KEY (id_Venta)
    );
	
	SELECT *FROM VENTA;
	
INSERT INTO VENTA(cant_Art_Total, precio_Total, fecha_Venta) VALUES(2,32,'2021-01-15');
INSERT INTO VENTA(cant_Art_Total, precio_Total, fecha_Venta) VALUES(1,100,'2021-01-17');
INSERT INTO VENTA(cant_Art_Total, precio_Total, fecha_Venta) VALUES(2,62,'2021-01-17');
INSERT INTO VENTA(cant_Art_Total, precio_Total, fecha_Venta) VALUES(3,330,'2020-11-06');
						 
CREATE TABLE COMPRA( 
    id_Compra serial NOT NULL,
    id_Venta TEXT NOT NULL ,
    id_Cliente serial NOT NULL,
    codigo_Barras varchar(20) NOT NULL,
    PRIMARY KEY (id_Compra),
    FOREIGN KEY(id_Venta) REFERENCES VENTA(id_Venta),
    FOREIGN KEY(id_Cliente) REFERENCES CLIENTE(id_Cliente),
    FOREIGN KEY(codigo_Barras) REFERENCES PRODUCTO(codigo_Barras)
    );
	
INSERT INTO COMPRA(id_Venta, id_Cliente, codigo_Barras) VALUES('VENT-1', 1, '0011HOJASB100CARTA');
INSERT INTO COMPRA(id_Venta, id_Cliente, codigo_Barras) VALUES('VENT-2', 3, '00605PELUCHE5');
INSERT INTO COMPRA(id_Venta, id_Cliente, codigo_Barras) VALUES('VENT-3', 4, '00547ALAJEROMUSIC');
INSERT INTO COMPRA(id_Venta, id_Cliente, codigo_Barras) VALUES('VENT-4', 2, '00605PELUCHE5');
    
CREATE TABLE DOMICILIO_CLIENTE ( 
    id_Domicilio_Cliente serial NOT NULL,
    id_Cliente serial NOT NULL,
    id_Domicilio serial NOT NULL,
    PRIMARY KEY (id_Domicilio_Cliente),
    FOREIGN KEY(id_Cliente) REFERENCES CLIENTE(id_Cliente),
    FOREIGN KEY(id_Domicilio) REFERENCES DOMICILIO(id_Domicilio)
    );
	
SELECT * FROM DOMICILIO_CLIENTE;

INSERT INTO DOMICILIO_CLIENTE(id_Cliente, id_Domicilio) VALUES(1,1);
INSERT INTO DOMICILIO_CLIENTE(id_Cliente, id_Domicilio) VALUES(2,2);
INSERT INTO DOMICILIO_CLIENTE(id_Cliente, id_Domicilio) VALUES(3,3);
INSERT INTO DOMICILIO_CLIENTE(id_Cliente, id_Domicilio) VALUES(4,4);
							  
CREATE TABLE DOMICILIO_PROVEEDOR( 
    id_Domicilio_Proveedor serial NOT NULL,
    id_Proveedor serial NOT NULL,
    id_Domicilio serial NOT NULL,
    PRIMARY KEY (id_Domicilio_Proveedor),
    FOREIGN KEY(id_Proveedor) REFERENCES PROVEEDOR(id_Proveedor),
    FOREIGN KEY(id_Domicilio) REFERENCES DOMICILIO(id_Domicilio)
    );
    
	SELECT *FROM PROVEEDOR;
INSERT INTO DOMICILIO_PROVEEDOR(id_Proveedor, id_Domicilio) VALUES(1,5);
INSERT INTO DOMICILIO_PROVEEDOR(id_Proveedor, id_Domicilio) VALUES(2,6);
INSERT INTO DOMICILIO_PROVEEDOR(id_Proveedor, id_Domicilio) VALUES(3,7);
									  
	
CREATE TABLE DOMICILIO_INVENTARIO ( 
    id_Domicilio_Inventario serial NOT NULL,
    id_Inventario serial NOT NULL,
    id_Domicilio serial NOT NULL,
    PRIMARY KEY (id_Domicilio_Inventario),
    FOREIGN KEY (id_Inventario) REFERENCES INVENTARIO(id_Inventario),
    FOREIGN KEY (id_Domicilio) REFERENCES DOMICILIO(id_Domicilio)
    );
	
INSERT INTO DOMICILIO_INVENTARIO(id_Inventario, id_Domicilio) VALUES(1,8);
INSERT INTO DOMICILIO_INVENTARIO(id_Inventario, id_Domicilio) VALUES(2,9);
INSERT INTO DOMICILIO_INVENTARIO(id_Inventario, id_Domicilio) VALUES(3,10);
INSERT INTO DOMICILIO_INVENTARIO(id_Inventario, id_Domicilio) VALUES(4,11);
INSERT INTO DOMICILIO_INVENTARIO(id_Inventario, id_Domicilio) VALUES(5,12);



CREATE TABLE TELEFONO_PROVEEDOR (  
    id_Telefono_Proveedor serial NOT NULL,
    id_Telefono serial NOT NULL,
    id_Proveedor serial NOT NULL,
    PRIMARY KEY (id_Telefono_Proveedor),
    FOREIGN KEY (id_Telefono) REFERENCES TELEFONO(id_Telefono),
    FOREIGN KEY(id_Proveedor) REFERENCES PROVEEDOR(id_Proveedor)
    );
	
	SELECT *FROM TELEFONO_PROVEEDOR;
INSERT INTO TELEFONO_PROVEEDOR(id_Telefono, id_Proveedor) VALUES(1,1);
INSERT INTO TELEFONO_PROVEEDOR(id_Telefono, id_Proveedor) VALUES(2,2);
INSERT INTO TELEFONO_PROVEEDOR(id_Telefono, id_Proveedor) VALUES(3,3);
        
CREATE TABLE INVENTARIO_PRODUCTO ( 
    id_Inventario_Producto serial NOT NULL ,
    id_Inventario int NOT NULL,
    codigo_Barras varchar(20) NOT NULL,
    descripcion text NOT NULL,
    cantidad smallint NOT NULL,
    marca varchar(25) NOT NULL,
    PRIMARY KEY (id_Inventario_Producto),
    FOREIGN KEY (id_Inventario) REFERENCES INVENTARIO(id_Inventario),
    FOREIGN KEY(codigo_Barras) REFERENCES PRODUCTO(codigo_Barras)
    );
	
INSERT INTO INVENTARIO_PRODUCTO(id_Inventario, codigo_Barras, descripcion, cantidad, marca) VALUES(1,'0011HOJASB100CARTA','PAQUETE DE 100 HOJAS BLANCAS',10,'XEROX');
INSERT INTO INVENTARIO_PRODUCTO(id_Inventario, codigo_Barras, descripcion, cantidad, marca) VALUES(2,'0012TIJERAS020','TIJERAS DE USO ESCOLAR',20,'MAPED');
INSERT INTO INVENTARIO_PRODUCTO(id_Inventario, codigo_Barras, descripcion, cantidad, marca) VALUES(3,'00605PELUCHE5','OSO DE PELUCHE MEDIANO',15,'KAWAI');
INSERT INTO INVENTARIO_PRODUCTO(id_Inventario, codigo_Barras, descripcion, cantidad, marca) VALUES(4,'00547ALAJEROMUSIC','ALAJERO MUSICAL DE BAILARINA',50,'BRYNNL');
INSERT INTO INVENTARIO_PRODUCTO(id_Inventario, codigo_Barras, descripcion, cantidad, marca) VALUES(5,'0064CARTERA6DAMA3000','CARTA-MONEDERO DE DAMA NEGRO',12,'GAP');
	
CREATE TABLE PROVEE ( 
    id_Provee serial NOT NULL,
    id_Proveedor serial NOT NULL,
    codigo_Barras varchar(20) NOT NULL,
    cant_Compra smallint,
    precio_Compra money NOT NULL,
    fecha_Compra date,
    PRIMARY KEY (id_Provee),
    FOREIGN KEY (id_Proveedor) REFERENCES PROVEEDOR(id_Proveedor),
    FOREIGN KEY(codigo_Barras) REFERENCES PRODUCTO(codigo_Barras)
);

INSERT INTO PROVEE(id_Proveedor, codigo_Barras, cant_Compra, precio_Compra, fecha_Compra) VALUES(2,'0011HOJASB100CARTA',10,12,'2020-10-25');
INSERT INTO PROVEE(id_Proveedor, codigo_Barras, cant_Compra, precio_Compra, fecha_Compra) VALUES(1,'0012TIJERAS020',20,8.50,'2020-12-02');
INSERT INTO PROVEE(id_Proveedor, codigo_Barras, cant_Compra, precio_Compra, fecha_Compra) VALUES(3,'00605PELUCHE5',15,50,'2021-01-20');
INSERT INTO PROVEE(id_Proveedor, codigo_Barras, cant_Compra, precio_Compra, fecha_Compra) VALUES(3,'00547ALAJEROMUSIC',50,100,'2021-01-25');
INSERT INTO PROVEE(id_Proveedor, codigo_Barras, cant_Compra, precio_Compra, fecha_Compra) VALUES(3,'0064CARTERA6DAMA3000',12,20,'2020-11-25');

--
--1
--Al recibir el código de barras de un producto, regrese la utilidad.

--SELECT precio_venta - precio_compra as utilidad 
--FROM producto 
--JOIN provee 
--ON producto.codigo_barras = provee.codigo_barras 
--WHERE producto.codigo_barras = '0011HOJASB100CARTA';

--2 Se debe hacer con un Trigger
--Cada que haya la venta de un artı́culo, deberá decrementarse el stock por
--la cantidad vendida de ese artı́culo. Si el valor llega a cero, abortar la
--transacción. Si hay menos de 3, emitir un mensaje.


--3
--Dada una fecha, o una fecha de inicio y fecha de fin, regresar la cantidad
--total que se vendió en esa fecha/periodo.

--3 solo un dia
--WITH ventas_diarias(venta_total_diaria, fecha_venta) 
--AS 
--(
--    SELECT SUM(precio_total),fecha_venta 
--    FROM venta 
--    GROUP BY fecha_venta
--) 
--SELECT venta_total_diaria 
--FROM ventas_diarias 
--WHERE ventas_diarias.fecha_venta = '2021-01-17';

--3 periodo
--WITH ventas_diarias(venta_total_diaria, fecha_venta) 
--AS 
--(
--    SELECT SUM(precio_total),fecha_venta 
--    FROM venta 
--    GROUP BY fecha_venta
--) 
--SELECT SUM(venta_total_diaria) venta_total_periodo  
--FROM ventas_diarias 
--WHERE ventas_diarias.fecha_venta 
--BETWEEN '2021-01-14' AND '2021-01-18';

--4 
--Permitir obtener el nombre de aquellos productos de los cuales hay menos
--de 3 en stock.

--SELECT producto.nombre 
--FROM producto 
--JOIN inventario_producto 
--ON producto.codigo_barras = inventario_producto.codigo_barras 
--WHERE inventario_producto.cantidad < 3;

--5
--De manera automática se genere una vista que contenga información ne-
--cesaria para asemejarse a una factura de una compra.


--6
--Crear al menos, un ı́ndice, del tipo que se prefiera y donde se prefiera.
--Justificar el porqué de la elección en ambos aspectos.

DROP DATABASE IF EXISTS lab1;
CREATE DATABASE IF NOT EXISTS lab1;
USE lab1;

DROP TABLE IF EXISTS `Productos`;
CREATE TABLE IF NOT EXISTS `Productos`(
	`Producto_id`		BIGINT,
    `Marca`				VARCHAR(50),
    `Nombre`			VARCHAR(150),
    `Presentacion`		VARCHAR(50),
    `Categoria1`		VARCHAR(50) DEFAULT NULL,
    `Categoria2`		VARCHAR(50) DEFAULT NULL,
    `Categoria3`		VARCHAR(50) DEFAULT NULL,
    PRIMARY KEY 		(Producto_id, Nombre)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
    
LOAD DATA INFILE 'D:/Henry/Repos/Labs PI/PI01_DATA_ENGINEERING-main/Solucion Miguel/Datasets en CSV/producto.csv'
INTO TABLE `Productos` 
FIELDS TERMINATED BY ',' ENCLOSED BY'"' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES
(Producto_id, Marca, Nombre, Presentacion, @vCategoria1, @vCategoria2, @vCategoria3)
	SET Categoria1 = NULLIF(@vCategoria1,""),
		Categoria2 = NULLIF(@vCategoria2,""),  
		Categoria3 = NULLIF(@vCategoria3,"");
        

DROP TABLE IF EXISTS `Sucursales`;
CREATE TABLE IF NOT EXISTS `Sucursales`(
	`Sucursal_id`			VARCHAR(50),
    `Comercio_id`			INT,
    `Bandera_id`			INT,
    `Bandera_Descripcion`	VARCHAR(50),
    `Comercio_Razon_Social`	VARCHAR(100),
    `Provincia`				VARCHAR(50),
    `Localidad`				VARCHAR(50),
    `Direccion`				VARCHAR(100),
    `Latitud`				FLOAT,
    `Longitud`				FLOAT,
    `Nombre_sucursal`		VARCHAR(50),
    `Sucursal_tipo`			VARCHAR(50),
    PRIMARY KEY				(Sucursal_id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
    
    
LOAD DATA INFILE 'D:/Henry/Repos/Labs PI/PI01_DATA_ENGINEERING-main/Solucion Miguel/Datasets en CSV/sucursal.csv'
INTO TABLE `Sucursales` 
FIELDS TERMINATED BY ',' ENCLOSED BY'"' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;


DROP TABLE IF EXISTS `Precios`;
CREATE TABLE IF NOT EXISTS `Precios`(
	`Precio`			FLOAT DEFAULT NULL,
    `Producto_id`		BIGINT DEFAULT NULL,
    `Sucursal_id`		VARCHAR(50),
    `Fecha`				DATE DEFAULT NULL
    #FOREIGN KEY 		(Producto_id) REFERENCES Productos (Producto_id) ON DELETE CASCADE,
    #FOREIGN KEY 		(sucursal_id) REFERENCES Sucursales (sucursal_id) ON DELETE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
    
SET FOREIGN_KEY_CHECKS=1;    
LOAD DATA INFILE 'D:/Henry/Repos/Labs PI/PI01_DATA_ENGINEERING-main/Solucion Miguel/Datasets en CSV/precios_semana_20200518.csv'
INTO TABLE `Precios` 
FIELDS TERMINATED BY ',' ENCLOSED BY'' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES
(@vPrecio, @vProducto_id, Sucursal_id)
	SET Precio = NULLIF(@vPrecio,""),
		Producto_id = NULLIF(@vProducto_id,"");
UPDATE Precios SET Fecha = '2020-05-18' WHERE Fecha is NULL;

LOAD DATA INFILE 'D:/Henry/Repos/Labs PI/PI01_DATA_ENGINEERING-main/Solucion Miguel/Datasets en CSV/precios_semana_20200503.csv'
INTO TABLE `Precios` 
FIELDS TERMINATED BY ',' ENCLOSED BY'' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES
(@vPrecio, @vProducto_id, Sucursal_id)
	SET Precio = NULLIF(@vPrecio,""),
		Producto_id = NULLIF(@vProducto_id,"");
UPDATE Precios SET Fecha = '2020-05-03' WHERE Fecha is NULL;

LOAD DATA INFILE 'D:/Henry/Repos/Labs PI/PI01_DATA_ENGINEERING-main/Solucion Miguel/Datasets en CSV/precios_semana_20200413.csv'
INTO TABLE `Precios` 
FIELDS TERMINATED BY ',' ENCLOSED BY'' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES
(@vPrecio, @vProducto_id, Sucursal_id)
	SET Precio = NULLIF(@vPrecio,""),
		Producto_id = NULLIF(@vProducto_id,"");
UPDATE Precios SET Fecha = '2020-04-13' WHERE Fecha is NULL;

LOAD DATA INFILE 'D:/Henry/Repos/Labs PI/PI01_DATA_ENGINEERING-main/Solucion Miguel/Datasets en CSV/precios_20200419_20200419.csv'
INTO TABLE `Precios` 
FIELDS TERMINATED BY ',' ENCLOSED BY'' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES
(@vPrecio, @vProducto_id, Sucursal_id)
	SET Precio = NULLIF(@vPrecio,""),
		Producto_id = NULLIF(@vProducto_id,"");
UPDATE Precios SET Fecha = '2020-04-19' WHERE Fecha is NULL;

LOAD DATA INFILE 'D:/Henry/Repos/Labs PI/PI01_DATA_ENGINEERING-main/Solucion Miguel/Datasets en CSV/precios_20200426_20200426.csv'
INTO TABLE `Precios` 
FIELDS TERMINATED BY ',' ENCLOSED BY'' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES
(@vPrecio, @vProducto_id, Sucursal_id)
	SET Precio = NULLIF(@vPrecio,""),
		Producto_id = NULLIF(@vProducto_id,"");    
UPDATE Precios SET Fecha = '2020-04-26' WHERE Fecha is NULL;

UPDATE Precios SET sucursal_id = TRIM("\r" FROM  Sucursal_id);

Select AVG(precio) FROM precios WHERE sucursal_id = "9-1-688";


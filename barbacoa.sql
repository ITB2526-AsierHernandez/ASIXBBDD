USE provedor_suministro;

DROP TABLE IF EXISTS suministro;
DROP TABLE IF EXISTS proveedor;
DROP TABLE IF EXISTS tipo;

create table tipo (
	id varchar(2) primary key,
    nombre varchar(50)
);

CREATE TABLE proveedor (
    id INT auto_increment primary key,
    url_web varchar(1000),
    nombre varchar(20)
);

CREATE TABLE suministro (
	id INT auto_increment primary key,
    nombre varchar(50),
    precio decimal(10,2),
    cantidad int,
    halal boolean,
    id_tipo varchar(2),
    foreign key (id_tipo) references tipo(id),
    id_proveedor int,
    foreign key (id_proveedor) references proveedor(id)
);

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE suministro;
TRUNCATE TABLE proveedor;
TRUNCATE TABLE tipo;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO tipo (id, nombre) VALUES
('CA', 'Carne'),
('BE', 'Bebida'),
('EX', 'Extra');

INSERT INTO proveedor (url_web, nombre) VALUES
('https://qualittat.com/', 'Qualittat'),
('https://www.bonarea-online.com/categorias/carnes/13_240_010', 'Bonarea'),
('https://cecarn.com/?srsltid=AfmBOoq4RSZd6GHUrM4Affoj6fuDK7fgbV7DFveb3ZtKVI4IJdUTNa2b', 'Cecarn'),
('https://bebidasbarcelona.com/es/?utm_source=chatgpt.com', 'Bebidas Barcelona');

INSERT INTO suministro (nombre, precio, cantidad, halal, id_tipo, id_proveedor) VALUES
('Entrecot bajo de ternera ecológica', 24.90, 12, true, 'CA', 1),
('Entrecot alto de Angus Argentina', 28.50, 10, false, 'CA', 1),
('Entrecot Angus bajo Argentina', 26.90, 14, false, 'CA', 1),
('Ternera ecológica entrecot alto 30 días', 22.50, 11, true, 'CA', 1),
('Ternera ecológica entrecot bajo 30 días', 21.50, 13, true, 'CA', 1),
('Chuletón de vaca vieja madurado', 34.90, 8, false, 'CA', 1),
('Solomillo premium de ternera', 29.00, 9, false, 'CA', 1),
('Hamburguesa ecológica Vedella de Proximitat', 9.80, 20, true, 'CA', 1),
('Cortes argentinos de carne', 18.90, 16, true, 'CA', 1),
('Burguers eco de proximidad', 8.90, 24, true, 'EX', 1),
('Aceitunas verdes Qualittat', 5.50, 30, true, 'EX', 1),
('Pan artesano para barbacoa', 3.20, 35, true, 'EX', 1),
('Entrecot de ternera bonarea', 19.50, 18, false, 'CA', 2),
('Chuletas de cerdo bonarea', 12.00, 22, false, 'CA', 2),
('Pollo entero bonarea', 10.20, 25, true, 'CA', 2),
('Jamón serrano bonarea', 15.00, 14, false, 'CA', 2),
('Chorizo fresco bonarea', 7.80, 28, false, 'CA', 2),
('Lomo de cerdo bonarea', 13.20, 16, false, 'CA', 2),
('Costillas de cerdo bonarea', 11.90, 20, false, 'CA', 2),
('Alitas de pollo bonarea', 9.10, 24, true, 'CA', 2),
('Hamburguesa ternera 100% bonarea', 8.40, 30, false, 'CA', 2),
('Presa ibérica bonarea', 17.50, 12, false, 'CA', 2),
('Patatas fritas bonarea', 3.00, 40, true, 'EX', 2),
('Salsa barbacoa bonarea', 2.10, 45, true, 'EX', 2),
('Combo BBQ premium', 89.00, 5, false, 'CA', 3),
('Combo completo', 69.00, 7, false, 'CA', 3),
('Combo de Luxe 1', 114.44, 4, false, 'CA', 3),
('Combo de luxe 3', 231.00, 3, false, 'CA', 3),
('Combo estrella', 75.00, 6, false, 'CA', 3),
('Pack Chuletón', 55.00, 9, false, 'CA', 3),
('Pack familiar', 65.00, 8, false, 'CA', 3),
('Pack fit pro', 78.00, 6, false, 'CA', 3),
('Pack vacuno', 71.50, 10, false, 'CA', 3),
('Pack vuelta al cole', 55.00, 11, false, 'CA', 3),
('Cerveza fría Heineken', 2.30, 60, true, 'BE', 4),
('Cerveza San Miguel lata 33cl', 1.95, 72, true, 'BE', 4),
('Bombay Azul botella 700ml + 6 latas Schweppes', 29.90, 8, true, 'BE', 4),
('Vino Rioja crianza', 7.50, 20, false, 'BE', 4),
('Cava brut reserva', 8.90, 18, false, 'BE', 4),
('Vodka Absolut 70cl', 13.20, 15, false, 'BE', 4),
('Ginebra Hendrick''s 70cl', 24.50, 10, false, 'BE', 4),
('Ron Bacardí Carta Blanca 70cl', 14.40, 13, false, 'BE', 4),
('Agua mineral natural 1.5L', 1.10, 120, true, 'BE', 4),
('Refresco cola 2L', 2.20, 90, true, 'BE', 4),
('Zumo naranja natural 1L', 2.60, 55, true, 'BE', 4),
('Tónica premium 1L', 2.30, 50, true, 'BE', 4),
('Whisky Johnnie Walker Red', 19.90, 9, false, 'BE', 4),
('Cerveza artesanal 33cl', 3.10, 46, true, 'BE', 4),
('Vino blanco verdejo', 6.20, 22, false, 'BE', 4),
('Cerveza sin alcohol 33cl', 2.60, 34, true, 'BE', 4);

SELECT * FROM tipo;
SELECT * FROM proveedor;    
SELECT * FROM suministro;  
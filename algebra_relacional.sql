CREATE TABLE Cliente(
	nombre VARCHAR(25) PRIMARY KEY,
	direccion VARCHAR(250),
	telefono VARCHAR(10),
	Poblacion VARCHAR(50)
);
	
CREATE TABLE producto(
	cod_producto INT PRIMARY KEY,
	descripcion TEXT,
	precio DECIMAL(4,2)
);
	
CREATE TABLE venta(
	id_venta INT PRIMARY KEY,
	cod_producto INT,
	celular_cliente VARCHAR(10),
	cantidad int(9),
	FOREIGN KEY (cod_producto) REFERENCES producto(cod_producto),
	FOREIGN KEY (celular_cliente) REFERENCES cliente(telefono)
);
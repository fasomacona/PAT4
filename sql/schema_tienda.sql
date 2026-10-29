-- Esquema de práctica Tema 4 · Tienda
-- GAB-2402 · Prof. Fabián Soberanes Martín
-- Compatible con SQLite y PostgreSQL (con pequeños ajustes de tipos)

PRAGMA foreign_keys = ON;  -- SQLite

DROP TABLE IF EXISTS detalle_pedido;
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS categorias;
DROP TABLE IF EXISTS clientes;

CREATE TABLE categorias (
    categoria_id INTEGER PRIMARY KEY,
    nombre       TEXT NOT NULL UNIQUE
);

CREATE TABLE productos (
    producto_id  INTEGER PRIMARY KEY,
    categoria_id INTEGER REFERENCES categorias(categoria_id),
    nombre       TEXT NOT NULL,
    precio       REAL NOT NULL CHECK (precio >= 0),
    stock        INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0)
);

CREATE TABLE clientes (
    cliente_id INTEGER PRIMARY KEY,
    nombre     TEXT NOT NULL,
    email      TEXT UNIQUE,
    ciudad     TEXT
);

CREATE TABLE pedidos (
    pedido_id  INTEGER PRIMARY KEY,
    cliente_id INTEGER NOT NULL REFERENCES clientes(cliente_id),
    fecha      TEXT NOT NULL,  -- ISO date YYYY-MM-DD
    estado     TEXT NOT NULL DEFAULT 'pendiente',
    total      REAL NOT NULL DEFAULT 0 CHECK (total >= 0)
);

CREATE TABLE detalle_pedido (
    pedido_id   INTEGER NOT NULL REFERENCES pedidos(pedido_id) ON DELETE CASCADE,
    producto_id INTEGER NOT NULL REFERENCES productos(producto_id),
    cantidad    INTEGER NOT NULL CHECK (cantidad > 0),
    precio_unit REAL NOT NULL CHECK (precio_unit >= 0),
    PRIMARY KEY (pedido_id, producto_id)
);

CREATE INDEX idx_pedidos_cliente ON pedidos(cliente_id);
CREATE INDEX idx_pedidos_fecha ON pedidos(fecha);
CREATE INDEX idx_productos_categoria ON productos(categoria_id);
CREATE INDEX idx_detalle_producto ON detalle_pedido(producto_id);

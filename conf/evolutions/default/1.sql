# --- !Ups

create table "people" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "name" varchar not null,
  "last_name" varchar not null,
  "age" int not null
);

create table "clientes" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "nombre" varchar not null,
  "carnet" int not null,
  "id_asociacion" int not null
);

create table "asociacion" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "nombre" varchar not null
);

create table "cuenta" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "numero" int not null,
  "banco" varchar not null,
  "monto" int not null
);

create table "transacciones" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "fecha" varchar not null,
  "descripcion" varchar
);

create table "bancos" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "nombre" varchar not null,
  "tipo" varchar not null
);

create table "insumos" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "nombre" varchar not null,
  "costo" int,
  "porcentage" int,
  "descripcion" varchar,
  "unidad" bigint,
  "currentAmount" int
);

create table "productores" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "nombre" varchar not null,
  "carnet" int not null,
  "telefono" int,
  "direccion" varchar,
  "cuenta" bigint,
  "asociacion" bigint
);


create table "proveedores" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "nombre" varchar not null,
  "telefono" int,
  "direccion" varchar,
  "contacto" varchar,
  "cuenta" bigint
);

create table "reportes" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "monto" int not null,
  "cuenta" int not null,
  "cliente" int not null
);

create table "veterinarios" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "nombre" varchar not null,
  "carnet" int not null,
  "telefono" int,
  "direccion" varchar,
  "sueldo" int,
  "type" varchar
);

create table "productRequest" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "date" varchar,
  "veterinario" bigint,
  "storekeeper" bigint,
  "status" varchar,
  "detail" varchar
);

create table "requestRow" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "requestId" bigint,
  "productId" bigint,
  "productorId" bigint,
  "quantity" int,
  "precio" int,
  "paid" int,
  "cuota" int,
  "status" varchar
);

create table "product_invs" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "productId" bigint,
  "proveedorId" bigint,
  "amount" int,
  "amountLeft" int,
  "cost_unit" int,
  "total_cost" int
);

create table "product" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "nombre" varchar not null,
  "costo" int,
  "porcentage" int,
  "descripcion" varchar,
  "unidad" bigint
);

create table "productor" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "nombre" varchar not null,
  "carnet" int not null,
  "id_asociacion" bigint
);

create table "debts" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "total" int,
  "paid" int,
  "status" varchar,
  "producto_id" bigint
);

create table "discountReport" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "startDate" varchar,
  "endDate" varchar,
  "status" varchar,
  "total" int,
  "user_id" bigint
);

create table "discountDetail" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "discountReport" bigint,
  "requestRow" bigint,
  "productorId" bigint,
  "status" varchar,
  "discount" Int
);

# --- !Downs
drop table "people" if exists;
drop table "clientes" if exists;
drop table "asociacion" if exists;
drop table "cuenta" if exists;
drop table "transaccion" if exists;
drop table "productores" if exists;
drop table "proveedores" if exists;
drop table "reportes" if exists;
drop table "bancos" if exists;
drop table "insumos" if exists;
drop table "veterinarios" if exists;
drop table "product_invs" if exists;
drop table "discountReport" if exists;
drop table "discountDetail" if exists;
drop table "requestRow" if exists;
drop table "productRequest" if exists;

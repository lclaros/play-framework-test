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
  "monto" int not null,
  "cuenta" int not null,
  "cliente" int not null
);

create table "bancos" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "monto" int not null,
  "cuenta" int not null,
  "cliente" int not null
);

create table "insumos" (
  "id" bigint generated by default as identity(start with 1) not null primary key,
  "nombre" varchar not null,
  "costo" int,
  "porcentage" int,
  "descripcion" varchar,
  "unidad" bigint
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
  "sueldo" int
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

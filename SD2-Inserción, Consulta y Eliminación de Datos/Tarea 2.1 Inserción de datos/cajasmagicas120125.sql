/*
 Navicat Premium Data Transfer

 Source Server         : PostgreSQL
 Source Server Type    : PostgreSQL
 Source Server Version : 170002 (170002)
 Source Host           : localhost:5432
 Source Catalog        : cajasmagicas
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 170002 (170002)
 File Encoding         : 65001

 Date: 12/01/2025 22:01:27
*/


-- ----------------------------
-- Sequence structure for artesanos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."artesanos_id_seq";
CREATE SEQUENCE "public"."artesanos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cajas_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cajas_id_seq";
CREATE SEQUENCE "public"."cajas_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cajas_materiales_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cajas_materiales_id_seq";
CREATE SEQUENCE "public"."cajas_materiales_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for calendario_produccion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."calendario_produccion_id_seq";
CREATE SEQUENCE "public"."calendario_produccion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for clientes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."clientes_id_seq";
CREATE SEQUENCE "public"."clientes_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for contenido_caja_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."contenido_caja_id_seq";
CREATE SEQUENCE "public"."contenido_caja_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for disenos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."disenos_id_seq";
CREATE SEQUENCE "public"."disenos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for facturas_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."facturas_id_seq";
CREATE SEQUENCE "public"."facturas_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for marketing_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."marketing_id_seq";
CREATE SEQUENCE "public"."marketing_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for materiales_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."materiales_id_seq";
CREATE SEQUENCE "public"."materiales_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pagos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pagos_id_seq";
CREATE SEQUENCE "public"."pagos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pedidos_artesanos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pedidos_artesanos_id_seq";
CREATE SEQUENCE "public"."pedidos_artesanos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pedidos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pedidos_id_seq";
CREATE SEQUENCE "public"."pedidos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for presupuesto_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."presupuesto_id_seq";
CREATE SEQUENCE "public"."presupuesto_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for proveedores_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."proveedores_id_seq";
CREATE SEQUENCE "public"."proveedores_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for redes_sociales_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."redes_sociales_id_seq";
CREATE SEQUENCE "public"."redes_sociales_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tipo_contenido_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tipo_contenido_id_seq";
CREATE SEQUENCE "public"."tipo_contenido_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for artesanos
-- ----------------------------
DROP TABLE IF EXISTS "public"."artesanos";
CREATE TABLE "public"."artesanos" (
  "id" int4 NOT NULL DEFAULT nextval('artesanos_id_seq'::regclass),
  "nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "especialidad" varchar(255) COLLATE "pg_catalog"."default",
  "estatus" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_contratacion" date NOT NULL
)
;

-- ----------------------------
-- Records of artesanos
-- ----------------------------
INSERT INTO "public"."artesanos" VALUES (1, 'Luna Lovegood', 'Encantamientos', 'Activo', '2024-01-15');
INSERT INTO "public"."artesanos" VALUES (2, 'Severus Snape', 'Pociones', 'Activo', '2024-02-01');
INSERT INTO "public"."artesanos" VALUES (3, 'Minerva McGonagall', 'Transformaciones', 'Activo', '2024-03-10');

-- ----------------------------
-- Table structure for cajas
-- ----------------------------
DROP TABLE IF EXISTS "public"."cajas";
CREATE TABLE "public"."cajas" (
  "id" int4 NOT NULL DEFAULT nextval('cajas_id_seq'::regclass),
  "nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" text COLLATE "pg_catalog"."default",
  "caracteristicas" text COLLATE "pg_catalog"."default",
  "precio" numeric(10,2) NOT NULL,
  "id_pedido" int4,
  "id_diseño" int4,
  "control_calidad" bool,
  "mensaje_personalizado" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of cajas
-- ----------------------------
INSERT INTO "public"."cajas" VALUES (1, 'Caja Encantada de Harry', 'Caja mágica con encantamientos', 'Brilla en la oscuridad', 100.00, 1, 1, 't', '¡Feliz cumpleaños, Harry!');
INSERT INTO "public"."cajas" VALUES (2, 'Caja de Pociones de Hermione', 'Caja con compartimentos para pociones', 'Resistente a derrames', 150.00, 2, 2, 't', 'Para la bruja más brillante');
INSERT INTO "public"."cajas" VALUES (3, 'Caja Transformadora de Ron', 'Caja que cambia de forma', 'Se adapta al contenido', 120.00, 3, 3, 't', 'Weasley es nuestro rey');

-- ----------------------------
-- Table structure for cajas_materiales
-- ----------------------------
DROP TABLE IF EXISTS "public"."cajas_materiales";
CREATE TABLE "public"."cajas_materiales" (
  "id" int4 NOT NULL DEFAULT nextval('cajas_materiales_id_seq'::regclass),
  "id_caja" int4,
  "id_material" int4,
  "cantidad_usada" int4 NOT NULL
)
;

-- ----------------------------
-- Records of cajas_materiales
-- ----------------------------
INSERT INTO "public"."cajas_materiales" VALUES (1, 1, 1, 2);
INSERT INTO "public"."cajas_materiales" VALUES (2, 1, 3, 5);
INSERT INTO "public"."cajas_materiales" VALUES (3, 2, 2, 1);
INSERT INTO "public"."cajas_materiales" VALUES (4, 2, 3, 3);
INSERT INTO "public"."cajas_materiales" VALUES (5, 3, 1, 1);
INSERT INTO "public"."cajas_materiales" VALUES (6, 3, 2, 1);
INSERT INTO "public"."cajas_materiales" VALUES (7, 3, 3, 2);

-- ----------------------------
-- Table structure for calendario_produccion
-- ----------------------------
DROP TABLE IF EXISTS "public"."calendario_produccion";
CREATE TABLE "public"."calendario_produccion" (
  "id" int4 NOT NULL DEFAULT nextval('calendario_produccion_id_seq'::regclass),
  "tarea" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_inicio" date NOT NULL,
  "fecha_limite" date NOT NULL,
  "estado" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "id_pedido" int4 NOT NULL
)
;

-- ----------------------------
-- Records of calendario_produccion
-- ----------------------------
INSERT INTO "public"."calendario_produccion" VALUES (1, 'Elaboración Caja Encantada', '2025-01-02', '2025-01-09', 'Completado', 1);
INSERT INTO "public"."calendario_produccion" VALUES (2, 'Preparación Caja de Pociones', '2025-01-06', '2025-01-19', 'En Proceso', 2);
INSERT INTO "public"."calendario_produccion" VALUES (3, 'Transformación Caja Mágica', '2025-01-09', '2025-01-17', 'Completado', 3);

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS "public"."clientes";
CREATE TABLE "public"."clientes" (
  "id" int4 NOT NULL DEFAULT nextval('clientes_id_seq'::regclass),
  "nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "correo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "telefono" varchar(20) COLLATE "pg_catalog"."default",
  "direccion" text COLLATE "pg_catalog"."default",
  "fecha_registro" date NOT NULL,
  "estatus" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO "public"."clientes" VALUES (1, 'Harry Potter', 'harry@hogwarts.edu', '555-1234', 'Privet Drive 4', '2024-04-01', 'Activo');
INSERT INTO "public"."clientes" VALUES (2, 'Hermione Granger', 'hermione@magicmail.com', '555-5678', 'Gryffindor Tower', '2024-04-15', 'Activo');
INSERT INTO "public"."clientes" VALUES (3, 'Ron Weasley', 'ron@burrow.net', '555-9012', 'The Burrow', '2024-05-01', 'Activo');

-- ----------------------------
-- Table structure for contenido_caja
-- ----------------------------
DROP TABLE IF EXISTS "public"."contenido_caja";
CREATE TABLE "public"."contenido_caja" (
  "id" int4 NOT NULL DEFAULT nextval('contenido_caja_id_seq'::regclass),
  "id_caja" int4,
  "id_tipocontenido" int4,
  "cantidad" int4 NOT NULL
)
;

-- ----------------------------
-- Records of contenido_caja
-- ----------------------------
INSERT INTO "public"."contenido_caja" VALUES (1, 1, 1, 1);
INSERT INTO "public"."contenido_caja" VALUES (2, 2, 2, 3);
INSERT INTO "public"."contenido_caja" VALUES (3, 3, 3, 2);

-- ----------------------------
-- Table structure for disenos
-- ----------------------------
DROP TABLE IF EXISTS "public"."disenos";
CREATE TABLE "public"."disenos" (
  "id" int4 NOT NULL DEFAULT nextval('disenos_id_seq'::regclass),
  "nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" text COLLATE "pg_catalog"."default",
  "colores" text COLLATE "pg_catalog"."default",
  "tipo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "prototipo_virtual" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of disenos
-- ----------------------------
INSERT INTO "public"."disenos" VALUES (1, 'Caja Encantada', 'Diseño con estrellas y lunas', 'Azul, Plateado', 'Mágico', 'prototipo_encantada.jpg');
INSERT INTO "public"."disenos" VALUES (2, 'Poción Misteriosa', 'Diseño con burbujas y vapores', 'Verde, Morado', 'Alquímico', 'prototipo_pocion.jpg');
INSERT INTO "public"."disenos" VALUES (3, 'Transformación Mágica', 'Diseño con patrones cambiantes', 'Rojo, Dorado', 'Metamórfico', 'prototipo_transformacion.jpg');

-- ----------------------------
-- Table structure for facturas
-- ----------------------------
DROP TABLE IF EXISTS "public"."facturas";
CREATE TABLE "public"."facturas" (
  "id" int4 NOT NULL DEFAULT nextval('facturas_id_seq'::regclass),
  "id_pedido" int4,
  "fecha_emision" date NOT NULL,
  "monto_total" numeric(10,2) NOT NULL,
  "estado" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of facturas
-- ----------------------------
INSERT INTO "public"."facturas" VALUES (1, 1, '2025-01-10', 100.00, 'Pagada');
INSERT INTO "public"."facturas" VALUES (2, 2, '2025-01-20', 150.00, 'Pendiente');
INSERT INTO "public"."facturas" VALUES (3, 3, '2025-01-18', 120.00, 'Pagada');

-- ----------------------------
-- Table structure for marketing
-- ----------------------------
DROP TABLE IF EXISTS "public"."marketing";
CREATE TABLE "public"."marketing" (
  "id" int4 NOT NULL DEFAULT nextval('marketing_id_seq'::regclass),
  "id_diseño" int4,
  "estrategia" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_inicio" date NOT NULL,
  "fecha_fin" date,
  "plataforma" varchar(255) COLLATE "pg_catalog"."default",
  "resultados" json
)
;

-- ----------------------------
-- Records of marketing
-- ----------------------------
INSERT INTO "public"."marketing" VALUES (1, 1, 'Campaña de Encantamientos', '2025-01-01', '2025-03-31', 'El Profeta Mágico', '{"impresiones": 10000, "conversiones": 50}');
INSERT INTO "public"."marketing" VALUES (2, 2, 'Muestras de Pociones', '2025-02-01', '2025-04-30', 'Hogsmeade', '{"visitantes": 500, "ventas": 30}');
INSERT INTO "public"."marketing" VALUES (3, 3, 'Demostraciones de Transformación', '2025-03-01', '2025-05-31', 'Callejón Diagon', '{"espectadores": 1000, "pedidos": 40}');

-- ----------------------------
-- Table structure for materiales
-- ----------------------------
DROP TABLE IF EXISTS "public"."materiales";
CREATE TABLE "public"."materiales" (
  "id" int4 NOT NULL DEFAULT nextval('materiales_id_seq'::regclass),
  "nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "origen" varchar(255) COLLATE "pg_catalog"."default",
  "propiedades" text COLLATE "pg_catalog"."default",
  "color" varchar(50) COLLATE "pg_catalog"."default",
  "cantidad_stock" int4 NOT NULL,
  "umbral_reposicion" int4 NOT NULL,
  "precio_unitario" numeric(10,2) NOT NULL,
  "estatus" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "id_proveedor" int4,
  "fecha_suministro" date
)
;

-- ----------------------------
-- Records of materiales
-- ----------------------------
INSERT INTO "public"."materiales" VALUES (1, 'Madera de Sauce Boxeador', 'Bosque Prohibido', 'Resistente a hechizos', 'Marrón', 100, 20, 10.00, 'Disponible', 1, '2024-12-15');
INSERT INTO "public"."materiales" VALUES (2, 'Escamas de Dragón', 'Rumania', 'Ignífugo', 'Rojo', 50, 10, 30.00, 'Disponible', 2, '2024-12-20');
INSERT INTO "public"."materiales" VALUES (3, 'Polvo de Hada', 'Bosque Encantado', 'Brillo mágico', 'Plateado', 200, 50, 5.00, 'Disponible', 3, '2024-12-25');

-- ----------------------------
-- Table structure for pagos
-- ----------------------------
DROP TABLE IF EXISTS "public"."pagos";
CREATE TABLE "public"."pagos" (
  "id" int4 NOT NULL DEFAULT nextval('pagos_id_seq'::regclass),
  "id_pedido" int4,
  "fecha_pago" date NOT NULL,
  "monto" numeric(10,2) NOT NULL,
  "metodo" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "estado" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "referencia_pago" varchar(255) COLLATE "pg_catalog"."default",
  "comprobante_pago" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of pagos
-- ----------------------------
INSERT INTO "public"."pagos" VALUES (1, 1, '2025-01-10', 100.00, 'Galeones', 'Completado', 'PAG001', 'comprobante_001.pdf');
INSERT INTO "public"."pagos" VALUES (2, 3, '2025-01-18', 120.00, 'Transferencia Gringotts', 'Completado', 'PAG002', 'comprobante_002.pdf');

-- ----------------------------
-- Table structure for pedidos
-- ----------------------------
DROP TABLE IF EXISTS "public"."pedidos";
CREATE TABLE "public"."pedidos" (
  "id" int4 NOT NULL DEFAULT nextval('pedidos_id_seq'::regclass),
  "id_cliente" int4 NOT NULL,
  "formato_pedido" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_pedido" date NOT NULL,
  "estado" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_entrega" date,
  "id_diseño" int4,
  "prototipo_3d" text COLLATE "pg_catalog"."default",
  "seguimiento_envio" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of pedidos
-- ----------------------------
INSERT INTO "public"."pedidos" VALUES (1, 1, 'Online', '2025-01-01', 'Entregado', '2025-01-10', 1, 'modelo_3d_1.obj', 'Entregado por lechuza');
INSERT INTO "public"."pedidos" VALUES (2, 2, 'Presencial', '2025-01-05', 'En proceso', '2025-01-20', 2, 'modelo_3d_2.obj', 'En preparación');
INSERT INTO "public"."pedidos" VALUES (3, 3, 'Online', '2025-01-08', 'Pagado', '2025-01-18', 3, 'modelo_3d_3.obj', 'Enviado por red Flu');

-- ----------------------------
-- Table structure for pedidos_artesanos
-- ----------------------------
DROP TABLE IF EXISTS "public"."pedidos_artesanos";
CREATE TABLE "public"."pedidos_artesanos" (
  "id" int4 NOT NULL DEFAULT nextval('pedidos_artesanos_id_seq'::regclass),
  "id_pedido" int4,
  "id_artesano" int4,
  "rol" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_asignacion" date NOT NULL
)
;

-- ----------------------------
-- Records of pedidos_artesanos
-- ----------------------------
INSERT INTO "public"."pedidos_artesanos" VALUES (1, 1, 1, 'Encantador Principal', '2025-01-02');
INSERT INTO "public"."pedidos_artesanos" VALUES (2, 2, 2, 'Maestro de Pociones', '2025-01-06');
INSERT INTO "public"."pedidos_artesanos" VALUES (3, 3, 3, 'Transformadora Jefe', '2025-01-09');

-- ----------------------------
-- Table structure for presupuesto
-- ----------------------------
DROP TABLE IF EXISTS "public"."presupuesto";
CREATE TABLE "public"."presupuesto" (
  "id" int4 NOT NULL DEFAULT nextval('presupuesto_id_seq'::regclass),
  "id_pedido" int4,
  "total" numeric(10,2) NOT NULL
)
;

-- ----------------------------
-- Records of presupuesto
-- ----------------------------
INSERT INTO "public"."presupuesto" VALUES (1, 1, 100.00);
INSERT INTO "public"."presupuesto" VALUES (2, 2, 150.00);
INSERT INTO "public"."presupuesto" VALUES (3, 3, 120.00);

-- ----------------------------
-- Table structure for proveedores
-- ----------------------------
DROP TABLE IF EXISTS "public"."proveedores";
CREATE TABLE "public"."proveedores" (
  "id" int4 NOT NULL DEFAULT nextval('proveedores_id_seq'::regclass),
  "nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "contacto" varchar(255) COLLATE "pg_catalog"."default",
  "especialidad" varchar(255) COLLATE "pg_catalog"."default",
  "acuerdos_comerciales" text COLLATE "pg_catalog"."default",
  "estatus" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of proveedores
-- ----------------------------
INSERT INTO "public"."proveedores" VALUES (1, 'Ollivander''s', 'Sr. Ollivander', 'Maderas Mágicas', 'Descuento por volumen', 'Activo');
INSERT INTO "public"."proveedores" VALUES (2, 'Gringotts Trading Co.', 'Griphook', 'Materiales Raros', 'Pago en galeones', 'Activo');
INSERT INTO "public"."proveedores" VALUES (3, 'Weasleys'' Wizard Wheezes', 'George Weasley', 'Ingredientes Mágicos', 'Exclusividad en bromas', 'Activo');

-- ----------------------------
-- Table structure for redes_sociales
-- ----------------------------
DROP TABLE IF EXISTS "public"."redes_sociales";
CREATE TABLE "public"."redes_sociales" (
  "id" int4 NOT NULL DEFAULT nextval('redes_sociales_id_seq'::regclass),
  "id_marketing" int4,
  "plataforma" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "historia_cliente" text COLLATE "pg_catalog"."default",
  "engagement" int4
)
;

-- ----------------------------
-- Records of redes_sociales
-- ----------------------------
INSERT INTO "public"."redes_sociales" VALUES (1, 1, 'WizardGram', 'Harry encantado con su caja mágica', 5000);
INSERT INTO "public"."redes_sociales" VALUES (2, 2, 'PotionTok', 'Hermione recomienda nuestras cajas de pociones', 7500);
INSERT INTO "public"."redes_sociales" VALUES (3, 3, 'Transfiguritter', 'Ron sorprendido por la caja transformadora', 6000);

-- ----------------------------
-- Table structure for tipo_contenido
-- ----------------------------
DROP TABLE IF EXISTS "public"."tipo_contenido";
CREATE TABLE "public"."tipo_contenido" (
  "id" int4 NOT NULL DEFAULT nextval('tipo_contenido_id_seq'::regclass),
  "descripcion" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of tipo_contenido
-- ----------------------------
INSERT INTO "public"."tipo_contenido" VALUES (1, 'Hechizo de Levitación');
INSERT INTO "public"."tipo_contenido" VALUES (2, 'Poción de Amor');
INSERT INTO "public"."tipo_contenido" VALUES (3, 'Encantamiento de Invisibilidad');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."artesanos_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."cajas_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."cajas_materiales_id_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."calendario_produccion_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."clientes_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."contenido_caja_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."disenos_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."facturas_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."marketing_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."materiales_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."pagos_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."pedidos_artesanos_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."pedidos_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."presupuesto_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."proveedores_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."redes_sociales_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."tipo_contenido_id_seq"', 3, true);

-- ----------------------------
-- Primary Key structure for table artesanos
-- ----------------------------
ALTER TABLE "public"."artesanos" ADD CONSTRAINT "artesanos_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cajas
-- ----------------------------
CREATE INDEX "idx_cajas_diseño" ON "public"."cajas" USING btree (
  "id_diseño" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_cajas_pedido" ON "public"."cajas" USING btree (
  "id_pedido" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table cajas
-- ----------------------------
ALTER TABLE "public"."cajas" ADD CONSTRAINT "cajas_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cajas_materiales
-- ----------------------------
ALTER TABLE "public"."cajas_materiales" ADD CONSTRAINT "cajas_materiales_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table calendario_produccion
-- ----------------------------
ALTER TABLE "public"."calendario_produccion" ADD CONSTRAINT "calendario_produccion_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table clientes
-- ----------------------------
CREATE INDEX "idx_clientes_correo" ON "public"."clientes" USING btree (
  "correo" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table clientes
-- ----------------------------
ALTER TABLE "public"."clientes" ADD CONSTRAINT "clientes_correo_key" UNIQUE ("correo");

-- ----------------------------
-- Primary Key structure for table clientes
-- ----------------------------
ALTER TABLE "public"."clientes" ADD CONSTRAINT "clientes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table contenido_caja
-- ----------------------------
CREATE INDEX "idx_contenido_caja_caja" ON "public"."contenido_caja" USING btree (
  "id_caja" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_contenido_caja_tipocontenido" ON "public"."contenido_caja" USING btree (
  "id_tipocontenido" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table contenido_caja
-- ----------------------------
ALTER TABLE "public"."contenido_caja" ADD CONSTRAINT "contenido_caja_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table disenos
-- ----------------------------
CREATE INDEX "idx_disenos_nombre" ON "public"."disenos" USING btree (
  "nombre" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table disenos
-- ----------------------------
ALTER TABLE "public"."disenos" ADD CONSTRAINT "disenos_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table facturas
-- ----------------------------
ALTER TABLE "public"."facturas" ADD CONSTRAINT "facturas_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table marketing
-- ----------------------------
ALTER TABLE "public"."marketing" ADD CONSTRAINT "marketing_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table materiales
-- ----------------------------
CREATE INDEX "idx_materiales_proveedor" ON "public"."materiales" USING btree (
  "id_proveedor" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table materiales
-- ----------------------------
ALTER TABLE "public"."materiales" ADD CONSTRAINT "materiales_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table pagos
-- ----------------------------
ALTER TABLE "public"."pagos" ADD CONSTRAINT "pagos_referencia_pago_key" UNIQUE ("referencia_pago");

-- ----------------------------
-- Primary Key structure for table pagos
-- ----------------------------
ALTER TABLE "public"."pagos" ADD CONSTRAINT "pagos_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table pedidos
-- ----------------------------
CREATE INDEX "idx_pedidos_cliente" ON "public"."pedidos" USING btree (
  "id_cliente" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_pedidos_diseño" ON "public"."pedidos" USING btree (
  "id_diseño" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table pedidos
-- ----------------------------
ALTER TABLE "public"."pedidos" ADD CONSTRAINT "pedidos_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pedidos_artesanos
-- ----------------------------
ALTER TABLE "public"."pedidos_artesanos" ADD CONSTRAINT "pedidos_artesanos_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table presupuesto
-- ----------------------------
ALTER TABLE "public"."presupuesto" ADD CONSTRAINT "presupuesto_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table proveedores
-- ----------------------------
ALTER TABLE "public"."proveedores" ADD CONSTRAINT "proveedores_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table redes_sociales
-- ----------------------------
ALTER TABLE "public"."redes_sociales" ADD CONSTRAINT "redes_sociales_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tipo_contenido
-- ----------------------------
ALTER TABLE "public"."tipo_contenido" ADD CONSTRAINT "tipo_contenido_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table cajas
-- ----------------------------
ALTER TABLE "public"."cajas" ADD CONSTRAINT "cajas_id_diseño_fkey" FOREIGN KEY ("id_diseño") REFERENCES "public"."disenos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cajas" ADD CONSTRAINT "cajas_id_pedido_fkey" FOREIGN KEY ("id_pedido") REFERENCES "public"."pedidos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table cajas_materiales
-- ----------------------------
ALTER TABLE "public"."cajas_materiales" ADD CONSTRAINT "cajas_materiales_id_caja_fkey" FOREIGN KEY ("id_caja") REFERENCES "public"."cajas" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cajas_materiales" ADD CONSTRAINT "cajas_materiales_id_material_fkey" FOREIGN KEY ("id_material") REFERENCES "public"."materiales" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table calendario_produccion
-- ----------------------------
ALTER TABLE "public"."calendario_produccion" ADD CONSTRAINT "calendario_produccion_id_pedido_fkey" FOREIGN KEY ("id_pedido") REFERENCES "public"."pedidos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table contenido_caja
-- ----------------------------
ALTER TABLE "public"."contenido_caja" ADD CONSTRAINT "contenido_caja_id_caja_fkey" FOREIGN KEY ("id_caja") REFERENCES "public"."cajas" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."contenido_caja" ADD CONSTRAINT "contenido_caja_id_tipocontenido_fkey" FOREIGN KEY ("id_tipocontenido") REFERENCES "public"."tipo_contenido" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table facturas
-- ----------------------------
ALTER TABLE "public"."facturas" ADD CONSTRAINT "facturas_id_pedido_fkey" FOREIGN KEY ("id_pedido") REFERENCES "public"."pedidos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table marketing
-- ----------------------------
ALTER TABLE "public"."marketing" ADD CONSTRAINT "marketing_id_diseño_fkey" FOREIGN KEY ("id_diseño") REFERENCES "public"."disenos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table materiales
-- ----------------------------
ALTER TABLE "public"."materiales" ADD CONSTRAINT "materiales_id_proveedor_fkey" FOREIGN KEY ("id_proveedor") REFERENCES "public"."proveedores" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table pagos
-- ----------------------------
ALTER TABLE "public"."pagos" ADD CONSTRAINT "pagos_id_pedido_fkey" FOREIGN KEY ("id_pedido") REFERENCES "public"."pedidos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table pedidos
-- ----------------------------
ALTER TABLE "public"."pedidos" ADD CONSTRAINT "pedidos_id_cliente_fkey" FOREIGN KEY ("id_cliente") REFERENCES "public"."clientes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."pedidos" ADD CONSTRAINT "pedidos_id_diseño_fkey" FOREIGN KEY ("id_diseño") REFERENCES "public"."disenos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table pedidos_artesanos
-- ----------------------------
ALTER TABLE "public"."pedidos_artesanos" ADD CONSTRAINT "pedidos_artesanos_id_artesano_fkey" FOREIGN KEY ("id_artesano") REFERENCES "public"."artesanos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."pedidos_artesanos" ADD CONSTRAINT "pedidos_artesanos_id_pedido_fkey" FOREIGN KEY ("id_pedido") REFERENCES "public"."pedidos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table presupuesto
-- ----------------------------
ALTER TABLE "public"."presupuesto" ADD CONSTRAINT "presupuesto_id_pedido_fkey" FOREIGN KEY ("id_pedido") REFERENCES "public"."pedidos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table redes_sociales
-- ----------------------------
ALTER TABLE "public"."redes_sociales" ADD CONSTRAINT "redes_sociales_id_marketing_fkey" FOREIGN KEY ("id_marketing") REFERENCES "public"."marketing" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

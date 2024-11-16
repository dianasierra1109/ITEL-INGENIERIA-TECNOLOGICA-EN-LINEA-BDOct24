CREATE TABLE "artesanos" (
  "id" int4 NOT NULL DEFAULT nextval('artesanos_id_seq'::regclass),
  "nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "especialidad" varchar(255) COLLATE "pg_catalog"."default",
  "estatus" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_contratacion" date NOT NULL,
  CONSTRAINT "artesanos_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "artesanos" OWNER TO "postgres";

CREATE TABLE "cajas" (
  "id" int4 NOT NULL DEFAULT nextval('cajas_id_seq'::regclass),
  "nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" text COLLATE "pg_catalog"."default",
  "caracteristicas" text COLLATE "pg_catalog"."default",
  "precio" numeric(10,2) NOT NULL,
  "id_pedido" int4,
  "id_diseño" int4,
  "control_calidad" bool,
  "mensaje_personalizado" text COLLATE "pg_catalog"."default",
  CONSTRAINT "cajas_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "cajas" OWNER TO "postgres";
CREATE INDEX "idx_cajas_diseño" ON "cajas" USING btree (
  "id_diseño" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_cajas_pedido" ON "cajas" USING btree (
  "id_pedido" "pg_catalog"."int4_ops" ASC NULLS LAST
);

CREATE TABLE "cajas_materiales" (
  "id" int4 NOT NULL DEFAULT nextval('cajas_materiales_id_seq'::regclass),
  "id_caja" int4,
  "id_material" int4,
  "cantidad_usada" int4 NOT NULL,
  CONSTRAINT "cajas_materiales_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "cajas_materiales" OWNER TO "postgres";

CREATE TABLE "calendario_produccion" (
  "id" int4 NOT NULL DEFAULT nextval('calendario_produccion_id_seq'::regclass),
  "tarea" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_inicio" date NOT NULL,
  "fecha_limite" date NOT NULL,
  "estado" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "id_pedido" int4 NOT NULL,
  CONSTRAINT "calendario_produccion_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "calendario_produccion" OWNER TO "postgres";

CREATE TABLE "clientes" (
  "id" int4 NOT NULL DEFAULT nextval('clientes_id_seq'::regclass),
  "nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "correo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "telefono" varchar(20) COLLATE "pg_catalog"."default",
  "direccion" text COLLATE "pg_catalog"."default",
  "fecha_registro" date NOT NULL,
  "estatus" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  CONSTRAINT "clientes_pkey" PRIMARY KEY ("id"),
  CONSTRAINT "clientes_correo_key" UNIQUE ("correo")
);
ALTER TABLE "clientes" OWNER TO "postgres";
CREATE INDEX "idx_clientes_correo" ON "clientes" USING btree (
  "correo" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

CREATE TABLE "contenido_caja" (
  "id" int4 NOT NULL DEFAULT nextval('contenido_caja_id_seq'::regclass),
  "id_caja" int4,
  "id_tipocontenido" int4,
  "cantidad" int4 NOT NULL,
  CONSTRAINT "contenido_caja_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "contenido_caja" OWNER TO "postgres";
CREATE INDEX "idx_contenido_caja_caja" ON "contenido_caja" USING btree (
  "id_caja" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_contenido_caja_tipocontenido" ON "contenido_caja" USING btree (
  "id_tipocontenido" "pg_catalog"."int4_ops" ASC NULLS LAST
);

CREATE TABLE "disenos" (
  "id" int4 NOT NULL DEFAULT nextval('disenos_id_seq'::regclass),
  "nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" text COLLATE "pg_catalog"."default",
  "colores" text COLLATE "pg_catalog"."default",
  "tipo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "prototipo_virtual" text COLLATE "pg_catalog"."default",
  CONSTRAINT "disenos_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "disenos" OWNER TO "postgres";
CREATE INDEX "idx_disenos_nombre" ON "disenos" USING btree (
  "nombre" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

CREATE TABLE "facturas" (
  "id" int4 NOT NULL DEFAULT nextval('facturas_id_seq'::regclass),
  "id_pedido" int4,
  "fecha_emision" date NOT NULL,
  "monto_total" numeric(10,2) NOT NULL,
  "estado" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  CONSTRAINT "facturas_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "facturas" OWNER TO "postgres";

CREATE TABLE "marketing" (
  "id" int4 NOT NULL DEFAULT nextval('marketing_id_seq'::regclass),
  "id_diseño" int4,
  "estrategia" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_inicio" date NOT NULL,
  "fecha_fin" date,
  "plataforma" varchar(255) COLLATE "pg_catalog"."default",
  "resultados" json,
  CONSTRAINT "marketing_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "marketing" OWNER TO "postgres";

CREATE TABLE "materiales" (
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
  "fecha_suministro" date,
  CONSTRAINT "materiales_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "materiales" OWNER TO "postgres";
CREATE INDEX "idx_materiales_proveedor" ON "materiales" USING btree (
  "id_proveedor" "pg_catalog"."int4_ops" ASC NULLS LAST
);

CREATE TABLE "pagos" (
  "id" int4 NOT NULL DEFAULT nextval('pagos_id_seq'::regclass),
  "id_pedido" int4,
  "fecha_pago" date NOT NULL,
  "monto" numeric(10,2) NOT NULL,
  "metodo" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "estado" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "referencia_pago" varchar(255) COLLATE "pg_catalog"."default",
  "comprobante_pago" text COLLATE "pg_catalog"."default",
  CONSTRAINT "pagos_pkey" PRIMARY KEY ("id"),
  CONSTRAINT "pagos_referencia_pago_key" UNIQUE ("referencia_pago")
);
ALTER TABLE "pagos" OWNER TO "postgres";

CREATE TABLE "pedidos" (
  "id" int4 NOT NULL DEFAULT nextval('pedidos_id_seq'::regclass),
  "id_cliente" int4 NOT NULL,
  "formato_pedido" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_pedido" date NOT NULL,
  "estado" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_entrega" date,
  "id_diseño" int4,
  "prototipo_3d" text COLLATE "pg_catalog"."default",
  "seguimiento_envio" text COLLATE "pg_catalog"."default",
  CONSTRAINT "pedidos_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "pedidos" OWNER TO "postgres";
CREATE INDEX "idx_pedidos_cliente" ON "pedidos" USING btree (
  "id_cliente" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_pedidos_diseño" ON "pedidos" USING btree (
  "id_diseño" "pg_catalog"."int4_ops" ASC NULLS LAST
);

CREATE TABLE "pedidos_artesanos" (
  "id" int4 NOT NULL DEFAULT nextval('pedidos_artesanos_id_seq'::regclass),
  "id_pedido" int4,
  "id_artesano" int4,
  "rol" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha_asignacion" date NOT NULL,
  CONSTRAINT "pedidos_artesanos_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "pedidos_artesanos" OWNER TO "postgres";

CREATE TABLE "presupuesto" (
  "id" int4 NOT NULL DEFAULT nextval('presupuesto_id_seq'::regclass),
  "id_pedido" int4,
  "total" numeric(10,2) NOT NULL,
  CONSTRAINT "presupuesto_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "presupuesto" OWNER TO "postgres";

CREATE TABLE "proveedores" (
  "id" int4 NOT NULL DEFAULT nextval('proveedores_id_seq'::regclass),
  "nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "contacto" varchar(255) COLLATE "pg_catalog"."default",
  "especialidad" varchar(255) COLLATE "pg_catalog"."default",
  "acuerdos_comerciales" text COLLATE "pg_catalog"."default",
  "estatus" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  CONSTRAINT "proveedores_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "proveedores" OWNER TO "postgres";

CREATE TABLE "redes_sociales" (
  "id" int4 NOT NULL DEFAULT nextval('redes_sociales_id_seq'::regclass),
  "id_marketing" int4,
  "plataforma" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "historia_cliente" text COLLATE "pg_catalog"."default",
  "engagement" int4,
  CONSTRAINT "redes_sociales_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "redes_sociales" OWNER TO "postgres";

CREATE TABLE "tipo_contenido" (
  "id" int4 NOT NULL DEFAULT nextval('tipo_contenido_id_seq'::regclass),
  "descripcion" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  CONSTRAINT "tipo_contenido_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "tipo_contenido" OWNER TO "postgres";

ALTER TABLE "cajas" ADD CONSTRAINT "cajas_id_diseño_fkey" FOREIGN KEY ("id_diseño") REFERENCES "disenos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "cajas" ADD CONSTRAINT "cajas_id_pedido_fkey" FOREIGN KEY ("id_pedido") REFERENCES "pedidos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "cajas_materiales" ADD CONSTRAINT "cajas_materiales_id_caja_fkey" FOREIGN KEY ("id_caja") REFERENCES "cajas" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "cajas_materiales" ADD CONSTRAINT "cajas_materiales_id_material_fkey" FOREIGN KEY ("id_material") REFERENCES "materiales" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "calendario_produccion" ADD CONSTRAINT "calendario_produccion_id_pedido_fkey" FOREIGN KEY ("id_pedido") REFERENCES "pedidos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "contenido_caja" ADD CONSTRAINT "contenido_caja_id_caja_fkey" FOREIGN KEY ("id_caja") REFERENCES "cajas" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "contenido_caja" ADD CONSTRAINT "contenido_caja_id_tipocontenido_fkey" FOREIGN KEY ("id_tipocontenido") REFERENCES "tipo_contenido" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "facturas" ADD CONSTRAINT "facturas_id_pedido_fkey" FOREIGN KEY ("id_pedido") REFERENCES "pedidos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "marketing" ADD CONSTRAINT "marketing_id_diseño_fkey" FOREIGN KEY ("id_diseño") REFERENCES "disenos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "materiales" ADD CONSTRAINT "materiales_id_proveedor_fkey" FOREIGN KEY ("id_proveedor") REFERENCES "proveedores" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "pagos" ADD CONSTRAINT "pagos_id_pedido_fkey" FOREIGN KEY ("id_pedido") REFERENCES "pedidos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "pedidos" ADD CONSTRAINT "pedidos_id_cliente_fkey" FOREIGN KEY ("id_cliente") REFERENCES "clientes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "pedidos" ADD CONSTRAINT "pedidos_id_diseño_fkey" FOREIGN KEY ("id_diseño") REFERENCES "disenos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "pedidos_artesanos" ADD CONSTRAINT "pedidos_artesanos_id_artesano_fkey" FOREIGN KEY ("id_artesano") REFERENCES "artesanos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "pedidos_artesanos" ADD CONSTRAINT "pedidos_artesanos_id_pedido_fkey" FOREIGN KEY ("id_pedido") REFERENCES "pedidos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "presupuesto" ADD CONSTRAINT "presupuesto_id_pedido_fkey" FOREIGN KEY ("id_pedido") REFERENCES "pedidos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "redes_sociales" ADD CONSTRAINT "redes_sociales_id_marketing_fkey" FOREIGN KEY ("id_marketing") REFERENCES "marketing" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;


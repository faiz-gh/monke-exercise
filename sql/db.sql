CREATE TABLE "product" (
  "product_id" SERIAL PRIMARY KEY,
  "product_name" text NOT NULL,
  "quantity" integer NOT NULL,
  "price" "numeric(10, 2)" NOT NULL
);

CREATE TABLE "customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "customer_name" text NOT NULL
);

CREATE TABLE "order" (
  "order_id" SERIAL PRIMARY KEY,
  "customer_id" integer NOT NULL,
  "created_at" timestamp NOT NULL DEFAULT (current_timestamp)
);

CREATE TABLE "order_item" (
  "order_id" integer NOT NULL,
  "product_id" integer NOT NULL,
  "quantity" integer NOT NULL,
  "base_price" "numeric(10, 2)" NOT NULL,
  "total_price" "numeric(10, 2)" NOT NULL,
  PRIMARY KEY ("order_id", "product_id")
);

ALTER TABLE "order_item" ADD FOREIGN KEY ("order_id") REFERENCES "order" ("order_id") ON DELETE CASCADE;

ALTER TABLE "order_item" ADD FOREIGN KEY ("product_id") REFERENCES "product" ("product_id") ON DELETE CASCADE;

ALTER TABLE "order" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id") ON DELETE CASCADE;
CREATE TABLE IF NOT EXISTS "produto" (
	"id" int NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS "estoque" (
	"id" int NOT NULL UNIQUE,
	"produto_id" int NOT NULL,
	PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "fornecedor" (
	"id" int NOT NULL UNIQUE,
	PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "fornecedor_produtos" (
	"produtos_id" int NOT NULL UNIQUE,
	"fornecedor_id" int NOT NULL,
	PRIMARY KEY ("produtos_id", "fornecedor_id")
);


ALTER TABLE "estoque" ADD CONSTRAINT "estoque_fk1" FOREIGN KEY ("produto_id") REFERENCES "produto"("id");

ALTER TABLE "fornecedor_produtos" ADD CONSTRAINT "fornecedor_produtos_fk0" FOREIGN KEY ("produtos_id") REFERENCES "produto"("id");

ALTER TABLE "fornecedor_produtos" ADD CONSTRAINT "fornecedor_produtos_fk1" FOREIGN KEY ("fornecedor_id") REFERENCES "fornecedor"("id");
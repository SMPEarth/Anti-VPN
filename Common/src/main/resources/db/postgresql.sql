CREATE TABLE IF NOT EXISTS "avpn_6_ip" (
	"id" SERIAL PRIMARY KEY,
	"version" INTEGER NOT NULL,
	"created" TIMESTAMP NOT NULL,
	"modified" TIMESTAMP NOT NULL,
	"ip" VARCHAR(45) NOT NULL UNIQUE,
	"type" INTEGER NOT NULL,
	"cascade" BOOLEAN,
	"consensus" DOUBLE PRECISION
);

CREATE TABLE IF NOT EXISTS "avpn_6_player" (
	"id" SERIAL PRIMARY KEY,
	"version" INTEGER NOT NULL,
	"created" TIMESTAMP NOT NULL,
	"modified" TIMESTAMP NOT NULL,
	"uuid" VARCHAR(36) NOT NULL UNIQUE,
	"mcleaks" BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS "avpn_6_data" (
	"id" SERIAL PRIMARY KEY,
	"version" INTEGER NOT NULL,
	"created" TIMESTAMP NOT NULL,
	"modified" TIMESTAMP NOT NULL,
	"key" VARCHAR(255) NOT NULL UNIQUE,
	"value" VARCHAR(255)
);
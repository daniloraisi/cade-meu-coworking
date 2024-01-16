CREATE SCHEMA "workspaces";

CREATE TABLE "users" (
  "username" varchar(40) UNIQUE PRIMARY KEY,
  "name" varchar(255),
  "email" varchar(255) UNIQUE,
  "friends" json,
  "password" md5(),
  "about" text,
  "birth" date,
  "fv_workspaces" json UNIQUE
);

CREATE TABLE "workspaces" (
  "id" int PRIMARY KEY,
  "name" varchar(60) UNIQUE,
  "about" text
);

CREATE TABLE "workspaces_addresses" (
  "id" int,
  "street" varchar(255),
  "zipcode" varchar(12),
  "latitude" decimal(12,9),
  "longitude" decimal(12,9)
);

ALTER TABLE "workspaces_addresses" ADD FOREIGN KEY ("id") REFERENCES "workspaces" ("id");

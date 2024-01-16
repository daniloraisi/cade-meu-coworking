CREATE TABLE "users" (
  "username" varchar(40) UNIQUE PRIMARY KEY,
  "name" varchar(255),
  "email" varchar(255) UNIQUE,
  "password" md5(),
  "about" text,
  "birth" date,
  "fv_workspaces" json UNIQUE
);

CREATE TABLE "workspaces" (
  "id" int PRIMARY KEY,
  "name" varchar(60) UNIQUE,
  "local" varchar(255),
  "about" text
);

CREATE TABLE "workspaces_addresses" (
  "id" int,
  "street" varchar(255),
  "zipcode" varchar(12),
  "latitude" decimal(12,9),
  "longitude" decimal(12,9)
);

CREATE TABLE "users_relationships" (
  "username1" varchar(40),
  "username2" varchar(40),
  "created_at" now
);

ALTER TABLE "workspaces_addresses" ADD FOREIGN KEY ("id") REFERENCES "workspaces" ("id");
ALTER TABLE "users_relationships" ADD FOREIGN KEY ("username1") REFERENCES "users" ("username");
ALTER TABLE "users_relationships" ADD FOREIGN KEY ("username2") REFERENCES "users" ("username");

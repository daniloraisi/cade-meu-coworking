CREATE TABLE "users" (
  "username" varchar(40) UNIQUE PRIMARY KEY,
  "name" varchar(255),
  "email" varchar(255) UNIQUE,
  "friends" json,
  "password" MD5(),
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


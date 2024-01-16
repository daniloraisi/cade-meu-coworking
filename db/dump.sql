Table users{
  username varchar(40) [pk, unique]
  name varchar(255)
  email varchar(255) [unique]
  friends json
  password md5
  about text
  birth date
  fv_workspaces json [unique]
}

Table workspaces{
  id int [pk]
  name varchar(60) [unique]
  about text
}

Table workspaces_addresses{
  id int [ref: > workspaces.id]
  street varchar(255)
  zipcode varchar(12)
  latitude decimal(12,9)
  longitude decimal(12,9)
}

Table users_relationships{
  username1 varchar(40) [ref: > users.username]
  username2 varchar(40) [ref: > users.username]
  created_at now()
}
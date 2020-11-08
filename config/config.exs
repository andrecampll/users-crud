import Config

config :users_crud, UsersCrud.Repo,
  database: "users_crud_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"

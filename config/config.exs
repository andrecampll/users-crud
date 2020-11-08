import Config

config :users_crud, UsersCrud.Repo,
  database: "users_crud",
  username: "postgres",
  password: "docker",
  hostname: "localhost"

  config :users_crud, ecto_repos: [UsersCrud.Repo]

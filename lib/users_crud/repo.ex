defmodule UsersCrud.Repo do
  use Ecto.Repo,
    otp_app: :users_crud,
    adapter: Ecto.Adapters.Postgres
end

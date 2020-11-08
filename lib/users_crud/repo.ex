defmodule UsersCrud.Repo do
  use Ecto.Repo,
    otp_app: :users_crud,
    adapter: Ecto.Adapters.Postgres

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      UsersCrud.Repo
    ]

    opts = [strategy: :one_for_one, name: UsersCrud.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

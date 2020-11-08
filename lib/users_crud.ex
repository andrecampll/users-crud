defmodule UsersCrud do
  @moduledoc """
  Documentation for `UsersCrud`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> UsersCrud.hello()
      :world

  """
  def hello do
    :world
  end

  alias UsersCrud.Repo, as: DB

  import Ecto.Query

  def insert(first_name, last_name, email, age) do
    user = %UsersCrud.User{first_name: first_name, last_name: last_name, email: email, age: age}

    user |> DB.insert()
  end

  def read(idUser) do
    DB.one(
      UsersCrud.User
      |> select([user], user)
      |> where([user], user.id == ^idUser)
    )
  end

  def read do
    DB.all(
      UsersCrud.User
      |> select([user], user)
      |> order_by(desc: :inserted_at)
    )
  end
end

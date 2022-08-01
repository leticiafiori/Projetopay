defmodule Projetopay.Users.Create do
  alias Projetopay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end

end

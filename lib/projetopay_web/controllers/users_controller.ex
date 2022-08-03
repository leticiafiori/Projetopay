defmodule ProjetopayWeb.UsersController do
  use ProjetopayWeb, :controller

  alias Projetopay.User

  action_fallback ProjetopayWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Projetopay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end

defmodule ProjetopayWeb.UsersController do
  use ProjetopayWeb, :controller

  alias Projetopay.User

  def create(conn, params) do
    params
    |> Projetopay.create_user()
    |> handle_response(conn)
  end

  defp handle_response({:ok, %User{}}, conn) do
      conn
      |> put_status(:created)
  #    |> json(%{message: "Welcome to Projeto pay API. Here is your number #{result}"})
  end

  defp handle_response({:error, reason}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(reason)
  end
end

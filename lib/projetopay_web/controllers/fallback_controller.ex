defmodule ProjetopayWeb.FallbackController do
  use ProjetopayWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(ProjetopayWeb.ErrorView)
    |> render("400.json", result: result)
  end

end

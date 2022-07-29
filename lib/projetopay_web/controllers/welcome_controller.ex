defmodule ProjetopayWeb.WelcomeController do
  use ProjetopayWeb, :controller

  alias Projetopay.Numbers

  def index(conn, %{"filename" => filename}) do
    filename
    |> Numbers.sum_from_file()
    |> handle_response(conn)
#    text(conn, "Welcome to the Projetopay API")
  end

  defp handle_response({:ok, %{result: result}}, conn) do
      conn
      |> put_status(:ok)
      |> json(%{message: "Welcome to Projeto pay API. Here is your number #{result}"})
  end

  defp handle_response({:error, reason}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(reason)
  end
end

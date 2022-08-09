defmodule ProjetopayWeb.AccountsController do
  use ProjetopayWeb, :controller

  alias Projetopay.Account
  alias Projetopay.Accounts.Transaction.Response, as: TransactionResponse

  action_fallback ProjetopayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Projetopay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def withdraw(conn, params) do
    with {:ok, %Account{} = account} <- Projetopay.withdraw(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def transaction(conn, params) do
    with {:ok, %TransactionResponse{} = transaction} <- Projetopay.transaction(params) do
      conn
      |> put_status(:ok)
      |> render("transaction.json", transaction: transaction)
    end
  end



end

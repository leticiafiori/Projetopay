defmodule Projetopay.Accounts.Deposit do

  alias Projetopay.Repo
  alias Projetopay.Accounts.Operation

  def call(params) do
    params
    |> Operation.call(:deposit)
    |> run_transaction()
  end


  defp run_transaction(multi) do
    case Repo.transaction(multi) do
      {:error, _operation, reason, _changes} -> {:error, reason}
      {:ok, %{account_deposit: account}} -> {:ok, account}
    end
  end

end
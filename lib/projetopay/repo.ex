defmodule Projetopay.Repo do
  use Ecto.Repo,
    otp_app: :projetopay,
    adapter: Ecto.Adapters.Postgres
end

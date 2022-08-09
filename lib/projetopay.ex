defmodule Projetopay do
  alias Projetopay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end

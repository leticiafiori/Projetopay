defmodule Projetopay.User.CreateTest do
  use Projetopay.DataCase

  alias Projetopay.User
  alias Projetopay.User.Create

  describe "call/1" do
    test "whean all params are valid, returns an user" do
      params = %{
        name: "Leticia",
        password: "123456",
        nickname: "Fiori",
        email: "leticia@email.com",
        age: 29
      }

      {:ok, %User{id: user_id}} = Create.call()
      user = Repo.get(User, user_id)

      assert %User{name: "Leticia", age: 29, id: ^user_id} = user

    end
  end

end

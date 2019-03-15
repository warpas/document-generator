defmodule DocumentGenerator.UserTest do
  use DocumentGenerator.DataCase

  alias DocumentGenerator.Accounts
  alias DocumentGenerator.Accounts.User

  setup do
    {:ok, user: insert(:user)}
  end

  # TODO: get rid of these module attributes if they're not needed
  @valid_attrs %{
    email: "some email",
    name: "some name",
    phone: "some phone",
    website: "some website"
  }
  @update_attrs %{
    email: "some updated email",
    name: "some updated name",
    phone: "some updated phone",
    website: "some updated website"
  }
  @invalid_attrs %{email: nil, name: nil, phone: nil, website: nil}

  describe "list_users/0" do
    test "returns all users", %{
      user: user
    } do
      assert Accounts.list_users() == [user]
    end
  end

  describe "get_user!/1" do
    test "returns the user with given uuid", %{
      user: user
    } do
      assert Accounts.get_user!(user.uuid) == user
    end
  end

  describe "create_user/1" do
    test "with valid data creates a user" do
      # TODO: replace with a pattern-match assert
      assert {:ok, %User{} = user} = Accounts.create_user(@valid_attrs)
      assert user.email == "some email"
      assert user.name == "some name"
      assert user.phone == "some phone"
      assert user.website == "some website"
    end

    test "with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_user(@invalid_attrs)
    end
  end

  describe "update_user/2" do
    test "with valid data updates the user", %{
      user: user
    } do
      # TODO: replace with a pattern-match assert
      assert {:ok, user} = Accounts.update_user(user, @update_attrs)
      assert %User{} = user
      assert user.email == "some updated email"
      assert user.name == "some updated name"
      assert user.phone == "some updated phone"
      assert user.website == "some updated website"
    end

    test "with invalid data returns error changeset", %{
      user: user
    } do
      assert {:error, %Ecto.Changeset{}} = Accounts.update_user(user, @invalid_attrs)
      assert user == Accounts.get_user!(user.uuid)
    end
  end

  describe "delete_user/1" do
    test "deletes the user", %{
      user: user
    } do
      assert {:ok, %User{}} = Accounts.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_user!(user.uuid) end
    end
  end

  describe "change_user/1" do
    test "returns a user changeset", %{
      user: user
    } do
      assert %Ecto.Changeset{} = Accounts.change_user(user)
    end
  end
end

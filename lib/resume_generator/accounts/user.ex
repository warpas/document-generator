defmodule ResumeGenerator.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:uuid, :binary_id, autogenerate: false}
  @required_attrs [:email]
  @optional_attrs [:name, :phone, :website]

  schema "users" do
    field :email, :string
    field :name, :string
    field :phone, :string
    field :website, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, @required_attrs ++ @optional_attrs)
    |> validate_required(@required_attrs)
  end
end

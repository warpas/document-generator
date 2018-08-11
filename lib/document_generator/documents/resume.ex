defmodule DocumentGenerator.Documents.Resume do
  use Ecto.Schema
  import Ecto.Changeset


  @primary_key {:uuid, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  @required_attrs []
  @optional_attrs [:languages, :programming_languages, :technologies, :interests]

  schema "resumes" do
    field :interests, :string
    field :languages, :string
    field :programming_languages, :string
    field :technologies, :string

    timestamps()
  end

  @doc false
  def changeset(resume, attrs) do
    resume
    |> cast(attrs, @required_attrs ++ @optional_attrs)
    |> validate_required(@required_attrs)
  end
end

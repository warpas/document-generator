defmodule ResumeGenerator.Documents.Resume do
  use Ecto.Schema
  import Ecto.Changeset


  @primary_key {:uuid, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
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
    |> cast(attrs, [:languages, :programming_languages, :technologies, :interests])
    |> validate_required([:languages, :programming_languages, :technologies, :interests])
  end
end

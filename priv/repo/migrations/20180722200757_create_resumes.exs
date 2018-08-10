defmodule ResumeGenerator.Repo.Migrations.CreateResumes do
  use Ecto.Migration

  def change do
    create table(:resumes, primary_key: false) do
      add(:uuid, :binary_id, primary_key: true)
      add(:languages, :string)
      add(:programming_languages, :string)
      add(:technologies, :string)
      add(:interests, :string)

      timestamps()
    end

  end
end

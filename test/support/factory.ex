defmodule DocumentGenerator.Factory do
  use ExMachina.Ecto, repo: DocumentGenerator.Repo
  use DocumentGenerator.Factories.ResumeFactory
  use DocumentGenerator.Factories.UserFactory
end

defmodule ResumeGenerator.Factory do
  use ExMachina.Ecto, repo: ResumeGenerator.Repo
  use ResumeGenerator.Factories.ResumeFactory
  use ResumeGenerator.Factories.UserFactory
end

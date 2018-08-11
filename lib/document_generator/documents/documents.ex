defmodule DocumentGenerator.Documents do
  @moduledoc """
  The Documents context.
  """

  import Ecto.Query, warn: false
  alias DocumentGenerator.Repo

  alias DocumentGenerator.Documents.Resume

  @doc """
  Returns the list of resumes.

  ## Examples

      iex> list_resumes()
      [%Resume{}, ...]

  """
  def list_resumes do
    Repo.all(Resume)
  end

  @doc """
  Gets a single resume.

  Raises `Ecto.NoResultsError` if the Resume does not exist.

  ## Examples

      iex> get_resume!(123)
      %Resume{}

      iex> get_resume!(456)
      ** (Ecto.NoResultsError)

  """
  def get_resume!(uuid), do: Repo.get!(Resume, uuid)

  @doc """
  Creates a resume.

  ## Examples

      iex> create_resume(%{field: value})
      {:ok, %Resume{}}

      iex> create_resume(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_resume(attrs \\ %{}) do
    %Resume{}
    |> Resume.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a resume.

  ## Examples

      iex> update_resume(resume, %{field: new_value})
      {:ok, %Resume{}}

      iex> update_resume(resume, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_resume(%Resume{} = resume, attrs) do
    resume
    |> Resume.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Resume.

  ## Examples

      iex> delete_resume(resume)
      {:ok, %Resume{}}

      iex> delete_resume(resume)
      {:error, %Ecto.Changeset{}}

  """
  def delete_resume(%Resume{} = resume) do
    Repo.delete(resume)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking resume changes.

  ## Examples

      iex> change_resume(resume)
      %Ecto.Changeset{source: %Resume{}}

  """
  def change_resume(%Resume{} = resume) do
    Resume.changeset(resume, %{})
  end
end

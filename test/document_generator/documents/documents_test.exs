defmodule DocumentGenerator.DocumentsTest do
  use DocumentGenerator.DataCase

  alias DocumentGenerator.Documents

  describe "resumes" do
    alias DocumentGenerator.Documents.Resume

    @valid_attrs %{interests: "some interests", languages: "some languages", programming_languages: "some programming_languages", technologies: "some technologies"}
    @update_attrs %{interests: "some updated interests", languages: "some updated languages", programming_languages: "some updated programming_languages", technologies: "some updated technologies"}
    @invalid_attrs %{interests: nil, languages: nil, programming_languages: nil, technologies: nil}

    def resume_fixture(attrs \\ %{}) do
      {:ok, resume} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Documents.create_resume()

      resume
    end

    test "list_resumes/0 returns all resumes" do
      resume = resume_fixture()
      assert Documents.list_resumes() == [resume]
    end

    test "get_resume!/1 returns the resume with given uuid" do
      resume = resume_fixture()
      assert Documents.get_resume!(resume.uuid) == resume
    end

    test "create_resume/1 with valid data creates a resume" do
      assert {:ok, %Resume{} = resume} = Documents.create_resume(@valid_attrs)
      assert resume.interests == "some interests"
      assert resume.languages == "some languages"
      assert resume.programming_languages == "some programming_languages"
      assert resume.technologies == "some technologies"
    end

    @tag :skip
    test "create_resume/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Documents.create_resume(@invalid_attrs)
    end

    test "update_resume/2 with valid data updates the resume" do
      resume = resume_fixture()
      assert {:ok, resume} = Documents.update_resume(resume, @update_attrs)
      assert %Resume{} = resume
      assert resume.interests == "some updated interests"
      assert resume.languages == "some updated languages"
      assert resume.programming_languages == "some updated programming_languages"
      assert resume.technologies == "some updated technologies"
    end

    @tag :skip
    test "update_resume/2 with invalid data returns error changeset" do
      resume = resume_fixture()
      assert {:error, %Ecto.Changeset{}} = Documents.update_resume(resume, @invalid_attrs)
      assert resume == Documents.get_resume!(resume.uuid)
    end

    test "delete_resume/1 deletes the resume" do
      resume = resume_fixture()
      assert {:ok, %Resume{}} = Documents.delete_resume(resume)
      assert_raise Ecto.NoResultsError, fn -> Documents.get_resume!(resume.uuid) end
    end

    test "change_resume/1 returns a resume changeset" do
      resume = resume_fixture()
      assert %Ecto.Changeset{} = Documents.change_resume(resume)
    end
  end
end

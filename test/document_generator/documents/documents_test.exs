defmodule DocumentGenerator.DocumentsTest do
  use DocumentGenerator.DataCase

  alias DocumentGenerator.Documents
  alias DocumentGenerator.Documents.Resume

  setup do
    {:ok, resume: insert(:resume)}
  end

  # TODO: get rid of these module attributes if they're not needed
  @valid_attrs %{
    interests: "some interests",
    languages: "some languages",
    programming_languages: "some programming_languages",
    technologies: "some technologies"
  }
  @update_attrs %{
    interests: "some updated interests",
    languages: "some updated languages",
    programming_languages: "some updated programming_languages",
    technologies: "some updated technologies"
  }
  @invalid_attrs %{
    interests: nil,
    languages: nil,
    programming_languages: nil,
    technologies: nil
  }

  describe "list_resumes/0" do
    test "returns all resumes", %{
      resume: resume
    } do
      assert Documents.list_resumes() == [resume]
    end
  end

  describe "get_resume!/1" do
    test "returns the resume with given uuid", %{
      resume: resume
    } do
      assert Documents.get_resume!(resume.uuid) == resume
    end
  end

  describe "create_resume/1" do
    test "with valid data creates a resume" do
      # TODO: replace with a pattern-match assert
      assert {:ok, %Resume{} = resume} = Documents.create_resume(@valid_attrs)
      assert resume.interests == "some interests"
      assert resume.languages == "some languages"
      assert resume.programming_languages == "some programming_languages"
      assert resume.technologies == "some technologies"
    end

    # TODO: unskip test
    @tag :skip
    test "with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Documents.create_resume(@invalid_attrs)
    end
  end

  describe "update_resume/2" do
    test "with valid data updates the resume", %{
      resume: resume
    } do
      # TODO: replace with a pattern-match assert
      assert {:ok, resume} = Documents.update_resume(resume, @update_attrs)
      assert %Resume{} = resume
      assert resume.interests == "some updated interests"
      assert resume.languages == "some updated languages"
      assert resume.programming_languages == "some updated programming_languages"
      assert resume.technologies == "some updated technologies"
    end

    # TODO: unskip test
    @tag :skip
    test "with invalid data returns error changeset", %{
      resume: resume
    } do
      assert {:error, %Ecto.Changeset{}} = Documents.update_resume(resume, @invalid_attrs)
      assert resume == Documents.get_resume!(resume.uuid)
    end
  end

  describe "delete_resume/1" do
    test "deletes the resume", %{
      resume: resume
    } do
      assert {:ok, %Resume{}} = Documents.delete_resume(resume)
      assert_raise Ecto.NoResultsError, fn -> Documents.get_resume!(resume.uuid) end
    end
  end

  describe "change_resume/1" do
    test "returns a resume changeset", %{
      resume: resume
    } do
      assert %Ecto.Changeset{} = Documents.change_resume(resume)
    end
  end
end

defmodule ResumeGeneratorWeb.ResumeControllerTest do
  use ResumeGeneratorWeb.ConnCase

    # TODO: Make both setup clauses work, then choose one
    # setup [
    #   :create_resume
    # ]

    # setup do
    #   {:ok, %{resumes: insert_list(10, :resume)}}
    # end


  describe "resume index action" do
    @tag :web
    test "should succeed", %{conn: conn} do
      conn = get conn, "/resumes"
      assert html_response(conn, 200) =~ "There will be a list of resume documents here at some point. "
    end
  end

  # TODO: Add test for show action
  describe "resume show action" do
    @tag :web
    test "should succeed with valid ID", %{conn: conn} do
      # IO.inspect(conn, label: "conn")
      # resume = build(:resume)
      resume_attrs = %{}
      {:ok, resume} = ResumeGenerator.Documents.create_resume(resume_attrs)
      conn = get conn, "/resumes/#{resume.uuid}"
      assert html_response(conn, 200) =~ "The input forms below will start working at some point."
    end
  end
end

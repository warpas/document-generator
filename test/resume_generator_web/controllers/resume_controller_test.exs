defmodule ResumeGeneratorWeb.ResumeControllerTest do
  use ResumeGeneratorWeb.ConnCase

  describe "resume CRUD" do
    # TODO: Make both setup clauses work, then choose one
    # setup [
    #   :create_resume
    # ]

    # setup do
    #   {:ok, %{resumes: insert_list(10, :resume)}}
    # end


    test "GET /resumes", %{conn: conn} do
      conn = get conn, "/resumes"
      assert html_response(conn, 200) =~ "There will be a list of resume documents here at some point. "
    end

    # TODO: Add test for show action
    test "resumes show action", %{conn: conn} do
      # IO.inspect(conn, label: "conn")
      # resume = build(:resume)
      resume_attrs = %{}
      {:ok, resume} = ResumeGenerator.Documents.Resume.new(resume_attrs)
      conn = get conn, "/resumes/#{resume.id}"
      assert html_response(conn, 200) =~ "The input forms below will start working at some point."
    end
  end
end

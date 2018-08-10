defmodule ResumeGeneratorWeb.ResumeControllerTest do
  use ResumeGeneratorWeb.ConnCase
  use ResumeGenerator.DataCase

  setup do
    {:ok, resume: insert(:resume)}
  end

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
    test "should succeed with valid ID", %{conn: conn, resume: resume} do
      conn = get conn, "/resumes/#{resume.uuid}"
      assert html_response(conn, 200) =~ "The input forms below will start working at some point."
    end
  end
end

defmodule ResumeGeneratorWeb.ResumeControllerTest do
  use ResumeGeneratorWeb.ConnCase
  use ResumeGenerator.DataCase

  setup do
    {:ok, resumes: insert_list(10, :resume)}
  end

  describe "resume index action" do
    @tag :web
    test "should succeed", %{conn: conn, resumes: resumes} do
      conn = get conn, "/resumes"
      assert html_response(conn, 200) =~ "There will be a list of resume documents here at some point. "
      # TODO: assert the list is working in CV-2-2
    end
  end

  describe "resume show action" do
    @tag :web
    test "should succeed with valid ID", %{conn: conn, resumes: resumes} do
      conn = get conn, "/resumes/#{List.first(resumes).uuid}"
      assert html_response(conn, 200) =~ "The input forms below will start working at some point."
    end
  end
end

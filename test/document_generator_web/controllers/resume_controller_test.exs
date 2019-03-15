defmodule DocumentGeneratorWeb.ResumeControllerTest do
  use DocumentGeneratorWeb.ConnCase
  use DocumentGenerator.DataCase

  setup do
    {:ok, resumes: insert_list(10, :resume)}
  end

  # TODO: replace with useful tests
  describe "index/2" do
    @tag :web
    test "should succeed", %{conn: conn, resumes: _resumes} do
      conn = get(conn, "/resumes")

      assert html_response(conn, 200) =~
               "There will be a list of resume documents here at some point. "

      # TODO: assert the list is working in CV-2-6
    end
  end

  # TODO: replace with useful tests
  describe "show/2" do
    @tag :web
    test "should succeed with valid ID", %{conn: conn, resumes: resumes} do
      conn = get(conn, "/resumes/#{List.first(resumes).uuid}")
      assert html_response(conn, 200) =~ "The input forms below will start working at some point."
    end
  end
end

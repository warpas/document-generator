defmodule DocumentGeneratorWeb.PageControllerTest do
  use DocumentGeneratorWeb.ConnCase

  describe "index/2" do
    # TODO: replace with useful tests
    test "should return something useful", %{conn: conn} do
      conn = get(conn, "/")
      assert html_response(conn, 200) =~ "Welcome to Phoenix!"
    end
  end
end

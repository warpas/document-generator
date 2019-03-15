defmodule DocumentGeneratorWeb.UserControllerTest do
  use DocumentGeneratorWeb.ConnCase
  use DocumentGenerator.DataCase

  setup do
    {:ok, user: insert(:user)}
  end

  # TODO: replace with useful tests
  describe "show/2" do
    test "should succeed with valid ID", %{conn: conn, user: user} do
      conn = get(conn, "/users/#{user.uuid}")

      assert html_response(conn, 200) =~
               "There will be user information here, willingly given. And a 'delete my info' button"
    end
  end
end

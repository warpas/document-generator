defmodule ResumeGeneratorWeb.UserControllerTest do
  use ResumeGeneratorWeb.ConnCase
  use ResumeGenerator.DataCase

  setup do
    {:ok, user: insert(:user)}
  end

  describe "user show action" do
    test "should succeed with valid ID", %{conn: conn, user: user} do
      conn = get conn, "/users/#{user.uuid}"
      assert html_response(conn, 200) =~
        "There will be user information here, willingly given. And a 'delete my info' button"
    end
  end

end

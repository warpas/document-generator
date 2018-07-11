defmodule ResumeGeneratorWeb.ResumeControllerTest do
  use ResumeGeneratorWeb.ConnCase

  test "GET /resumes", %{conn: conn} do
    conn = get conn, "/resumes"
    assert html_response(conn, 200) =~ "There will be a list of resume documents here at some point. "
  end

  # TODO: Add test for show action
  # assert html_response(conn, 200) =~ "The input forms below will start working at some point."
end

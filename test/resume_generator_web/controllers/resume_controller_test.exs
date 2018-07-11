defmodule ResumeGeneratorWeb.ResumeControllerTest do
  use ResumeGeneratorWeb.ConnCase

  test "GET /resumes", %{conn: conn} do
    conn = get conn, "/resumes"
    assert html_response(conn, 200) =~ "The input forms below will start working at some point."
  end
end

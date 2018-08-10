defmodule ResumeGeneratorWeb.UserController do
  use ResumeGeneratorWeb, :controller

  def show(conn, _params) do
    render conn, "show.html"
  end
end

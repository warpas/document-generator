defmodule DocumentGeneratorWeb.UserController do
  use DocumentGeneratorWeb, :controller

  def show(conn, _params) do
    render conn, "show.html"
  end
end

defmodule DocumentGeneratorWeb.PageController do
  use DocumentGeneratorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

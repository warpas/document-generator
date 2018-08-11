defmodule DocumentGeneratorWeb.Router do
  use DocumentGeneratorWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DocumentGeneratorWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    # get "/resumes", ResumeController, :index
    # get "/resumes/:id", ResumeController, :show
    resources "/resumes", ResumeController, only: [:index, :show]
    resources "/users", UserController, only: [:show]
  end

  # Other scopes may use custom stacks.
  # scope "/api", DocumentGeneratorWeb do
  #   pipe_through :api
  # end
end

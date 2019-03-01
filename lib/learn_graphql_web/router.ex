defmodule LearnGraphqlWeb.Router do
  use LearnGraphqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", LearnGraphqlWeb do
    pipe_through :api
  end
end

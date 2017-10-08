defmodule WebWeb.Router do
  use WebWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", WebWeb do
    pipe_through :api
  end
end

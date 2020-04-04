defmodule FractionServerWeb.Router do
  use FractionServerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", FractionServerWeb do
    pipe_through :api
  end
end

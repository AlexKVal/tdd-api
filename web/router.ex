defmodule Tdd.Router do
  use Tdd.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Tdd do
    pipe_through :api
  end
end

defmodule SensorApi.Router do
  use SensorApi.Web, :router

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

  scope "/", SensorApi do
    pipe_through :browser
    get "/", PageController, :index

  end

  scope "/v1", SensorApi.V1, as: :v1 do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit, :show, :delete, :update]
  end

  # Other scopes may use custom stacks.
  # scope "/api", SensorApi do
  #   pipe_through :api
  # end
end

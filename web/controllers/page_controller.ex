defmodule SensorApi.PageController do
  use SensorApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

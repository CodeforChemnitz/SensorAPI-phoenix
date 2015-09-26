defmodule SensorApi.V1.UserView do
  use SensorApi.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, SensorApi.V1.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, SensorApi.V1.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      email: user.email,
      password: user.password,
      created_at: user.created_at}
  end
end

defmodule EntrevistameApiWeb.UserView do
  use EntrevistameApiWeb, :view
  alias EntrevistameApiWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      email: user.email,
      name: user.name,
      login: user.login,
      image: user.image,
      password: user.password}
  end
end

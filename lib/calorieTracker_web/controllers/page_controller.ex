defmodule CalorieTrackerWeb.PageController do
  use CalorieTrackerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

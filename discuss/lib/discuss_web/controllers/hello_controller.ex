defmodule DiscussWeb.HelloController do
  use DiscussWeb, :controller

  def index(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :index)
  end

  def show(conn, %{"messenger" => messenger} = _params) do
    render(conn, :show, messenger: messenger)
  end
end

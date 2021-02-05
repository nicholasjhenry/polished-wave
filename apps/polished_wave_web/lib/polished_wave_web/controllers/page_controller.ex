defmodule PolishedWaveWeb.PageController do
  use PolishedWaveWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

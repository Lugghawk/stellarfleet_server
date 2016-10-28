defmodule StellarfleetServer.PageController do
  use StellarfleetServer.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

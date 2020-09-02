defmodule PuertoRicanKitchenWeb.PageController do
  use PuertoRicanKitchenWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

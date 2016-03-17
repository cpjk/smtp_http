defmodule Smtpex.PageController do
  use Smtpex.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

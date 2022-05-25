defmodule EridaniWeb.TimezonesController do
  use EridaniWeb, :controller

  def index(conn, _params) do
    json(conn, Eridani.TimezonesService.get_timezones())
  end
end

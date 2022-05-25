defmodule EridaniWeb.UsersController do
  use EridaniWeb, :controller

  def index(conn, _params) do
    json(conn, Eridani.UsersService.get_users())
  end

end

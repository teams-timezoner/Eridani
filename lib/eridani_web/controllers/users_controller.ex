defmodule EridaniWeb.UsersController do
  use EridaniWeb, :controller

  def index(conn, _params), do: json(conn, Eridani.UsersService.get_users())

  def show(conn, %{ "id" => id }), do: json(conn, Eridani.UsersService.get_user_by_id(id))

  def show_by_timezone(conn, %{ "id" => id }), do: json(conn, Eridani.UsersService.get_users_by_timezone(id))

end

defmodule Eridani.UsersService do
  import Ecto.Query

  def get_users(), do: Eridani.Repo.all(from(Eridani.User))

  def get_user_by_id(id), do: Eridani.Repo.get(Eridani.User, id)

  def get_users_by_timezone(timezone), do: Eridani.Repo.all(from u in Eridani.User, where: u.timezone == ^timezone)
end

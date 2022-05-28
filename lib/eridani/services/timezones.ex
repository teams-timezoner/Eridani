defmodule Eridani.TimezonesService do
  import Ecto.Query

  def get_timezones(), do: Eridani.Repo.all(from(Eridani.Timezone))
end

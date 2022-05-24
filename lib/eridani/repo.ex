defmodule Eridani.Repo do
  use Ecto.Repo,
    otp_app: :eridani,
    adapter: Ecto.Adapters.Postgres
end

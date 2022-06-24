defmodule Eridani.Repo.Migrations.UserBelongsToTimezone do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :timezone_id, references(:timezones, type: :binary_id)
    end
  end
end

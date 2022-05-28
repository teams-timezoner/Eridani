defmodule Eridani.Repo.Migrations.CreateTimezones do
  use Ecto.Migration

  def change do
    create table(:timezones, primary_key: false) do
      add :id, :uuid, primary_key: true, null: false
      add :name, :string, null: false
      add :description, :string, null: false
      add :offset, :float, null: false

      timestamps()
    end
  end
end

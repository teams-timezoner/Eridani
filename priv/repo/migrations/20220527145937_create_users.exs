defmodule Eridani.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :uuid, primary_key: true, null: false
      add :name, :string, null: false
      add :timezone, :binary_id, null: false

      timestamps()
    end
  end
end

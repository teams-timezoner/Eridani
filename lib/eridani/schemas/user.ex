defmodule Eridani.User do
  use Ecto.Schema
  import Ecto.Changeset

  @derive { Jason.Encoder, only: [:id, :name, :timezone] }

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "users" do
    field :name, :string
    field :timezone, :binary_id

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:id, :name, :timezone])
    |> validate_required([:id, :name, :timezone])
  end
end

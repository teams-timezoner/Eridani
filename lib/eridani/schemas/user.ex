defmodule Eridani.User do
  use Ecto.Schema
  import Ecto.Changeset

  @derive { Jason.Encoder, only: [:id, :name, :timezone_id] }

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "users" do
    field :name, :string

    belongs_to :timezone, Eridani.Timezone

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:id, :name, :timezone_id])
    |> validate_required([:id, :name, :timezone_id])
  end
end

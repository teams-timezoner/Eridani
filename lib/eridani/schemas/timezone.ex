defmodule Eridani.Timezone do
  use Ecto.Schema
  import Ecto.Changeset

  @derive { Jason.Encoder, only: [:id, :description, :name, :offset] }

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "timezones" do
    field :description, :string
    field :name, :string
    field :offset, :float
    has_many :users, Eridani.User

    timestamps()
  end

  @doc false
  def changeset(timezone, attrs) do
    timezone
    |> cast(attrs, [:id, :name, :description, :offset])
    |> validate_required([:id, :name, :description, :offset])
  end
end

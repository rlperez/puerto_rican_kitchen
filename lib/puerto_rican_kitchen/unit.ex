defmodule PuertoRicanKitchen.Unit do
  use Ecto.Schema
  import Ecto.Changeset

  schema "units" do
    field :abbreviation, :string
    field :standard, :string
    field :unit, :string

    timestamps()
  end

  @doc false
  def changeset(unit, attrs) do
    unit
    |> cast(attrs, [:unit, :abbreviation, :standard])
    |> validate_required([:unit, :abbreviation, :standard])
  end
end

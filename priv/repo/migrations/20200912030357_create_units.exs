defmodule PuertoRicanKitchen.Repo.Migrations.CreateUnits do
  use Ecto.Migration

  def change do
    create table(:units) do
      add :unit, :string
      add :abbreviation, :string
      add :standard, :string

      timestamps()
    end

  end
end

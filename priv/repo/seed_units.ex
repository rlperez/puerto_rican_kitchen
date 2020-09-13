defmodule SeedUnits do
  @moduledoc false
  use PuertoRicanKitchen

  alias PuertoRicanKitchen.Repo
  alias PuertoRicanKitchen.Unit

  def seed do
    timestamp =
      NaiveDateTime.utc_now()
      |> NaiveDateTime.truncate(:second)

    units = [
      [abbreviation: "fl oz", unit: "fluid ounce", standard: "U.S.", inserted_at: timestamp, updated_at: timestamp],
    ]

    Repo.insert_all(Unit, units)
  end
end

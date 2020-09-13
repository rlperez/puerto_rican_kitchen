defmodule SeedUnits do
  @moduledoc false
  use PuertoRicanKitchen

  alias PuertoRicanKitchen.Repo
  alias PuertoRicanKitchen.Unit

  def seed do
    timestamp =
      NaiveDateTime.utc_now()
      |> NaiveDateTime.truncate(:second)
    # Source: https://www.adducation.info/how-to-improve-your-knowledge/units-of-measurement/
    units = [
      [abbreviation: "tsp", unit: "teaspoon", standard: "U.S.", inserted_at: timestamp, updated_at: timestamp],
      [abbreviation: "tbsp", unit: "tablespoon", standard: "U.S.", inserted_at: timestamp, updated_at: timestamp],
      [abbreviation: "oz", unit: "ounces", standard: "U.S.", inserted_at: timestamp, updated_at: timestamp],
      [abbreviation: "fl oz", unit: "fluid ounce", standard: "U.S.", inserted_at: timestamp, updated_at: timestamp],
      [abbreviation: "cup", unit: "cup", standard: "U.S.", inserted_at: timestamp, updated_at: timestamp],
      [abbreviation: "pt", unit: "pint", standard: "U.S.", inserted_at: timestamp, updated_at: timestamp],
      [abbreviation: "qt", unit: "quart", standard: "U.S.", inserted_at: timestamp, updated_at: timestamp],
      [abbreviation: "gal", unit: "gallon", standard: "U.S.", inserted_at: timestamp, updated_at: timestamp],
      [abbreviation: "lb", unit: "pound", standard: "U.S.", inserted_at: timestamp, updated_at: timestamp],
      [abbreviation: "l", unit: "liter", standard: "Metric", inserted_at: timestamp, updated_at: timestamp],
      [abbreviation: "ml", unit: "milliliter", standard: "Metric", inserted_at: timestamp, updated_at: timestamp],
      [abbreviation: "g", unit: "grams", standard: "Metric", inserted_at: timestamp, updated_at: timestamp],
      [abbreviation: "kg", unit: "kilograms", standard: "Metric", inserted_at: timestamp, updated_at: timestamp],
    ]

    Repo.insert_all(Unit, units)
  end
end

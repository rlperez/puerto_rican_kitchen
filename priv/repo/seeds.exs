# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PuertoRicanKitchen.Repo.insert!(%PuertoRicanKitchen.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias PuertoRicanKitchen.Repo
alias PuertoRicanKitchen.Unit

# Units
Repo.insert! %Unit{abbreviation: "tsp", unit: "teaspoon", standard: "U.S."}
Repo.insert! %Unit{abbreviation: "tbsp", unit: "tablespoon", standard: "U.S."}
Repo.insert! %Unit{abbreviation: "oz", unit: "ounces", standard: "U.S."}
Repo.insert! %Unit{abbreviation: "fl oz", unit: "fluid ounce", standard: "U.S."}
Repo.insert! %Unit{abbreviation: "cup", unit: "cup", standard: "U.S."}
Repo.insert! %Unit{abbreviation: "pt", unit: "pint", standard: "U.S."}
Repo.insert! %Unit{abbreviation: "qt", unit: "quart", standard: "U.S."}
Repo.insert! %Unit{abbreviation: "gal", unit: "gallon", standard: "U.S."}
Repo.insert! %Unit{abbreviation: "lb", unit: "pound", standard: "U.S."}
Repo.insert! %Unit{abbreviation: "l", unit: "liter", standard: "Metric"}
Repo.insert! %Unit{abbreviation: "ml", unit: "milliliter", standard: "Metric"}
Repo.insert! %Unit{abbreviation: "g", unit: "grams", standard: "Metric"}
Repo.insert! %Unit{abbreviation: "kg", unit: "kilograms", standard: "Metric"}

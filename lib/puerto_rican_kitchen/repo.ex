defmodule PuertoRicanKitchen.Repo do
  use Ecto.Repo,
    otp_app: :puerto_rican_kitchen,
    adapter: Ecto.Adapters.Postgres
end

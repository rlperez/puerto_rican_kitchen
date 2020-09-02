# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :puerto_rican_kitchen,
  ecto_repos: [PuertoRicanKitchen.Repo]

# Configures the endpoint
config :puerto_rican_kitchen, PuertoRicanKitchenWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "50iNN1Ze7AMko+bahQeL8yoC4tg+1M+S2fFPXdkrw8SaD2wWygcqPhhn0c82H9Gj",
  render_errors: [view: PuertoRicanKitchenWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PuertoRicanKitchen.PubSub,
  live_view: [signing_salt: "eiBN/UuJ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

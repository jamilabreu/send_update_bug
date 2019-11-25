# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :send_update,
  generators: [binary_id: true]

# Configures the endpoint
config :send_update, SendUpdateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LsBwrPL6DL6VxZ1Yp1JZiAOx/oQT6Jfcle2MfO6NN82TWylbuRMdevioGMVOLzqG",
  render_errors: [view: SendUpdateWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SendUpdate.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "SECRET_SALT"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

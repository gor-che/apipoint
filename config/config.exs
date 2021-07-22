# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :apipoint,
  ecto_repos: [Apipoint.Repo]

# Configures the endpoint
config :apipoint, ApipointWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/SJgktSNVrksF3YtHb4uHepDymq2C9Fz+wELzzRgDn1F+CVMQFMvKRVoVd2sRH1B",
  render_errors: [view: ApipointWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Apipoint.PubSub,
  live_view: [signing_salt: "mFhN9wX4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

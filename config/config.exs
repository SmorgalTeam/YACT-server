# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fraction_server,
  ecto_repos: [FractionServer.Repo]

# Configures the endpoint
config :fraction_server, FractionServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "z0Lbbv3KWJllQlJcqUL2fQ0Fs5QhVFXC7iXMqa5N+MK3OKa9t71vH1FRN1BiUNpp",
  render_errors: [view: FractionServerWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: FractionServer.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "5e8tl+aJ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

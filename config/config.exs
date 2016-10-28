# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :stellarfleet_server,
  ecto_repos: [StellarfleetServer.Repo]

# Configures the endpoint
config :stellarfleet_server, StellarfleetServer.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CLks4NLj9zi3eYp8bjjA/meHasso0x88r/frngJkVy5CVoYG6pnXs/JYNzoSlvlt",
  render_errors: [view: StellarfleetServer.ErrorView, accepts: ~w(html json)],
  pubsub: [name: StellarfleetServer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :learn_graphql,
  ecto_repos: [LearnGraphql.Repo]

# Configures the endpoint
config :learn_graphql, LearnGraphqlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bCIDnfdH8eilTiGU1K11AhWBiLx5u7iR1nRgiyWk+yDOsx1GJu0ZEb8SeMwSU+f0",
  render_errors: [view: LearnGraphqlWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: LearnGraphql.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

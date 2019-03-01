use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :learn_graphql, LearnGraphqlWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :learn_graphql, LearnGraphql.Repo,
  username: "postgres",
  password: "postgres",
  database: "learn_graphql_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

defmodule LearnGraphql.Repo do
  use Ecto.Repo,
    otp_app: :learn_graphql,
    adapter: Ecto.Adapters.Postgres
end

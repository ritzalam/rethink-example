# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rethink_example,
  ecto_repos: [RethinkExample.Repo]

# Configures the endpoint
config :rethink_example, RethinkExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Xiz72jlJGrvqQHDT9rQpJwOgOOj42rT1Vdu/0LO7DRDK2g+qvr+xwHtlulWpqh6Y",
  render_errors: [view: RethinkExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RethinkExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ex_twitter,
  ecto_repos: [ExTwitter.Repo]

# Configures the endpoint
config :ex_twitter, ExTwitterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u6xlarz3dh1ZStYvlWZLUgx8hUcosLyyOP5kbbnKa+3p0U50dSQ75iTGKjZNL5Je",
  render_errors: [view: ExTwitterWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ExTwitter.PubSub,
  live_view: [signing_salt: "EIJTSYrF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

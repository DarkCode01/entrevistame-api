# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :entrevistame_api,
  ecto_repos: [EntrevistameApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :entrevistame_api, EntrevistameApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "peHXNZitnveRLr6iORmXcwiO2GiH91yOHk0MJBglEOrNKaZRiRqGQgfa0OmGLR1l",
  render_errors: [view: EntrevistameApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: EntrevistameApi.PubSub,
  live_view: [signing_salt: "jo2WX1/2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :ueberauth, Ueberauth,
  providers: [
    github: {Ueberauth.Strategy.Github, []}
  ]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: System.get_env("GITHUB_CLIENT_ID"),
  client_secret: System.get_env("GITHUB_CLIENT_SECRET")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

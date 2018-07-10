# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :resume_generator,
  ecto_repos: [ResumeGenerator.Repo]

# Configures the endpoint
config :resume_generator, ResumeGeneratorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EF2loGSclWwA3HaVnQQukVglRHzWYj8I21ZavqczRwx4ET1igZA3TmWCmqxPbj39",
  render_errors: [view: ResumeGeneratorWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ResumeGenerator.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

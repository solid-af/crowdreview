# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :crowdreview_web,
  namespace: CrowdReview.Web

# Configures the endpoint
config :crowdreview_web, CrowdReview.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sEjiOUyez6PyHkCH0tF+OccN1I4yEm0QnJOk+sGw8/lH4RLwifbpkMAKrf8ORPCX",
  render_errors: [view: CrowdReview.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CrowdReview.Web.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

use Mix.Config

# Configure your database
config :crowdreview, CrowdReview.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "crowdreview_dev",
  hostname: "localhost",
  pool_size: 10

use Mix.Config

config :crowdreview, ecto_repos: [CrowdReview.Repo]

import_config "#{Mix.env}.exs"

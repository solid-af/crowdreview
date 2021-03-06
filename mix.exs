defmodule CrowdReview.Umbrella.Mixfile do
  @moduledoc """
  Set up top level dependencies for the project.
  """
  use Mix.Project

  def project do
    [apps_path: "apps",
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options.
  #
  # Dependencies listed here are available only for this project
  # and cannot be accessed from applications inside the apps folder
  defp deps do
    [
      {:mix_test_watch, "~> 0.3", only: :dev, runtime: false},
      {:credo, "~> 0.7", only: [:dev, :test]}
    ]
  end
end

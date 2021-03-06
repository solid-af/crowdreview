defmodule CrowdReview.Web.Application do
  @moduledoc """
  The CrowdReview web application.

  The crowdreview web api lives in this application.

  Exposes API to clients such as the `Main.elm` application.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the endpoint when the application starts
      supervisor(CrowdReview.Web.Endpoint, []),
      # Start your own worker by calling: CrowdReview.Web.Worker.start_link(arg1, arg2, arg3)
      # worker(CrowdReview.Web.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CrowdReview.Web.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

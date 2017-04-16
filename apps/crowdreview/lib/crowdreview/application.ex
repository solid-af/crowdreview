defmodule CrowdReview.Application do
  @moduledoc """
  The CrowdReview Application Service.

  The crowdreview system business domain lives in this application.

  Exposes API to clients such as the `CrowdReview.Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([

    ], strategy: :one_for_one, name: CrowdReview.Supervisor)
  end
end

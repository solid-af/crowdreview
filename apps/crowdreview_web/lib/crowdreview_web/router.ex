defmodule CrowdReview.Web.Router do
  use CrowdReview.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CrowdReview.Web do
    pipe_through :api
  end
end

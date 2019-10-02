defmodule CalorieTracker.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      CalorieTracker.Repo,
      # Start the endpoint when the application starts
      CalorieTrackerWeb.Endpoint
      # Starts a worker by calling: CalorieTracker.Worker.start_link(arg)
      # {CalorieTracker.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CalorieTracker.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    CalorieTrackerWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

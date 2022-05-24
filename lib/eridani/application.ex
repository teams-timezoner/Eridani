defmodule Eridani.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Eridani.Repo,
      # Start the Telemetry supervisor
      EridaniWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Eridani.PubSub},
      # Start the Endpoint (http/https)
      EridaniWeb.Endpoint
      # Start a worker by calling: Eridani.Worker.start_link(arg)
      # {Eridani.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Eridani.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    EridaniWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

defmodule PolishedWave.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the PubSub system
      {Phoenix.PubSub, name: PolishedWave.PubSub}
      # Start a worker by calling: PolishedWave.Worker.start_link(arg)
      # {PolishedWave.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: PolishedWave.Supervisor)
  end
end

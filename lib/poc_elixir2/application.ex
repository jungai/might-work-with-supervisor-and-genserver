defmodule PocElixir2.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  # @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: PocElixir2.Worker.start_link(arg)
      # {Task.Cron, []},
      # {Task.Bot, []}
      Task.Cron,
      Task.Bot
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end

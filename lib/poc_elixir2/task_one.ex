defmodule Task.Cron do
  use GenServer

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, opts)
  end

  def init(state) do
    IO.puts("hello task one")
    {:ok, state}
  end
end

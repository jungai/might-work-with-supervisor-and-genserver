defmodule Task.Bot do
  use GenServer

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, opts)
  end

  def init(state) do
    IO.puts("hello task two")
    {:ok, state}
  end
end

defmodule PocElixir2Test do
  use ExUnit.Case
  doctest PocElixir2

  test "greets the world" do
    assert PocElixir2.hello() == :world
  end
end

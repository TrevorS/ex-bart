defmodule ExBartTest do
  use ExUnit.Case
  doctest ExBart

  test "greets the world" do
    assert ExBart.hello() == :world
  end
end

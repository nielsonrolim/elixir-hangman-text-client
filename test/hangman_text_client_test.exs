defmodule HangmanTextClientTest do
  use ExUnit.Case
  doctest HangmanTextClient

  test "greets the world" do
    assert HangmanTextClient.hello() == :world
  end
end

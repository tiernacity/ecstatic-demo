defmodule EcstaticDemoTest do
  use ExUnit.Case
  doctest EcstaticDemo

  test "greets the world" do
    assert EcstaticDemo.hello() == :world
  end
end

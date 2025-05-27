defmodule NodeActivator.UtilTest do
  use ExUnit.Case
  doctest NodeActivator.Util

  test "succeed generate_node_name/1 always" do
    assert NodeActivator.Util.generate_node_name("test") |> elem(0) == :ok
  end
end

defmodule FiboTest do
  use ExUnit.Case

  describe "fibonacci/1" do
    test "8이 들어오면 21이 나온다"
    assert Fib.find(8) == 21
  end
end

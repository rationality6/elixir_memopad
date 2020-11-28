defmodule Factorial do
  @moduledoc """
    Yor task is to write function factorial
  """
  def factorial(n) do
    factorial_tail(n, 1)
  end

  defp factorial_tail(0, acc) do
    acc
  end

  defp factorial_tail(n, acc) do
    factorial_tail(n - 1, acc * n)
  end
end

ExUnit.start()

defmodule FactorialTest do
  use ExUnit.Case
  require Factorial

  defp testing(n, exp) do
    result = Factorial.factorial(n)
    assert result == exp
  end

  test "basic tests" do
    testing(0, 1)
    testing(1, 1)
    testing(4, 24)
    testing(7, 5040)
    testing(17, 355_687_428_096_000)
  end
end

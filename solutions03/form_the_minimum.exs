defmodule Solution do
  @moduledoc """
    Given a list of digits, return the smallest number
    that could be formed from these digits,
    using the digits only once (ignore duplicates).
  """
  def answer(numbers) do
    Enum.uniq(numbers)
    |> Enum.sort()
    |> Enum.reduce("", fn a, acc -> acc <> "#{a}" end)
    |> String.to_integer()
  end

  def minValue(numbers) do
    numbers
    |> Enum.uniq()
    |> Enum.sort()
    |> Integer.undigits()
  end
end

ExUnit.start()

defmodule SolutionTest do
  use ExUnit.Case
  require Solution

  describe "유닛 테스트" do
    test "테스트00" do
      assert(Solution.answer([1, 3, 1]) == 13)
      assert(Solution.answer([4, 5, 4, 7]) == 457)
      assert(Solution.answer([4, 8, 1, 4]) == 148)
      assert(Solution.answer([5, 7, 9, 5, 7, 7]) == 579)
      assert(Solution.answer([6, 7, 8, 7, 6, 6]) == 678)
    end
  end
end

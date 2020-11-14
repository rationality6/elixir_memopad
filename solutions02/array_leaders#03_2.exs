defmodule Solution do
  @moduledoc """
      An element is leader if it is greater
      than The Sum all the elements to
      its right side.

      Given an array/list [] of integers,
      Find all the LEADERS in the array.
  """
  def answer([]), do: []

  def answer([head | tails]) do
    if head > Enum.sum(tails) do
      [head] ++ answer(tails)
    else
      answer(tails)
    end
  end
end

ExUnit.start()

defmodule SolutionTest do
  use ExUnit.Case
  require Solution

  defp testing(arr, exp) do
    actual = Solution.answer(arr)
    assert(actual == exp)
  end

  describe "유닛 테스트" do
    test "테스트00" do
      input = [1, 2, 3, 4, 0]
      output = [4]
      assert(Solution.answer(input) == output)
    end

    test "테스트01" do
      input = [16, 17, 4, 3, 5, 2]
      output = [17, 5, 2]
      assert(Solution.answer(input) == output)
    end

    test "테스트02" do
      input = [-1, -29, -26, -2]
      output = [-1]
      assert(Solution.answer(input) == output)
    end

    test "basic tests" do
      testing([1, 2, 3, 4, 0], [4])
      testing([16, 17, 4, 3, 5, 2], [17, 5, 2])
      testing([-1, -29, -26, -2], [-1])
      testing([-36, -12, -27], [-36, -12])
      testing([5, -2, 2], [5, 2])
      testing([0, -1, -29, 3, 2], [0, -1, 3, 2])
    end
  end
end

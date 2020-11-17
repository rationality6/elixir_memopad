defmodule MinimumSteps do
  @moduledoc """
    Given an array of N integers,
    you have to find how many times you have to add up
    the smallest numbers in the array until
    their Sum becomes greater or equal to K.

  """
  def minimum_steps(list, num) do
    sorted_list =
      list
      |> Enum.sort()

    minimum_steps_find(sorted_list, num, 0, 0)
  end

  def minimum_steps_find(_, num, acc, count) when acc >= num do
    count - 1
  end

  def minimum_steps_find([hd | tails], num, acc, count) do
    minimum_steps_find(tails, num, acc + hd, count + 1)
  end
end

ExUnit.start()

defmodule SolutionTest do
  use ExUnit.Case
  require Solution

  defp testing(nums, value, exp) do
    result = Solution.answer(nums, value)
    assert(result == exp)
  end

  describe "최종 테스트" do
    test "최종 테스트00" do
      testing([4, 6, 3], 7, 1)
      testing([10, 9, 9, 8], 17, 1)
      testing([8, 9, 10, 4, 2], 23, 3)
      testing([19, 98, 69, 28, 75, 45, 17, 98, 67], 464, 8)
      testing([4, 6, 3], 2, 0)
    end
  end
end

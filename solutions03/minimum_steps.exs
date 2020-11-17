defmodule Solution do
  @moduledoc """
    Given an array of N integers,
    you have to find how many times you have to add up
    the smallest numbers in the array until
    their Sum becomes greater or equal to K.

  """
  def answer(리스트, 수) do
    정렬_리스트 =
      리스트
      |> Enum.sort()

    minimum_steps(정렬_리스트, 수, 0, 0)
  end

  def minimum_steps(_, 수, 누산, 카운트) when 누산 >= 수 do
    카운트 - 1
  end

  def minimum_steps([hd | tails], 수, 누산, 카운트) do
    minimum_steps(tails, 수, 누산 + hd, 카운트 + 1)
  end

  def minimum_steps02(nums, value) do
    nums
    |> Enum.sort()
    |> Enum.scan(0, &Kernel.+/2)
    |> Enum.find_index(&(&1 >= value))
  end
end

ExUnit.start()

defmodule SolutionTest do
  use ExUnit.Case
  require Solution

  defp testing(func, nums, value, exp) do
    result = func.(nums, value)
    assert(result == exp)
  end

  describe "최종 테스트" do
    test "최종 테스트00" do
      func0 = &Solution.answer/2
      testing(func0, [4, 6, 3], 7, 1)
      testing(func0, [10, 9, 9, 8], 17, 1)
      testing(func0, [8, 9, 10, 4, 2], 23, 3)
      testing(func0, [19, 98, 69, 28, 75, 45, 17, 98, 67], 464, 8)
      testing(func0, [4, 6, 3], 2, 0)
    end

    test "최종 테스트02" do
      func0 = &Solution.minimum_steps02/2
      testing(func0, [4, 6, 3], 7, 1)
      testing(func0, [10, 9, 9, 8], 17, 1)
      testing(func0, [8, 9, 10, 4, 2], 23, 3)
      testing(func0, [19, 98, 69, 28, 75, 45, 17, 98, 67], 464, 8)
      testing(func0, [4, 6, 3], 2, 0)
    end
  end
end

defmodule Solution do
  @moduledoc """
    Several people are standing in a row divided into two teams.
    The first person goes into team 1,
    the second goes into team 2,
    the third goes into team 1,
    and so on.
  """
  def divide_weights(list) do
    {Enum.sum(홀수들(list)), Enum.sum(짝수들(list))}
  end

  def 홀수들(list), do: Enum.take_every(list, 2)
  def 짝수들(list), do: Enum.drop_every(list, 2)
end

ExUnit.start()

defmodule SolutionTest do
  use ExUnit.Case
  require Solution

  describe "양쪽 무게 나누기" do
    test "divide_weights test" do
      assert(Solution.divide_weights([39, 84, 74, 18, 59, 72, 35, 61]) == {207, 235})
    end

    test "잘 나눠졌니? 02" do
      assert(Solution.divide_weights([100, 51, 50, 100]) == {150, 151})
    end
  end

  describe "모듈 테스트" do
    test "홀수 테스트" do
      assert(Solution.홀수들([1, 2, 3, 4, 5, 6]) == [1, 3, 5])
    end

    test "짝수 테스트" do
      assert(Solution.짝수들([1, 2, 3, 4, 5, 6]) == [2, 4, 6])
    end
  end
end

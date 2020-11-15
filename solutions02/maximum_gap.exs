defmodule Solution do
  @moduledoc """
    Task

    Given an array/list [] of integerss,
    Find The maximum difference between the successive elements in its sorted form.
  """
  def answer(수들) do
    수들
    |> Enum.sort()
    |> Enum.chunk_every(2, 1)
    |> Enum.filter(fn pair -> length(pair) == 2 end)
    |> Enum.map(fn [a, b] -> b - a end)
    |> Enum.max()
  end
end

ExUnit.start()

defmodule SolutionTest do
  use ExUnit.Case
  require Solution

  defp testing(nums, exp) do
    result = Solution.answer(nums)
    assert result == exp
  end

  describe "최종 테스트" do
    test "최종 테스트00" do
      testing([13, 10, 2, 9, 5], 4)
      testing([13, 3, 5], 8)
      testing([24, 299, 131, 14, 26, 25], 168)
      testing([-3, -27, -4, -2], 23)
      testing([-7, -42, -809, -14, -12], 767)
      testing([12, -5, -7, 0, 290], 278)
      testing([-54, 37, 0, 64, -15, 640, 0], 576)
      testing([130, 30, 50], 80)
      testing([1, 1, 1], 0)
      testing([-1, -1, -1], 0)
    end
  end
end

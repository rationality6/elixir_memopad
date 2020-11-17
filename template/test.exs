defmodule Solution do
  @moduledoc """
    헬로월드
  """
  def answer() do
    "foobar"
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

  describe "유닛 테스트" do
    test "테스트00" do
      func0 = &Solution.answer/2
      input = []
      output = []
      testing(func0, input, output)
    end

    test "테스트01" do
      func0 = &Solution.answer/2
      input = []
      output = []
      testing(func0, input, output)
    end
  end

  describe "최종 테스트" do
    test "최종 테스트00" do
      func0 = &Solution.answer/2
      input = []
      output = []
      testing(func0, input, output)
    end
  end
end

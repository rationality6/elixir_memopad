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

  defp testing(nums, value, exps) do
    result = Solution.answer(nums, value)
    assert result == exps
  end

  describe "유닛 테스트" do
    test "테스트00" do
      input = []
      output = []
      assert(Solution.answer(input) == output)
    end

    test "테스트01" do
      input = []
      output = []
      assert(Solution.answer(input) == output)
    end
  end

  describe "최종 테스트" do
    test "최종 테스트00" do
      input = []
      output = []
      assert(Solution.answer(input) == output)
    end
  end
end

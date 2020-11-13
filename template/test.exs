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

  describe "유닛 테스트" do
    test "테스트00" do
      assert(Solution.answer() == "foobar")
    end

    test "테스트01" do
      assert(1 == 1)
    end
  end
end

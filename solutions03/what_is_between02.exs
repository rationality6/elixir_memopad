defmodule Solution do
  @moduledoc """
    Complete the function that takes two integers
    (a, b, where a < b) and return an array of all
    integers between the input parameters, including them.
  """
  def answer(a,b) do
    a..b
    |>Enum.to_list()
  end
end

ExUnit.start()

defmodule SolutionTest do
  use ExUnit.Case
  require Solution

  describe "유닛 테스트" do
    test "테스트00" do
      assert Solution.answer(0,3) == [0,1,2,3]
      assert Solution.answer(-2,2) == [-2,-1,0,1,2]
      assert Solution.answer(-10,10) == [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10]
    end
  end

end

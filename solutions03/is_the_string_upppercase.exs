defmodule Solution do
  @moduledoc """
    Create a method upper_case?
    to see whether the string
    is ALL CAPS. For example:
  """
  def answer?(str) do
    str == String.upcase(str)
  end
  def answer?(str) do
    str == String.upcase(str)
  end
end

ExUnit.start()

defmodule SolutionTest do
  use ExUnit.Case
  require Solution

  describe "유닛 테스트" do
    test "테스트00" do
      assert Solution.answer?("") == true
      assert Solution.answer?("c") == false
      assert Solution.answer?("C") == true
      assert Solution.answer?("hello I AM DONALD") == false
      assert Solution.answer?("HELLO I AM DONALD") == true
      assert Solution.answer?("ACSKLDFJSgSKLDFJSKLDFJ") == false
      assert Solution.answer?("ACSKLDFJSGSKLDFJSKLDFJ") == true
    end
  end
end

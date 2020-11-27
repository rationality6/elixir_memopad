defmodule Solution do
  @moduledoc """
    Create a method upper_case?
    to see whether the string
    is ALL CAPS. For example:
  """
  def answer(str) do
    "foobar"
  end
end

ExUnit.start()

defmodule SolutionTest do
  use ExUnit.Case
  require Solution

  describe "유닛 테스트" do
    test "테스트00" do
      assert upper_case?("") == true
      assert upper_case?("c") == false
      assert upper_case?("C") == true
      assert upper_case?("hello I AM DONALD") == false
      assert upper_case?("HELLO I AM DONALD") == true
      assert upper_case?("ACSKLDFJSgSKLDFJSKLDFJ") == false
      assert upper_case?("ACSKLDFJSGSKLDFJSKLDFJ") == true
    end
  end
end

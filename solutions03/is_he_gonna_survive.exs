defmodule Solution do
  @moduledoc """
    A hero is on his way to the castle
    to complete his mission. However,
    he's been told that the castle is
    surrounded with a couple of powerful
    dragons! each dragon takes 2 bullets
    to be defeated, our hero has no idea
    how many bullets he should carry..
    Assuming he's gonna grab a specific
    given number of bullets and move forward
    to fight another specific given number
    of dragons, will he survive?
  """
  def answer(bullets, dragons) do
    (dragons - bullets / 2)
    |> Kernel.<=(0)
    |> IO.inspect()
  end
end

ExUnit.start()

defmodule SolutionTest do
  use ExUnit.Case
  require Solution

  describe "유닛 테스트" do
    test "테스트00" do
      assert Solution.answer(10, 5) == true
      assert Solution.answer(7, 4) == false
      assert Solution.answer(4, 5) == false
      assert Solution.answer(100, 40) == true
      assert Solution.answer(1500, 751) == false
      assert Solution.answer(0, 1) == false
    end
  end
end

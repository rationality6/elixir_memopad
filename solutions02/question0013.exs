defmodule Solution do
  @moduledoc """
    코딩을 잠깐 배우다가 다시 시작했습니다.

    문제를 푸는데

    1부터 n까지의 수 중에서 홀수의 합과 짝수의 합 그리고 3의 배수의 합 을 각각 출력하는 문장을 만들고 싶은데

    각각 어떻게 만드는 게 가장 깔끔한가요?

    n은 사용자의 입력을 받는 값 입니다.!!
  """

  def answer(n) do
    list0 = 1..n
    list1 = 0..n

    "홀수합: #{홀수합(list0)} 짝수합: #{짝수합(list0)} 세배수의합: #{세배수의합(list1)}"
  end

  def 홀수합(리스트), do: Enum.take_every(리스트, 2) |> Enum.sum()
  def 짝수합(리스트), do: Enum.drop_every(리스트, 2) |> Enum.sum()
  def 세배수의합(리스트), do: Enum.take_every(리스트, 3) |> Enum.sum()
end

ExUnit.start()

defmodule SolutionTest do
  use ExUnit.Case
  require Solution

  describe "유닛 테스트" do
    test "홀수합" do
      assert(Solution.홀수합(1..6) == 9)
    end

    test "짝수합" do
      assert(Solution.짝수합(1..6) == 12)
    end

    test "세배수의합" do
      assert(Solution.세배수의합(0..9) == 18)
    end

    test "최종" do
      assert(Solution.answer(9) == "홀수합: 25 짝수합: 20 세배수의합: 18")
    end
  end
end


0..5 |> Enum.take_every(2) |> Enum.sum() |> IO.inspect()

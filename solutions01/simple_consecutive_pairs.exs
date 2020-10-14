defmodule Kata do
  @moduledoc """

  In this Kata your task will be to return the count of pairs that have consecutive numbers as follows:

  pairs([1,2,5,8,-4,-3,7,6,5]) = 3
  The pairs are selected as follows [(1,2),(5,8),(-4,-3),(7,6),5]
  --the first pair is (1,2) and the numbers in the pair are consecutive; Count = 1
  --the second pair is (5,8) and are not consecutive
  --the third pair is (-4,-3), consecutive. Count = 2
  --the fourth pair is (7,6), also consecutive. Count = 3.
  --the last digit has no pair, so we ignore.
  More examples in the test cases.

  """
  def pairs(ls) do
    # TODO: working solution
    ls
    |> Enum.chunk_every(2, 2, :discard)
    |> Enum.count(fn [x, y] -> abs(x - y) == 1 end)
  end

  def pairs01([]), do: 0
  def pairs01([_]), do: 0

  def pairs01([a, b | cs]) do
    count = if abs(a - b) == 1, do: 1, else: 0
    count + pairs01(cs)
  end
end

[1, 2, 5, 8, -4, -3, 7, 6, 5]
|> Kata.pairs()
|> IO.inspect()

[1, 2, 5, 8, -4, -3, 7, 6, 5]
|> Kata.pairs01()
|> IO.inspect()

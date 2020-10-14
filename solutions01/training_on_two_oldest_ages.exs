defmodule Solution do
  @moduledoc """
    The two oldest ages function/method needs to be completed.
    It should take an array of numbers as its argument and return
    the two highest numbers within the array. The returned value should be an array in the format [second oldest age, oldest age].

    The order of the numbers passed in could be any order. The array will always include at least 2 items.
  """
  @spec two_oldest_ages(integer()) :: list()
  def two_oldest_ages(ages) do
    ages
    |> Enum.sort(fn a, b -> a > b end)
    |> Enum.reverse()
    |> Enum.take(-2)
  end
end

[6, 5, 83, 5, 3, 18]
|> Solution.two_oldest_ages()
|> IO.inspect()

[39, 53, 83, 51, 59, 61, 95, 23, 99, 49]
|> Solution.two_oldest_ages()
|> IO.inspect(charlists: :as_lists)

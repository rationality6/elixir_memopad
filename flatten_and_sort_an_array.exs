defmodule Solution do
  def solution(list) do
    list
    |> List.flatten()
    |> Enum.sort()
  end

  def solution_desc(list) do
    list
    |> List.flatten()
    |> Enum.sort(fn a, b -> a > b end)
  end
end

[[3, 2, 1], [4, 6, 5], [], [9, 7, 8]]
|> Solution.solution()
|> IO.inspect()

[[3, 2, 1], [4, 6, 5], [], [9, 7, 8]]
|> Solution.solution_desc()
|> IO.inspect()

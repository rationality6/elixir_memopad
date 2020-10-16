defmodule RemoveDuplicates do
  def solve(list) do
  list
  |> Enum.reverse
  |> Enum.uniq
  |> Enum.reverse
  end
end

[3, 4, 4, 3, 6, 2]
|> RemoveDuplicates.solve()
|> IO.inspect()

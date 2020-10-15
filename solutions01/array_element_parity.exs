defmodule Solution do
  def solve(l) do
    l
    |> Enum.uniq()
    |> IO.inspect()
    |> Enum.sum()
  end
end

[1, -1, 2, -2, 3]
|> Solution.solve()
|> IO.inspect()

# 3

[-9, -105, -9, -9, -9, -9, 105]
|> Solution.solve()
|> IO.inspect()

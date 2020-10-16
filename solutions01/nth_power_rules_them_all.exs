defmodule NthPower do
  def modified_sum(a, b) do
    Enum.map(a, fn a -> :math.pow(a, b) end)
    |> Enum.sum()
    |> Kernel.-(Enum.sum(a))
    |> floor
  end
end

NthPower.modified_sum([1, 2, 3], 3)
|> IO.inspect()

NthPower.modified_sum([1, 2], 5)
|> IO.inspect()

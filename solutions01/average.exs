defmodule Math do
  def average(list), do: Enum.sum(list) / Enum.count(list)
end

[1, 2, 3, 4, 5, 6]
|> Math.average()
|> IO.inspect()

[1, 2, 3, 4, 5]
|> Enum.count()
|> IO.inspect()

"foobar"
|> String.length()
|> IO.inspect()

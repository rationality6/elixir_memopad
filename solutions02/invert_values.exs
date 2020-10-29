defmodule Inverter do
  def invert(list) do
    list |> Enum.map(fn item -> item * -1 end)
  end
end

[1, 2, 3, 4, 5]
|> Inverter.invert()
|> IO.inspect()

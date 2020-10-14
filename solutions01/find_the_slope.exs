defmodule SloppyMath do
  def slope([x1, _, x2, _]) when x2 == x1, do: "undefined"
  def slope([x1, y1, x2, y2]), do: to_string(div(y2 - y1, x2 - x1))
end

[10, 50, 30, 150]
|> SloppyMath.slope()
|> IO.inspect()

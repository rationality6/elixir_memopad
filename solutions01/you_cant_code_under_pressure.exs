defmodule SimpleMath do
  def double_integer(x) do
    x * 2
  end
end

3
|> SimpleMath.double_integer()
|> IO.inspect()

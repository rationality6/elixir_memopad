defmodule SimpleMath do
  # Write the "square"-function here
  def square(num) do
    num * num
  end
end

5
|> SimpleMath.square()
|> IO.inspect()

defmodule Practice do
  def facto(num) when num <= 0 do
    1
  end

  def facto(num) do
    result = num * facto(num - 1)
    IO.inspect(result)
    result
  end
end

Practice.facto(5)

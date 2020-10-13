defmodule Prac do
  def facto(num) do
    facto(num, 1)
  end

  def facto(0, cur) do
    cur
  end

  def facto(num, cur) do
    facto(num - 1, num * cur)
  end
end

5
|> Prac.facto()
|> IO.inspect()

defmodule Codewars.Heronizer do
  def no_boring_zeros(0) do
    0
  end

  def no_boring_zeros(num) when rem(num, 10) == 0 do
    no_boring_zeros(div(num, 10))
  end

  def no_boring_zeros(num) do
    num
  end
end

n = 1400

(n / 10)
|> IO.inspect()

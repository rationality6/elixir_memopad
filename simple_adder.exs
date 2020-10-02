defmodule Calculation do
  def adder(num) do
    num + 1
  end

  def sub(num) do
    num - 1
  end
end

x = 1
IO.inspect(x)
x = Calculation.adder(x)
IO.inspect(x)
x = Calculation.adder(x)
x = Calculation.adder(x)
IO.inspect(x)
x = Calculation.adder(x)
x = Calculation.adder(x)
x = Calculation.adder(x)
IO.inspect(x)

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

IO.inspect("foo")

defmodule Kata do
  def sum_digits(number) do
    Kernel.abs(number)
    |> Integer.digits()
    |> Enum.sum()
  end
end

Kata.sum_digits(-10)
|> IO.inspect()

Kata.sum_digits(38)
|> IO.inspect()

defmodule CheckForFactor do
  def check_for_factor(base, factor) do
    rem(base, factor) == 0
  end
end

CheckForFactor.check_for_factor(10, 2)
|> IO.inspect()

CheckForFactor.check_for_factor(63, 7)
|> IO.inspect()

CheckForFactor.check_for_factor(2450, 5)
|> IO.inspect()

CheckForFactor.check_for_factor(24612, 3)
|> IO.inspect()

CheckForFactor.check_for_factor(3, 24612)
|> IO.inspect()

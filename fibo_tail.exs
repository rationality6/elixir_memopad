defmodule Fibonacci do
  def fib_find(nth) do
    list = [1, 1]
    fib_normal(list, nth)
  end

  def fib_normal(list, 2) do
    list
  end

  def fib_normal(list, nth) do
    fib_normal([hd(list) + hd(tl(list))] ++ list, nth - 1)
  end
end

5
|> Fibonacci.fib_find()
|> IO.inspect()

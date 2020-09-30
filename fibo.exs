defmodule Fib do
  def fib(a, _, 0) do
    a
  end

  def fib(a, b, n) do
    fib(b, a + b, n - 1)
  end
end

IO.puts(Fib.fib(1, 1, 7))

defmodule Fibonacci do
  def find(nth) do
    list = [1, 1]
    fib(list, nth)
  end

  def fib(list, 2) do
    Enum.reverse(list)
  end

  def fib(list, n) do
    fib([hd(list) + hd(tl(list))] ++ list, n - 1)
  end
end

IO.inspect(Fibonacci.find(10))

defmodule Fibonacci_list_tail do
  def find(nth) do
    list = [1, 1]
    fib(list, nth)
  end

  def fib(list, 2) do
    Enum.reverse(list)
  end

  def fib(list, nth) do
    fib([hd(list) + hd(tl(list))] ++ list, nth - 1)
  end
end

IO.inspect(Fibonacci.find(55))

list = [1, 2, 2, 3] ++ [5]
IO.inspect(hd(tl(list)))

defmodule Fib do
  def find(0), do: 0
  def find(1), do: 1

  def find(nth) do
    find(nth - 1) + find(nth - 2)
  end
end

IO.inspect(Fib.find(20))

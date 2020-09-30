defmodule Fibo do
  def fibonacci(num) do
    fibonacci(num, 1)
  end

  def fibonacci(0, cur) do
    cur
  end

  def fibonacci(num, cur) do
    fibonacci(num - 1, cur) + fibonacci(num - 2, cur)
  end
end

IO.inspect(Fibo.fibonacci(10))

IO.inspect(Fibo.fibonacci(10))

defmodule Practice do
  def fact_tail_recur(num) do
    IO.inspect(num)
    fact_tail_recur(num, 1)
  end

  def fact_tail_recur(0, cur) do
    IO.inspect(cur)
    cur
  end

  def fact_tail_recur(num, cur) do
    fact_tail_recur(num - 1, cur * num)
  end
end

IO.inspect(Practice.fact_tail_recur(5))

defmodule Factorial do
  def tail_recursive_factorial(n), do: tail_recursive_factorial(n, 1)
  defp tail_recursive_factorial(0, acc), do: acc
  defp tail_recursive_factorial(n, acc), do: tail_recursive_factorial(n - 1, acc * n)
end

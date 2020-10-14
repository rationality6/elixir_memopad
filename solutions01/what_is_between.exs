defmodule Kata do
  def between_recursion_desc(a, b) do
    # your code here
    list = []
    between_recursion_desc(a, b, list)
  end

  def between_recursion_desc(a, b, list) when b < a, do: list

  def between_recursion_desc(a, b, list) do
    between_recursion_desc(a, b - 1, [b] ++ list)
  end

  def between(a, b) do
    Enum.to_list(a..b)
  end

  def between_recursion(a, b) when a == b do
    [a]
  end

  def between_recursion(a, b) do
    [a] ++ between_recursion(a + 1, b)
  end
end

Kata.between_recursion_desc(1, 4)
|> IO.inspect()

Kata.between_recursion(1, 4)
|> IO.inspect()

Kata.between(1, 4)
|> IO.inspect()

list0 = [1, 2, 3, 4]
[a | b] = list0

Kernel.hd(tl(list0))
|> IO.inspect()

IO.inspect(a)
IO.inspect(b)

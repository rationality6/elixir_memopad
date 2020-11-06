defmodule Loop do
  def recur(num), do: recur(num, 0)
  def recur(0, count), do: count
  def recur(num, count), do: recur(num - 1, count + 1)

  def adder(num, count) when count < num, do: adder(num, count + 1)
  def adder(num, count), do: count

  def for_style do
    for i <- 1..5 do
      IO.inspect(i)
    end
  end
end

Loop.recur(5) |> IO.inspect()
Loop.adder(5, 0) |> IO.inspect()
Loop.for_style()

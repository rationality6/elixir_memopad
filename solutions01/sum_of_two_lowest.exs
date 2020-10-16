defmodule SmallSummer do
  def sum_two_smallest_numbers01(numbers) do
    [head, second | _tail] = numbers |> Enum.sort()
    head + second
  end

  def sum_two_smallest_numbers(numbers) do
    numbers |> Enum.sort() |> Enum.take(2) |> Enum.sum()
  end
end

[5, 8, 12, 22, 19]
|> SmallSummer.sum_two_smallest_numbers()
|> IO.inspect()

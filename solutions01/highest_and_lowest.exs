defmodule Kata do
  def high_and_low(s) do
    # TODO: working solution
    numbers =
      s
      |> String.split()
      |> Enum.map(&String.to_integer(&1))
      |> Enum.sort()
      |> Enum.reverse()

    "#{hd(numbers)} #{List.last(numbers)}"
  end
end

"4 5 29 54 4 0 -214 542 -64 1 -3 6 -6"
|> Kata.high_and_low()
|> IO.inspect()

# "542 -214"

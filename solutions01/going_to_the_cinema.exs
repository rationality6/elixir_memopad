defmodule Movie do
  def movie(card, ticket, perc) do
    system_a = system_a_stream(ticket)
    system_b = system_b_stream(card, ticket, perc)

    Stream.zip(system_a, system_b)
    |> Enum.find_index(fn {x, y} -> x > y end)
    |> Kernel.+(1)
  end

  def system_a_stream(ticket) do
    Stream.iterate(1, &(&1 + 1))
    |> Stream.map(&(&1 * ticket))
  end

  def system_b_stream(card, ticket, percent) do
    Stream.iterate(percent, &(&1 * percent))
    |> Stream.scan(&Kernel.+/2)
    |> IO.inspect
    |> Stream.map(&((&1 * ticket + card) |> Float.ceil()))
  end
end

# 15달러 티켓 5장 받기
# Movie.system_a_stream(15)
# |> Enum.take(5)
# |> IO.inspect()

Movie.system_b_stream(500, 15, 0.9)
|> Enum.take(5)
|> IO.inspect()

# 43

1..5
|> Stream.map(&(&1 * 2))
|> Enum.take(2)
|> IO.inspect()

1..3
|> Enum.map(&IO.inspect(&1))
|> Enum.map(&(&1 * 2))
|> Enum.map(&IO.inspect(&1))

stream =
  1..3
  |> Stream.map(&IO.inspect(&1))
  |> Stream.map(&(&1 * 2))
  |> Stream.map(&IO.inspect(&1))

Enum.to_list(stream)
|> IO.inspect()

str =
  Stream.iterate(1, &(&1 + 3))
  |> Enum.take(5)
  |> IO.inspect()

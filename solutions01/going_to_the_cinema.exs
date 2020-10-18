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

Movie.movie(500, 15, 0.9)
|> IO.inspect()

# 43

defmodule Movie do
  def movie(card, ticket, perc) do
    system_a = system_a_stream(ticket)
    system_b = system_b_stream(card, ticket, perc)
  end

  def system_a_stream(ticket) do
    Stream.iterate(1, &(&1 + 1))
    |> Stream.map(&(&1 * ticket))
  end

  def system_b_stream(card, ticket, percent) do
    Stream.iterate(percent, &(&1 * percent))
    |> Stream.scan(fn (a,b) -> a + b end)
    |>IO.inspect()
  end
end

Movie.system_b_stream(500, 17, 0.9)
|> IO.inspect()

1..5
|> Stream.map(&(&1 * 2))
|> Enum.take(8)
|> IO.inspect()

Stream.iterate(1, &(&1 * 2))
|> Enum.take(8)
|> IO.inspect()

1..4
|> Enum.map(&IO.inspect(&1))
|> Enum.map(&(&1 * 2))
|> IO.inspect()
|> Enum.map(&IO.inspect(&1))

stream =
  1..3
  |> Stream.map(&IO.inspect(&1))
  |> Stream.map(&(&1 * 2))
  |> Stream.map(&IO.inspect(&1))

Enum.to_list(stream)
|> IO.inspect()

Stream.iterate(1, &(&1 * 2))
|> Stream.map(&IO.inspect(&1))
|> Enum.take(5)

str =
  Stream.iterate(1, &(&1 + 3))
  |> Enum.take(5)
  |> IO.inspect()

Stream.scan(1..5, &(&1 * &2))
|> Enum.to_list()
|> IO.inspect()

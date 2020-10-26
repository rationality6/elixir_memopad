(1..10)
|> IO.inspect
|> Enum.map(fn x -> x * 2 end)
|> IO.inspect
|> Enum.sum
|> IO.inspect

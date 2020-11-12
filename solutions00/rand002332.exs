Enum.random(0..10)
|> Kernel.*(10)
|> IO.inspect()

Enum.random(0..10)
|> Kernel.*(10)
|> IO.inspect()

rem(10, 33)
|> IO.inspect()

0..6
|> Enum.chunk_every(4, 1)
|> IO.inspect()

0..6
|> Enum.chunk_every(3, 1)
|> IO.inspect()

0..8
|> Enum.chunk_every(4, 1)
|> IO.inspect()
|> Enum.reverse()
|> tl()
|> Enum.reverse()
|> IO.inspect()

min(103, 100)
|> IO.inspect()

min(103, 100)
|> IO.inspect()

case Enum.random(0..1) do
  0 -> true
  1 -> false
end
|> IO.inspect()

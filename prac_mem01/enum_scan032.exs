Enum.scan(1..7, 0, &(&1 + &2))
|> IO.inspect()

Enum.reduce(1..7, 0, &(&1 + &2))
|> IO.inspect()

Enum.scan(1..5, &(&1 + &2))
|> IO.inspect()

defmodule Foo do
  def minimum_steps02([nums, value]) do
    nums
    |> Enum.sort()
    |> Enum.scan(0, &Kernel.+/2)
    |> Enum.find_index(&(&1 >= value))
  end
end

[[8, 9, 10, 4, 2], 23]
|> Foo.minimum_steps02()
|> IO.inspect()
